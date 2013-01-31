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
 * This class ...
 * @version $Revision: 1.2.2.1.2.3 $ $Date: 2005/03/27 15:29:57 $
 */
public final class MagicSkillCanceld extends L2GameServerPacket {
	private static final String _S__5B_MAGICSKILLCANCELD = "[S] 49 MagicSkillCanceld";
	
	private final int _objectId;
	
	public MagicSkillCanceld(int objectId) {
		_objectId = objectId;
	}
	
	@Override
	protected final void writeImpl() {
		writeC(0x49);
		writeD(_objectId);
	}
	
	@Override
	public String getType() {
		return _S__5B_MAGICSKILLCANCELD;
	}
}
