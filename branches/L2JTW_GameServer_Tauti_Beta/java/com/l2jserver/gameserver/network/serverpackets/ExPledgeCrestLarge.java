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

/**
 * Format: (ch) ddd b d: ? d: crest ID d: crest size b: raw data
 * @author -Wooden-
 */
public class ExPledgeCrestLarge extends L2GameServerPacket {
	private static final String _S__FE_28_EXPLEDGECRESTLARGE = "[S] FE:1b ExPledgeCrestLarge";
	private int _crestId;
	private byte[] _data;
	
	public ExPledgeCrestLarge(int crestId, byte[] data) {
		_crestId = crestId;
		_data = data;
	}
	
	@Override
	protected void writeImpl() {
		writeC(0xfe);
		writeH(0x1b);
		
		writeD(0x00); // ???
		writeD(_crestId);
		writeD(_data.length);
		
		writeB(_data);
		
	}
	
	@Override
	public String getType() {
		return _S__FE_28_EXPLEDGECRESTLARGE;
	}
	
}
