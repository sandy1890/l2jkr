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

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

import org.mmocore.network.SelectorConfig;
import org.mmocore.network.SelectorThread;

import com.l2jserver.Config;
import com.l2jserver.L2DatabaseFactory;
import com.l2jserver.Server;
import com.l2jserver.loginserver.mail.MailSystem;
import com.l2jserver.loginserver.network.L2LoginClient;
import com.l2jserver.loginserver.network.L2LoginPacketHandler;
import com.l2jserver.status.Status;

/**
 * @author KenM
 */
public final class L2LoginServer {
	
	private final Logger _log = Logger.getLogger(L2LoginServer.class.getName());
	
	public static final int PROTOCOL_REV = 0x0106;
	private static L2LoginServer _instance;
	private GameServerListener _gameServerListener;
	private SelectorThread<L2LoginClient> _selectorThread;
	private Status _statusServer;
	private Thread _restartLoginServer;
	
	public static void main(String[] args) {
		_instance = new L2LoginServer();
	}
	
	/**
	 * @return
	 */
	public static L2LoginServer getInstance() {
		return _instance;
	}
	
	public L2LoginServer() {
		Server.serverMode = Server.MODE_LOGINSERVER;
		// Local Constants
		final String LOG_FOLDER = "log"; // Name of folder for log file
		final String LOG_NAME = "./log.cfg"; // Name of log file
		
		/*** Main ***/
		// Create log folder
		File logFolder = new File(Config.DATAPACK_ROOT, LOG_FOLDER);
		logFolder.mkdir();
		
		// Create input stream for log file -- or store file data into memory
		
		try (InputStream is = new FileInputStream(new File(LOG_NAME))) {
			LogManager.getLogManager().readConfiguration(is);
		} catch (IOException e) {
			_log.warning(getClass().getSimpleName() + ": " + e.getMessage());
		}
		
		// Load Config
		Config.load();
		
		// Prepare Database
		try {
			L2DatabaseFactory.getInstance();
		} catch (SQLException e) {
			_log.log(Level.SEVERE, "치명적인: 데이터베이스를 초기화 하지 못했습니다. 이유: " + e.getMessage(), e);
			System.exit(1);
		}
		
		try {
			LoginController.load();
		} catch (GeneralSecurityException e) {
			_log.log(Level.SEVERE, "치명적인: 로그인 제어 초기화 하지 못했습니다. 이유: " + e.getMessage(), e);
			System.exit(1);
		}
		
		GameServerTable.getInstance();
		
		loadBanFile();
		
		if (Config.EMAIL_SYS_ENABLED) {
			MailSystem.getInstance();
		}
		
		InetAddress bindAddress = null;
		if (!Config.LOGIN_BIND_ADDRESS.equals("*")) {
			try {
				bindAddress = InetAddress.getByName(Config.LOGIN_BIND_ADDRESS);
			} catch (UnknownHostException e) {
				_log.log(Level.WARNING, "경고: 로그인 서버 바인드 주소는 사용 가능한 모든 IP를 사용하여 유효하지 않습니다. 이유: " + e.getMessage(), e);
			}
		}
		
		final SelectorConfig sc = new SelectorConfig();
		sc.MAX_READ_PER_PASS = Config.MMO_MAX_READ_PER_PASS;
		sc.MAX_SEND_PER_PASS = Config.MMO_MAX_SEND_PER_PASS;
		sc.SLEEP_TIME = Config.MMO_SELECTOR_SLEEP_TIME;
		sc.HELPER_BUFFER_COUNT = Config.MMO_HELPER_BUFFER_COUNT;
		
		final L2LoginPacketHandler lph = new L2LoginPacketHandler();
		final SelectorHelper sh = new SelectorHelper();
		try {
			_selectorThread = new SelectorThread<>(sc, sh, lph, sh, sh);
		} catch (IOException e) {
			_log.log(Level.SEVERE, "치명적인: 선택을 열지 못했습니다. 이유: " + e.getMessage(), e);
			System.exit(1);
		}
		
		try {
			_gameServerListener = new GameServerListener();
			_gameServerListener.start();
			_log.info("게임 서버 리스닝: " + Config.GAME_SERVER_LOGIN_HOST + ":" + Config.GAME_SERVER_LOGIN_PORT);
		} catch (IOException e) {
			_log.log(Level.SEVERE, "치명적인: 게임 서버 리스너 시작이 실패되었습니다. 이유: " + e.getMessage(), e);
			System.exit(1);
		}
		
		if (Config.IS_TELNET_ENABLED) {
			try {
				_statusServer = new Status(Server.serverMode);
				_statusServer.start();
			} catch (IOException e) {
				_log.log(Level.WARNING, "텔넷서버 시작이 실패되었습니다. 이유: " + e.getMessage(), e);
			}
		} else {
			_log.info("텔넷서버가 비활성화 되어있습니다.");
		}
		
		try {
			_selectorThread.openServerSocket(bindAddress, Config.PORT_LOGIN);
		} catch (IOException e) {
			_log.log(Level.SEVERE, "치명적인: 서버 소켓을 열지 못했습니다. 이유: " + e.getMessage(), e);
			System.exit(1);
		}
		_selectorThread.start();
		
		_log.info("로그인 서버 준비: " + (bindAddress == null ? "*" : bindAddress.getHostAddress()) + ":" + Config.PORT_LOGIN);
		_log.info("================================================================================");
	}
	
