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
package teleports.ToIVortex;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.quest.QuestState;

/**
 * 오만의 탑 층간 텔레포트
 * @author Plim update to H5 by pmq
 */
public class ToIVortex extends Quest {
	
	// NPCs
	private static final int KEPLON = 30949; // 탐사원 - 케플론
	private static final int EUCLIE = 30950; // 탐사원 - 유클리
	private static final int PITHGON = 30951; // 탐사원 - 피타곤
	private static final int DIMENSION_VORTEX_1 = 30952; // 디멘션 버텍스
	private static final int DIMENSION_VORTEX_2 = 30953; // 디멘션 버텍스
	private static final int DIMENSION_VORTEX_3 = 30954; // 디멘션 버텍스
	private static final int TELEPORT_CUBIC = 29055; // 텔레포트 큐브
	
	// ITEMS
	private static final int ADENA = 57; // 아데나
	private static final int GREEN_DIMENSION_STONE = 4401; // 녹색 디멘션스톤 - 이것으로 디멘션 버텍스를 발동시키면 오만의 탑 1~3층으로 이동할 수 있다.
	private static final int BLUE_DIMENSION_STONE = 4402; // 푸른색 디멘션스톤 - 이것으로 디멘션 버텍스를 발동시키면 오만의 탑 4~6층으로 이동할 수 있다.
	private static final int RED_DIMENSION_STONE = 4403; // 붉은색 디멘션스톤 - 이것으로 디멘션 버텍스를 발동시키면 오만의 탑 7~10층으로 이동할 수 있다.
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		String htmltext = "";
		QuestState st = player.getQuestState(getName());
		
		int npcId = npc.getNpcId();
		
		if (event.equalsIgnoreCase("1")) { // 1층
			if (st.hasQuestItems(GREEN_DIMENSION_STONE)) {
				st.takeItems(GREEN_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(114356, 13423, -5096);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("2")) { // 2층
			if (st.hasQuestItems(GREEN_DIMENSION_STONE)) {
				st.takeItems(GREEN_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(114666, 13380, -3608);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("3")) { // 3층
			if (st.hasQuestItems(GREEN_DIMENSION_STONE)) {
				st.takeItems(GREEN_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(111982, 16028, -2120);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("4")) { // 4층
			if (st.hasQuestItems(BLUE_DIMENSION_STONE)) {
				st.takeItems(BLUE_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(114636, 13413, -640);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("5")) { // 5층
			if (st.hasQuestItems(BLUE_DIMENSION_STONE)) {
				st.takeItems(BLUE_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(114152, 19902, 928);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("6")) { // 6층
			if (st.hasQuestItems(BLUE_DIMENSION_STONE)) {
				st.takeItems(BLUE_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(117131, 16044, 1944);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("7")) { // 7층
			if (st.hasQuestItems(RED_DIMENSION_STONE)) {
				st.takeItems(RED_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(113026, 17687, 2952);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("8")) { // 8층
			if (st.hasQuestItems(RED_DIMENSION_STONE)) {
				st.takeItems(RED_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(115571, 13723, 3960);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("9")) { // 9층
			if (st.hasQuestItems(RED_DIMENSION_STONE)) {
				st.takeItems(RED_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(114649, 14144, 4976);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("10")) { // 10 층
			if (st.hasQuestItems(RED_DIMENSION_STONE)) {
				st.takeItems(RED_DIMENSION_STONE, 1);
				st.getPlayer().teleToLocation(118507, 16605, 5984);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = "no-stones.htm";
			}
		} else if (event.equalsIgnoreCase("GREEN")) {
			if (st.getQuestItemsCount(ADENA) >= 10000) {
				st.takeItems(ADENA, 10000);
				st.giveItems(GREEN_DIMENSION_STONE, 1);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = npcId + "no-adena.htm";
			}
		} else if (event.equalsIgnoreCase("BLUE")) {
			if (st.getQuestItemsCount(ADENA) >= 10000) {
				st.takeItems(ADENA, 10000);
				st.giveItems(BLUE_DIMENSION_STONE, 1);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = npcId + "no-adena.htm";
			}
		} else if (event.equalsIgnoreCase("RED")) {
			if (st.getQuestItemsCount(ADENA) >= 10000) {
				st.takeItems(ADENA, 10000);
				st.giveItems(RED_DIMENSION_STONE, 1);
				st.exitQuest(true);
			} else {
				st.exitQuest(true);
				htmltext = npcId + "no-adena.htm";
			}
		}
		return htmltext;
	}
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player) {
		String htmltext = "";
		QuestState st = player.getQuestState(getName());
		
		if (st == null) {
			return null;
		}
		
		// ToI Vortex exit
		if (npc.getNpcId() == TELEPORT_CUBIC) {
			int chance = getRandom(3);
			int x, y, z;
			
			switch (chance) {
				case 0:
					x = 108784 + getRandom(100);
					y = 16000 + getRandom(100);
					z = -4928;
				break;
				
				case 1:
					x = 113824 + getRandom(100);
					y = 10448 + getRandom(100);
					z = -5164;
				break;
				
				default:
					x = 115488 + getRandom(100);
					y = 22096 + getRandom(100);
					z = -5168;
				break;
			}
			
			player.teleToLocation(x, y, z);
			st.exitQuest(true);
		}
		
		return htmltext;
	}
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public ToIVortex(int questId, String name, String descr) {
		super(questId, name, descr);
		addStartNpc(KEPLON);
		addTalkId(KEPLON);
		addStartNpc(EUCLIE);
		addTalkId(EUCLIE);
		addStartNpc(PITHGON);
		addTalkId(PITHGON);
		addStartNpc(DIMENSION_VORTEX_1);
		addTalkId(DIMENSION_VORTEX_1);
		addStartNpc(DIMENSION_VORTEX_2);
		addTalkId(DIMENSION_VORTEX_2);
		addStartNpc(DIMENSION_VORTEX_3);
		addTalkId(DIMENSION_VORTEX_3);
		addStartNpc(TELEPORT_CUBIC);
		addTalkId(TELEPORT_CUBIC);
	}
	
	public static void main(String[] args) {
		new ToIVortex(-1, ToIVortex.class.getSimpleName(), "teleports");
	}
	
}
