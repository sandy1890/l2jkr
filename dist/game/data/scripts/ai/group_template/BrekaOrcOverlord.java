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
package ai.group_template;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.network.serverpackets.NpcSay;
import com.l2jserver.util.Rnd;

/**
 * 布賴卡獸人王
 */
public class BrekaOrcOverlord extends L2AttackableAIScript {
	
	private static final int BREKA = 20270;
	
	private static boolean _FirstAttacked;
	
	public BrekaOrcOverlord(int questId, String name, String descr) {
		super(questId, name, descr);
		int[] mobs =
		{
			BREKA
		};
		registerMobs(mobs, QuestEventType.ON_ATTACK, QuestEventType.ON_KILL);
		_FirstAttacked = false;
	}
	
	@Override
	public String onAttack(L2Npc npc, L2PcInstance attacker, int damage, boolean isPet) {
		if (npc.getNpcId() == BREKA) {
			if (_FirstAttacked) {
				if (Rnd.get(100) == 50) {
					npc.broadcastPacket(new NpcSay(npc.getObjectId(), 0, npc.getNpcId(), "究極力量啊！！！！"));
				}
				if (Rnd.get(100) == 50) {
					npc.broadcastPacket(new NpcSay(npc.getObjectId(), 0, npc.getNpcId(), "現在開始才是真正的決鬥！"));
				}
				if (Rnd.get(100) == 50) {
					npc.broadcastPacket(new NpcSay(npc.getObjectId(), 0, npc.getNpcId(), "沒想到竟會對乳臭未乾的小子使用這招！"));
				}
			}
			_FirstAttacked = true;
		}
		return super.onAttack(npc, attacker, damage, isPet);
	}
	
	@Override
	public String onKill(L2Npc npc, L2PcInstance killer, boolean isPet) {
		int npcId = npc.getNpcId();
		if (npcId == BREKA) {
			_FirstAttacked = false;
		}
		return super.onKill(npc, killer, isPet);
	}
	
	public static void main(String[] args) {
		new BrekaOrcOverlord(-1, "BrekaOrcOverlord", "ai");
	}
	
}