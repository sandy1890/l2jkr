/*
 * Copyright (C) 2004-2013 L2J DataPack
 * 
 * This file is part of L2J DataPack.
 * 
 * L2J DataPack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J DataPack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package ai.individual;

import ai.group_template.L2AttackableAIScript;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

/**
 * 孟塔那的手下
 */
public class FollowerOfMontagnar extends L2AttackableAIScript {
	
	private static final int FOFMONTAGNAR = 18569;
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public FollowerOfMontagnar(int questId, String name, String descr) {
		super(questId, name, descr);
		addAggroRangeEnterId(FOFMONTAGNAR);
	}
	
	@Override
	public String onAggroRangeEnter(L2Npc npc, L2PcInstance player, boolean isPet) {
		int npcId = npc.getNpcId();
		
		if (npcId == FOFMONTAGNAR) {
			npc.setIsInvul(true);
		}
		
		return "";
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new FollowerOfMontagnar(-1, "FollowerOfMontagnar", "ai");
	}
	
}