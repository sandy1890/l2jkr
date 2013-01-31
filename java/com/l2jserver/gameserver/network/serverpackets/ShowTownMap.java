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
 * sample format d
 * @version $Revision: 1.1.2.1.2.3 $ $Date: 2005/03/27 15:29:39 $
 */
public class ShowTownMap extends L2GameServerPacket {
	private static final String _S__DE_ShowTownMap = "[S] ea ShowTownMap";
	private final String _texture;
	private final int _x;
	private final int _y;
	
	/**
	 * @param texture
	 * @param x
	 * @param y
	 */
	public ShowTownMap(String texture, int x, int y) {
		_texture = texture;
		_x = x;
		_y = y;
	}
	
	@Override
	protected final void writeImpl() {
		writeC(0xea);
		writeS(_texture);
		writeD(_x);
		writeD(_y);
	}
	
	@Override
	public String getType() {
		return _S__DE_ShowTownMap;
	}
}
