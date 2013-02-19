/*
 * Copyright (C) 2004-2013 L2J Server
 * 
 * This file is part of L2J Server.
 * 
 * L2J Server is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J Server is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.l2jserver.loginserver;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javolution.util.FastMap;

import com.l2jserver.Config;

/**
 * @author -Wooden-
 */
public abstract class FloodProtectedListener extends Thread {
	
	private final Logger _log = Logger.getLogger(FloodProtectedListener.class.getName());
	private final Map<String, ForeignConnection> _floodProtection = new FastMap<>();
	private final String _listenIp;
	private final int _port;
	private ServerSocket _serverSocket;
	
	/**
	 * @param listenIp
	 * @param port
	 * @throws IOException
	 */
	public FloodProtectedListener(String listenIp, int port) throws IOException {
		_port = port;
		_listenIp = listenIp;
		if (_listenIp.equals("*")) {
			_serverSocket = new ServerSocket(_port);
		} else {
			_serverSocket = new ServerSocket(_port, 50, InetAddress.getByName(_listenIp));
		}
	}
	
	@Override
	public void run() {
		Socket connection = null;
		while (true) {
			try {
				connection = _serverSocket.accept();
				if (Config.FLOOD_PROTECTION) {
					ForeignConnection fConnection = _floodProtection.get(connection.getInetAddress().getHostAddress());
					if (fConnection != null) {
						fConnection.connectionNumber += 1;
						//@formatter:off
						if (((fConnection.connectionNumber > Config.FAST_CONNECTION_LIMIT) &&
							((System.currentTimeMillis() - fConnection.lastConnection) < Config.NORMAL_CONNECTION_TIME)) ||
							((System.currentTimeMillis() - fConnection.lastConnection) < Config.FAST_CONNECTION_TIME) ||
							(fConnection.connectionNumber > Config.MAX_CONNECTION_PER_IP)) {
							//@formatter:on
							fConnection.lastConnection = System.currentTimeMillis();
							connection.close();
							fConnection.connectionNumber -= 1;
							if (!fConnection.isFlooding) {
								_log.warning(connection.getInetAddress().getHostAddress() + "에서 과도한 연결을 시도했습니다!");
							}
							fConnection.isFlooding = true;
							continue;
						}
						if (fConnection.isFlooding) { // if connection was flooding server but now passed the check
							fConnection.isFlooding = false;
							_log.info(connection.getInetAddress().getHostAddress() + " 과도한 연결에서 제외되었습니다.");
						}
						fConnection.lastConnection = System.currentTimeMillis();
					} else {
						fConnection = new ForeignConnection(System.currentTimeMillis());
						_floodProtection.put(connection.getInetAddress().getHostAddress(), fConnection);
					}
				}
				addClient(connection);
			} catch (Exception e) {
				try {
					if (connection != null) {
						connection.close();
					}
				} catch (Exception e2) {
				}
				if (isInterrupted()) {
					// shutdown?
					try {
						_serverSocket.close();
					} catch (IOException io) {
						_log.log(Level.INFO, "", io);
					}
					break;
				}
			}
		}
	}
	
	protected static class ForeignConnection {
		public int connectionNumber;
		public long lastConnection;
		public boolean isFlooding = false;
		
		/**
		 * @param time
		 */
		public ForeignConnection(long time) {
			lastConnection = time;
			connectionNumber = 1;
		}
	}
	
	public abstract void addClient(Socket s);
	
	public void removeFloodProtection(String ip) {
		if (!Config.FLOOD_PROTECTION) {
			return;
		}
		ForeignConnection fConnection = _floodProtection.get(ip);
		if (fConnection != null) {
			fConnection.connectionNumber -= 1;
			if (fConnection.connectionNumber == 0) {
				_floodProtection.remove(ip);
			}
		} else {
			_log.warning("연결 목록에 해당 게임 서버가 없습니다, 과도한 보호가 제거되었습니다:" + ip);
		}
	}
	
	public void close() {
		try {
			_serverSocket.close();
		} catch (IOException e) {
			_log.warning(getClass().getSimpleName() + ": " + e.getMessage());
		}
	}
	
}
