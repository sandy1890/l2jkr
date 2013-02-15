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
package com.l2jserver.gameserver.model.olympiad;

import java.util.List;

import javolution.util.FastList;

import com.l2jserver.gameserver.datatables.SpawnTable;
import com.l2jserver.gameserver.model.L2Spawn;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.network.NpcStringId;
import com.l2jserver.gameserver.network.clientpackets.Say2;
import com.l2jserver.gameserver.network.serverpackets.NpcSay;

/**
 * @author DS
 */
public final class OlympiadAnnouncer implements Runnable {
	
	private static final int OLY_MANAGER = 31688; // 올림피아드 운영자
	
	private final List<L2Spawn> _managers = new FastList<>();
	private int _currentStadium = 0;
	
	public OlympiadAnnouncer() {
		for (L2Spawn spawn : SpawnTable.getInstance().getSpawnTable()) {
			if ((spawn != null) && (spawn.getNpcid() == OLY_MANAGER)) {
				_managers.add(spawn);
			}
		}
	}
	
	@Override
	public void run() {
		OlympiadGameTask task;
		for (int i = OlympiadGameManager.getInstance().getNumberOfStadiums(); --i >= 0; _currentStadium++) {
			if (_currentStadium >= OlympiadGameManager.getInstance().getNumberOfStadiums()) {
				_currentStadium = 0;
			}
			
			task = OlympiadGameManager.getInstance().getOlympiadTask(_currentStadium);
			if ((task != null) && (task.getGame() != null) && task.needAnnounce()) {
				NpcStringId npcString;
				final String arenaId = String.valueOf(task.getGame().getStadiumId() + 1);
				switch (task.getGame().getType()) {
					case NON_CLASSED:
						npcString = NpcStringId.OLYMPIAD_CLASS_FREE_INDIVIDUAL_MATCH_IS_GOING_TO_BEGIN_IN_ARENA_S1_IN_A_MOMENT;
					break;
					case CLASSED:
						npcString = NpcStringId.OLYMPIAD_CLASS_INDIVIDUAL_MATCH_IS_GOING_TO_BEGIN_IN_ARENA_S1_IN_A_MOMENT;
					break;
					case TEAMS:
						npcString = NpcStringId.OLYMPIAD_CLASS_FREE_TEAM_MATCH_IS_GOING_TO_BEGIN_IN_ARENA_S1_IN_A_MOMENT;
					break;
					default:
						continue;
				}
				
				L2Npc manager;
				NpcSay packet;
				for (L2Spawn spawn : _managers) {
					manager = spawn.getLastSpawn();
					if (manager != null) {
						packet = new NpcSay(manager.getObjectId(), Say2.SHOUT, manager.getNpcId(), npcString);
						packet.addStringParameter(arenaId);
						manager.broadcastPacket(packet);
					}
				}
				break;
			}
		}
	}
	
}
