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
package com.l2jserver.gameserver.datatables;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import javolution.util.FastList;

import com.l2jserver.Config;
import com.l2jserver.L2DatabaseFactory;
import com.l2jserver.gameserver.model.L2CoreMessage;

/**
 * @author ShanSoft<br>
 */
public class MessageTable {
	
	private static Logger _log = Logger.getLogger(MessageTable.class.getName());
	
	private static MessageTable _instance;
	
	public static L2CoreMessage Messages[] = new L2CoreMessage[3000];
	public static String spilter;
	public static String filler[] = new String[10];
	public static String extrafiller[] = new String[10];
	
	private FastList<L2CoreMessage> messagetable;
	
	public static String getMsg(int num) {
		return Messages[num].getMessage();
	}
	
	public static MessageTable getInstance() {
		if (_instance == null) {
			_instance = new MessageTable();
		}
		
		return _instance;
	}
	
	private MessageTable() {
		ReadMessageTable();
		// ReadMultiLanguage();
	}
	
	@SuppressWarnings("unused")
	private void ReadMultiLanguage() {
		messagetable = new FastList<L2CoreMessage>();
		
		java.sql.Connection con = null;
		int i = 0;
		try {
			con = L2DatabaseFactory.getInstance().getConnection();
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM `multi-language`");
			ResultSet rset = stmt.executeQuery();
			String language;
			String split;
			String fill;
			String extrafill;
			while (rset.next()) {
				language = rset.getString("language");
				if (language.equalsIgnoreCase(Config.LANGUAGE)) {
					split = rset.getString("spliter");
					fill = rset.getString("filler");
					extrafill = rset.getString("extrafiller");
					initializeSystem(split, fill, extrafill);
					break;
				}
			}
			rset.close();
			stmt.close();
		} catch (SQLException e) {
			_log.warning("Message Table: Error loading from database:" + e);
		} finally {
			try {
				L2DatabaseFactory.close(con);
			} catch (Exception e) {
			}
		}
	}
	
	private void ReadMessageTable() {
		messagetable = new FastList<>();
		
		java.sql.Connection con = null;
		int i = 0;
		try {
			con = L2DatabaseFactory.getInstance().getConnection();
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM `messagetable` ORDER BY `mid` DESC");
			ResultSet rset = stmt.executeQuery();
			int mid;
			String language;
			String message;
			String extra;
			while (rset.next()) {
				mid = rset.getInt("mid");
				language = rset.getString("language");
				message = rset.getString("message");
				extra = rset.getString("extraMessage");
				i++;
				messagetable.add(new L2CoreMessage(mid, language, message, extra));
			}
			
			rset.close();
			stmt.close();
		} catch (SQLException e) {
			_log.warning("Message Table: Error loading from database:" + e);
		} finally {
			try {
				_log.warning("Message Table: " + i + "개 코어 메시지가 성공적으로 로드되었습니다.");
				L2DatabaseFactory.close(con);
			} catch (Exception e) {
			}
		}
		// Initialize Multi Language System
		initializeMessage(messagetable);
	}
	
	private void initializeMessage(FastList<L2CoreMessage> msglist) {
		if (!Config.LANGUAGE.equalsIgnoreCase("en")) {
			_log.warning("Message Table: 다중 언어 시스템 언어로 초기화 - " + Config.LANGUAGE);
		}
		
		int i = 0;
		
		for (L2CoreMessage msg : msglist) {
			if (msg.getLanguage().equalsIgnoreCase(Config.LANGUAGE)) {
				i++;
				Messages[msg.getMessageId()] = msg;
			}
			/*
			 * else { i++; Messages[msg.getMessageId()] = msg; }
			 */
		}
		_log.warning("Message Table: " + i + "개 코어 메시지를 성공적으로 초기화했습니다.");
	}
	
	private void initializeSystem(String split, String fill, String extrafill) {
		int i = 0;
		String f[] = fill.split(split);
		String e[] = extrafill.split(split);
		while (i < 10) {
			// _log.warning("Filler: "+f[i]+" ExtraFiller: "+e[i]);
			filler[i] = f[i];
			extrafiller[i] = e[i];
			i++;
		}
		_log.warning("Message Table: Loading Format Sucessfully");
	}
	
	public void reloadCoreMessage() {
		// ReadMultiLanguage();
		ReadMessageTable();
	}
	
}
