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

import javolution.util.FastList;

import com.l2jserver.gameserver.model.base.CrystallizationItem;

/**
 * @author sgteam Goddess of Destruction
 */
public class ExGetCrystalizingEstimation extends L2GameServerPacket {
	private static final String _S__FE_E0_EXGETCRYSTALIZINGESTIMATION = "[S] FE:E0 ExGetCrystalizingEstimation";
	
	private final FastList<CrystallizationItem> products;
	
	public ExGetCrystalizingEstimation(FastList<CrystallizationItem> products) {
		this.products = products;
	}
	
	@Override
	protected final void writeImpl() {
		writeC(0xfe);
		writeH(0xe0);
		
		writeD(products.size());
		for (CrystallizationItem item : products) {
			writeD(item.getItemId());
			writeQ(item.getCount());
			writeF(item.getProb());
		}
		FastList.recycle(products);
	}
	
	@Override
	public String getType() {
		return _S__FE_E0_EXGETCRYSTALIZINGESTIMATION;
	}
}
