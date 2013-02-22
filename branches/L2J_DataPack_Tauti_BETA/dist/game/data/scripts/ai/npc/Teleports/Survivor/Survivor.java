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
package ai.npc.Teleports.Survivor;

import ai.npc.AbstractNpcAI;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.QuestState;

/**
 * 글루디오 비행선 선착장 텔레포트
 * @author Plim Original python script by Kerberos
 */
public class Survivor extends AbstractNpcAI {
	
	private static final int SURVIVOR = 32632; // 그레시아 패잔병
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		QuestState st = player.getQuestState(getName());
		if (st == null) {
			st = newQuestState(player);
		}
		if (!event.isEmpty()) {
			if (player.getLevel() < 75) {
				event = "32632-3.htm";
			} else if (st.getQuestItemsCount(57) >= 150000) {
				st.takeItems(57, 150000);
				player.teleToLocation(-149406, 255247, -80);
			}
		}
		return event;
	}
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player) {
		QuestState st = player.getQuestState(getName());
		if (st == null) {
			return null;
		}
		return "32632-1.htm";
	}
	
	/**
	 * @param name
	 * @param descr
	 */
	public Survivor(String name, String descr) {
		super(name, descr);
		addStartNpc(SURVIVOR);
		addTalkId(SURVIVOR);
	}
	
	public static void main(String[] args) {
		new Survivor(Survivor.class.getSimpleName(), "ai/npc/Teleports/");
	}
	
}
