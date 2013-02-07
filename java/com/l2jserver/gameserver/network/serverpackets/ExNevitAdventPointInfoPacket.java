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

import com.l2jserver.gameserver.datatables.LovecTable;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

/**
 * <pre>
 * @author mochitto
 * 
 * Format: (ch)d
 * d: points - max 7200 is 100%
 * </pre>
 */
public class ExNevitAdventPointInfoPacket extends L2GameServerPacket {
	
	private static final String _S__FE_DF_EXNAVITADVENTPOINTINFOPACKET = "[S] FE:DF ExNavitAdventPointInfoPacket";
	private final int _points;
	
	//@formatter:off
	/*
	public ExNevitAdventPointInfoPacket(int points) {
		_points = points;
	}
	*/
	//@formatter:on
	
	// Add NevitAdvent by pmq Start
	public ExNevitAdventPointInfoPacket(L2PcInstance player) {
		_points = LovecTable.getInstance().getAdventPoints(player.getObjectId());
	}
	
	// Add NevitAdvent by pmq End
	
	@Override
	protected void writeImpl() {
		writeC(0xFE);
		writeH(0xE2); // Fix by rocknow
		writeD(_points); // 72 = 1%
	}
	
	@Override
	public String getType() {
		return _S__FE_DF_EXNAVITADVENTPOINTINFOPACKET;
	}
	
}
