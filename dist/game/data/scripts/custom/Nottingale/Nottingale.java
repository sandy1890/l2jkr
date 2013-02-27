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
package custom.Nottingale;

import quests.Q10273_GoodDayToFly.Q10273_GoodDayToFly;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.quest.QuestState;
import com.l2jserver.gameserver.network.serverpackets.RadarControl;

/**
 * @authors Kerberos (python), Nyaran (java)
 */
public class Nottingale extends Quest {
	
	private static final int NPC = 32627; // 마법사 노팅게일
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		QuestState qs = player.getQuestState(Q10273_GoodDayToFly.class.getSimpleName());
		if ((qs == null) || !qs.isCompleted()) {
			switch (event) {
				case "32627-3.htm": { // 마스터 라이더 발드스톤
					player.sendPacket(new RadarControl(1, 1, 0, 0, 0));
					player.sendPacket(new RadarControl(0, 1, -192361, 254528, 3598));
					break;
				}
				case "32627-4.htm": { // 새들의 왕 록
					player.sendPacket(new RadarControl(1, 1, 0, 0, 0));
					player.sendPacket(new RadarControl(0, 1, -174600, 219711, 4424));
					break;
				}
				case "32627-5.htm": { // 밴시 퀸 에니라
					player.sendPacket(new RadarControl(1, 1, 0, 0, 0));
					player.sendPacket(new RadarControl(0, 1, -181989, 208968, 4424));
					break;
				}
				case "32627-6.htm": { // 파멸의 사자 디우스
					player.sendPacket(new RadarControl(1, 1, 0, 0, 0));
					player.sendPacket(new RadarControl(0, 1, -252898, 235845, 5343));
					break;
				}
				case "32627-8.htm": { // 불멸의 씨앗
					player.sendPacket(new RadarControl(1, 1, 0, 0, 0));
					player.sendPacket(new RadarControl(0, 1, -212819, 209813, 4288));
					break;
				}
				case "32627-9.htm": { // 파멸의 씨앗
					player.sendPacket(new RadarControl(1, 1, 0, 0, 0));
					player.sendPacket(new RadarControl(0, 1, -246899, 251918, 4352));
					break;
				}
			}
		}
		return event;
	}
	
	@Override
	public String onFirstTalk(L2Npc npc, L2PcInstance player) {
		QuestState st = player.getQuestState(getName());
		if (st == null) {
			newQuestState(player);
		}
		player.setLastQuestNpcObject(npc.getObjectId());
		return "32627.htm";
	}
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public Nottingale(int questId, String name, String descr) {
		super(questId, name, descr);
		addStartNpc(NPC);
		addFirstTalkId(NPC);
		addTalkId(NPC);
	}
	
	public static void main(String[] args) {
		new Nottingale(-1, Nottingale.class.getSimpleName(), "custom");
	}
	
}
