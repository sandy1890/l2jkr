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
package ai.npc.Teleports.GatekeeperSpirit;

import ai.npc.AbstractNpcAI;

import com.l2jserver.gameserver.SevenSigns;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;

public class GatekeeperSpirit extends AbstractNpcAI {
	
	private final static int EnterGk = 31111;
	private final static int ExitGk = 31112;
	private final static int Lilith = 25283;
	private final static int Anakim = 25286;
	
	/**
	 * @param name
	 * @param descr
	 */
	public GatekeeperSpirit(String name, String descr) {
		super(name, descr);
		addStartNpc(EnterGk);
		addFirstTalkId(EnterGk);
		addTalkId(EnterGk);
		addEventId(Lilith, Quest.QuestEventType.ON_KILL);
		addEventId(Anakim, Quest.QuestEventType.ON_KILL);
	}
	
	@Override
	public String onFirstTalk(L2Npc npc, L2PcInstance player) {
		String htmltext = "";
		int playerCabal = SevenSigns.getInstance().getPlayerCabal(player.getObjectId());
		int sealAvariceOwner = SevenSigns.getInstance().getSealOwner(SevenSigns.SEAL_AVARICE);
		int compWinner = SevenSigns.getInstance().getCabalHighestScore();
		if ((playerCabal == sealAvariceOwner) && (playerCabal == compWinner)) {
			switch (sealAvariceOwner) {
				case SevenSigns.CABAL_DAWN:
					htmltext = "dawn.htm";
				break;
				case SevenSigns.CABAL_DUSK:
					htmltext = "dusk.htm";
				break;
				case SevenSigns.CABAL_NULL:
					npc.showChatWindow(player);
				break;
			}
		} else {
			npc.showChatWindow(player);
		}
		return htmltext;
	}
	
	/**
	 * TODO: Should be spawned 10 seconds after boss dead
	 */
	@Override
	public String onKill(L2Npc npc, L2PcInstance killer, boolean isPet) {
		int npcId = npc.getNpcId();
		if (npcId == Lilith) {
			// exit_necropolis_boss_lilith
			addSpawn(ExitGk, 184410, -10111, -5488, 0, false, 900000);
		} else if (npcId == Anakim) {
			// exit_necropolis_boss_anakim
			addSpawn(ExitGk, 184410, -13102, -5488, 0, false, 900000);
		}
		return super.onKill(npc, killer, isPet);
	}
	
	public static void main(String[] args) {
		new GatekeeperSpirit(GatekeeperSpirit.class.getSimpleName(), "ai/npc/Teleports/");
	}
	
}
