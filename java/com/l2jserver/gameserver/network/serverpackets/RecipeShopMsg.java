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
package com.l2jserver.gameserver.network.serverpackets;

import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

/**
 * This class ...
 * @version $Revision: 1.1.2.1.2.3 $ $Date: 2005/03/27 15:29:57 $
 */
public class RecipeShopMsg extends L2GameServerPacket {
	private static final String _S__DB_RecipeShopMsg = "[S] e1 RecipeShopMsg";
	private final L2PcInstance _activeChar;
	
	public RecipeShopMsg(L2PcInstance player) {
		_activeChar = player;
	}
	
	@Override
	protected final void writeImpl() {
		writeC(0xe1);
		writeD(_activeChar.getObjectId());
		writeS(_activeChar.getCreateList().getStoreName());// _activeChar.getTradeList().getSellStoreName());
	}
	
	@Override
	public String getType() {
		return _S__DB_RecipeShopMsg;
	}
}