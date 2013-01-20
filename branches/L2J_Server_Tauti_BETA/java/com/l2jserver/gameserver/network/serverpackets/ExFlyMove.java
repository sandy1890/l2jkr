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
 * Created by IntelliJ IDEA. User: Keiichi Date: 27.05.2011 Time: 12:06:19 To change this template use File | Settings | File Templates.
 */
public class ExFlyMove extends L2GameServerPacket {
	private static final String _S__FE_E7_EXFLYMOVE = "[S] FE:E7 ExFlyMove";
	
	int _objId;
	int _x;
	int _y;
	int _z;
	int _na;
	int _n;
	
	public ExFlyMove(int objid, int na, int x, int y, int z, int n) {
		_objId = objid;
		_x = x;
		_y = y;
		_z = z;
		_n = n;
		_na = na;
	}
	
	@Override
	protected void writeImpl() {
		writeC(0xfe);
		writeH(0xe7);
		writeD(_objId);
		
		writeD(2);
		writeD(0);
		writeD(_na);
		
		writeD(1);
		writeD(_n);
		writeD(0);
		
		writeD(_x);
		writeD(_y);
		writeD(_z);
	}
	
	@Override
	public String getType() {
		return _S__FE_E7_EXFLYMOVE;
	}
}
