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
package com.l2jserver.gameserver.handler;

import java.util.logging.Logger;

import com.l2jserver.Config;

import gnu.trove.map.hash.TIntObjectHashMap;

/**
 * This class ...
 * @version $Revision: 1.1.4.5 $ $Date: 2005/03/27 15:30:09 $
 */
public class VoicedCommandHandler {
	
	private static Logger _log = Logger.getLogger(VoicedCommandHandler.class.getName());
	
	private final TIntObjectHashMap<IVoicedCommandHandler> _datatable;
	
	public static VoicedCommandHandler getInstance() {
		return SingletonHolder._instance;
	}
	
	protected VoicedCommandHandler() {
		_datatable = new TIntObjectHashMap<>();
	}
	
	public void registerHandler(IVoicedCommandHandler handler) {
		String[] ids = handler.getVoicedCommandList();
		for (String id : ids) {
			if (Config.DEBUG) {
				_log.fine("Adding handler for command " + id);
			}
			_datatable.put(id.hashCode(), handler);
		}
	}
	
	public IVoicedCommandHandler getHandler(String voicedCommand) {
		String command = voicedCommand;
		if (voicedCommand.indexOf(" ") != -1) {
			command = voicedCommand.substring(0, voicedCommand.indexOf(" "));
		}
		if (Config.DEBUG) {
			_log.fine("getting handler for command: " + command + " -> " + (_datatable.get(command.hashCode()) != null));
		}
		return _datatable.get(command.hashCode());
	}
	
	/**
	 * @return
	 */
	public int size() {
		return _datatable.size();
	}
	
	private static class SingletonHolder {
		protected static final VoicedCommandHandler _instance = new VoicedCommandHandler();
	}
	
}