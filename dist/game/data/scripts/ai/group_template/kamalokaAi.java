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
import com.l2jserver.util.Rnd;

/**
 * 카마로카 보스 AI
 */
public class kamalokaAi  extends L2AttackableAIScript 
{
	private static int Chants_Spawn = 20;

	private static final Map<Integer,Integer> KAMALOKASPAWNS = new FastMap<>();
	static
	{
		KAMALOKASPAWNS.put(22452,22453);
		KAMALOKASPAWNS.put(22455,22456);
		KAMALOKASPAWNS.put(22458,22459);
		KAMALOKASPAWNS.put(22461,22462);
		KAMALOKASPAWNS.put(22464,22465);
		KAMALOKASPAWNS.put(22467,22468);
		KAMALOKASPAWNS.put(22470,22471);
		KAMALOKASPAWNS.put(22473,22474);
		KAMALOKASPAWNS.put(22476,22477);
		KAMALOKASPAWNS.put(22479,22480);
		KAMALOKASPAWNS.put(22482,22483);
	}

	public kamalokaAi(int questId, String name, String descr)
	{
		super(questId, name, descr);
		int[] temp = {22452,22455,22458,22461,22464,22467,22470,22473,22476,22479,22482};
		this.registerMobs(temp, QuestEventType.ON_KILL);
	}

	@Override
	public String onKill (L2Npc npc, L2PcInstance killer, boolean isPet)
	{
		int npcId = npc.getNpcId();

		if (KAMALOKASPAWNS.containsKey(npcId))
		{
			if (Rnd.get(100) < Chants_Spawn)
			{
				L2Attackable newNpc = null;
				if(Rnd.get(100) < 60)
				{
					newNpc = (L2Attackable) this.addSpawn(KAMALOKASPAWNS.get(npcId),npc);
					newNpc.setTitle("Doppler");
				}
				else
				{
					newNpc = (L2Attackable) this.addSpawn(((KAMALOKASPAWNS.get(npcId)) + 1),npc);
					newNpc.setTitle("Void");
				}

				newNpc.setInstanceId(npc.getInstanceId());
				newNpc.setRunning();
			}
		}
		return super.onKill(npc,killer,isPet);
	}

	public static void main(String[] args)
	{
		//Call constructor
		new kamalokaAi(-1, "kamalokaAi", "ai");
	}
}