	/**
	 * @return
	 */
	public Status getStatusServer() {
		return _statusServer;
	}
	
	/**
	 * @return
	 */
	public GameServerListener getGameServerListener() {
		return _gameServerListener;
	}
	
	private void loadBanFile() {
		final File bannedFile = new File("./banned_ip.cfg");
		if (bannedFile.exists() && bannedFile.isFile()) {
			String line;
			String[] parts;
			try (FileInputStream fis = new FileInputStream(bannedFile);
				InputStreamReader is = new InputStreamReader(fis);
				LineNumberReader reader = new LineNumberReader(is)) {
				while ((line = reader.readLine()) != null) {
					line = line.trim();
					// check if this line isn't a comment line
					if ((line.length() > 0) && (line.charAt(0) != '#')) {
						// split comments if any
						parts = line.split("#", 2);
						
						// discard comments in the line, if any
						line = parts[0];
						
						parts = line.split(" ");
						
						String address = parts[0];
						
						long duration = 0;
						
						if (parts.length > 1) {
							try {
								duration = Long.parseLong(parts[1]);
							} catch (NumberFormatException e) {
								_log.warning("건너 뜀: 잘못된 차단 기간 (" + parts[1] + "), (" + bannedFile.getName() + "). 라인: " + reader.getLineNumber());
								continue;
							}
						}
						
						try {
							LoginController.getInstance().addBanForAddress(address, duration);
						} catch (UnknownHostException e) {
							_log.warning("건너 뜀: 잘못된 주소 (" + parts[0] + "), (" + bannedFile.getName() + "). 라인: " + reader.getLineNumber());
						}
					}
				}
			} catch (IOException e) {
				_log.log(Level.WARNING, "차단 파일 읽는 중 오류가 발생했습니다. (" + bannedFile.getName() + "). 세부: " + e.getMessage(), e);
			}
			_log.info("차단된 IP " + LoginController.getInstance().getBannedIps().size() + "개 로드되었습니다.");
		} else {
			_log.warning("차단된 IP 파일(" + bannedFile.getName() + ")을 찾을 수 없습니다, 건너 뛰었습니다.");
		}
		
		if (Config.LOGIN_SERVER_SCHEDULE_RESTART) {
			_log.info("예약 LS는 " + Config.LOGIN_SERVER_SCHEDULE_RESTART_TIME + "시간 후 다시 시작");
			_restartLoginServer = new LoginServerRestart();
			_restartLoginServer.setDaemon(true);
			_restartLoginServer.start();
		}
	}
	
	class LoginServerRestart extends Thread {
		public LoginServerRestart() {
			setName("LoginServerRestart");
		}
		
		@Override
		public void run() {
			while (!isInterrupted()) {
				try {
					Thread.sleep(Config.LOGIN_SERVER_SCHEDULE_RESTART_TIME * 60 * 60 * 1000);
				} catch (InterruptedException e) {
					return;
				}
				shutdown(true);
			}
		}
	}
	
	/**
	 * @param restart
	 */
	public void shutdown(boolean restart) {
		Runtime.getRuntime().exit(restart ? 2 : 0);
	}
	
}
