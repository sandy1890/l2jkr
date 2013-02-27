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
package quests.Q10274_CollectingInTheAir;

import quests.Q10273_GoodDayToFly.Q10273_GoodDayToFly;

import com.l2jserver.gameserver.model.L2Object;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.quest.QuestState;
import com.l2jserver.gameserver.model.quest.State;
import com.l2jserver.gameserver.model.skills.L2Skill;
import com.l2jserver.gameserver.util.Util;

/**
 * 공중 채집을 해보자 (10274).<br>
 * Original Jython script by Kerberos v1.0 on 2009/04/26
 * @author nonom
 * @author lineage2kr
 */
public class Q10274_CollectingInTheAir extends Quest {
	
	// NPCs
	private static final int LEKON = 32557; // 엔지니어 레콘
	
	// Items
	private static final int SCROLL = 13844; // 스타스톤 추출 주문서
	private static final int RED = 13858; // 조잡한 붉은 스타스톤 추출석
	private static final int BLUE = 13859; // 조잡한 푸른 스타스톤 추출석
	private static final int GREEN = 13860; // 조잡한 초록 스타스톤 추출석
	
	private static final int MOBS[] =
	{
		18684, // 붉은 스타 스톤
		18685, // 붉은 스타 스톤
		18686, // 붉은 스타 스톤
		18687, // 푸른 스타 스톤
		18688, // 푸른 스타 스톤
		18689, // 푸른 스타 스톤
		18690, // 초록 스타 스톤
		18691, // 초록 스타 스톤
		18692, // 초록 스타 스톤
	};
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player) {
		String htmltext = getNoQuestMsg(player);
		final QuestState st = player.getQuestState(getName());
		if (st == null) {
			return htmltext;
		}
		
		switch (st.getState()) {
			case State.COMPLETED:
				htmltext = "32557-0a.htm";
			break;
			case State.CREATED:
				QuestState qs = player.getQuestState(Q10273_GoodDayToFly.class.getSimpleName());
				if (qs != null) {
					htmltext = (qs.isCompleted() && (player.getLevel() >= 75)) ? "32557-01.htm" : "32557-00.htm";
				} else {
					htmltext = "32557-00.htm";
				}
			break;
			case State.STARTED:
				if ((st.getQuestItemsCount(RED) + st.getQuestItemsCount(BLUE) + st.getQuestItemsCount(GREEN)) >= 8) {
					htmltext = "32557-05.htm";
					st.giveItems(13728, 1);
					st.addExpAndSp(25160, 2525);
					st.playSound("ItemSound.quest_finish");
					st.exitQuest(false);
				} else {
					htmltext = "32557-04.htm";
				}
			break;
		}
		return htmltext;
	}
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		String htmltext = event;
		final QuestState st = player.getQuestState(getName());
		if (st == null) {
			return htmltext;
		}
		
		if (event.equalsIgnoreCase("32557-03.htm")) {
			st.set("cond", "1");
			st.giveItems(SCROLL, 8);
			st.setState(State.STARTED);
			st.playSound("ItemSound.quest_accept");
		}
		return htmltext;
	}
	
	@Override
	public String onSkillSee(L2Npc npc, L2PcInstance caster, L2Skill skill, L2Object[] targets, boolean isPet) {
		final QuestState st = caster.getQuestState(getName());
		if ((st == null) || !st.isStarted()) {
			return null;
		}
		if (Util.contains(targets, npc) && (st.getInt("cond") == 1) && (skill.getId() == 2630)) {
			st.playSound("ItemSound.quest_itemget");
			final int npcId = npc.getNpcId();
			if ((npcId >= 18684) && (npcId <= 18686)) { // 붉은 스타 스톤
				st.giveItems(RED, 1);
			} else if ((npcId >= 18687) && (npcId <= 18689)) { // 푸른 스타 스톤
				st.giveItems(BLUE, 1);
			} else if ((npcId >= 18690) && (npcId <= 18692)) { // 초록 스타 스톤
				st.giveItems(GREEN, 1);
			}
			npc.doDie(caster);
		}
		return super.onSkillSee(npc, caster, skill, targets, isPet);
	}
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public Q10274_CollectingInTheAir(int questId, String name, String descr) {
		super(questId, name, descr);
		addStartNpc(LEKON);
		addTalkId(LEKON);
		addSkillSeeId(MOBS);
		questItemIds = new int[]
		{
			SCROLL,
			RED,
			BLUE,
			GREEN
		};
	}
	
	public static void main(String[] args) {
		new Q10274_CollectingInTheAir(10274, Q10274_CollectingInTheAir.class.getSimpleName(), "공중 채집을 해보자");
	}
	
}
