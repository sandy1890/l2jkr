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

import java.util.Map;

import javolution.util.FastMap;

import com.l2jserver.gameserver.model.actor.L2Attackable;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

/**
 * Angel spawns...when one of the angels in the keys dies, the other angel will spawn.
 */
public class PolymorphingAngel extends L2AttackableAIScript {
	
	private static final Map<Integer, Integer> ANGELSPAWNS = new FastMap<>();
	static {
		ANGELSPAWNS.put(20830, 20859);
		ANGELSPAWNS.put(21067, 21068);
		ANGELSPAWNS.put(21062, 21063);
		ANGELSPAWNS.put(20831, 20860);
		ANGELSPAWNS.put(21070, 21071);
	}
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public PolymorphingAngel(int questId, String name, String descr) {
		super(questId, name, descr);
		int[] temp =
		{
			20830,
			21067,
			21062,
			20831,
			21070
		};
		registerMobs(temp, QuestEventType.ON_KILL);
	}
	
	@Override
	public String onKill(L2Npc npc, L2PcInstance killer, boolean isPet) {
		int npcId = npc.getNpcId();
		if (ANGELSPAWNS.containsKey(npcId)) {
			L2Attackable newNpc = (L2Attackable) addSpawn(ANGELSPAWNS.get(npcId), npc);
			newNpc.setRunning();
		}
		return super.onKill(npc, killer, isPet);
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// now call the constructor (starts up the ai)
		new PolymorphingAngel(-1, "polymorphing_angel", "ai");
	}
	
}