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
package com.l2jserver.gameserver.model.conditions;

import com.l2jserver.gameserver.model.stats.Env;

/**
 * The Class ConditionInventory.
 * @author mkizub
 */
public abstract class ConditionInventory extends Condition {
	
	protected final int _slot;
	
	/**
	 * Instantiates a new condition inventory.
	 * @param slot the slot
	 */
	public ConditionInventory(int slot) {
		_slot = slot;
	}
	
	/**
	 * Test impl.
	 * @param env the env
	 * @return true, if successful
	 * @see com.l2jserver.gameserver.model.conditions.Condition#testImpl(com.l2jserver.gameserver.model.stats.Env)
	 */
	@Override
	public abstract boolean testImpl(Env env);
	
}