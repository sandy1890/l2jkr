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
package ai.npc.Teleports.NoblesseTeleport;

import ai.npc.AbstractNpcAI;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.QuestState;

/**
 * 노블레스 전용 텔레포트
 * @author Plim Original python script by Ham Wong
 */
public class NoblesseTeleport extends AbstractNpcAI {
	
	private static final int[] NPCs =
	{
		30006, // 밀리아 - 말하는 섬 마을 게이트키퍼
		30059, // 트리시아 - 디온성 마을 게이트키퍼
		30080, // 크라비아 - 기란성 마을 게이트키퍼
		30134, // 텔레포트 장치 - 다크엘프 마을
		30146, // 텔레포트 장치 - 엘프 마을
		30177, // 발렌티나 - 오렌성 마을 게이트키퍼
		30233, // 에스메랄다 - 사냥꾼 마을 게이트키퍼
		30256, // 베라돈나 - 글루디오성 마을 게이트키퍼
		30320, // 리클린 - 글루딘 마을 게이트키퍼
		30540, // 텔레포트 장치 - 드워프 마을
		30576, // 텔레포트 장치 - 오크 마을
		30836, // 미네베아 - 하딘의 사숙
		30848, // 엘리자베스 - 아덴성 마을 게이트키퍼
		30878, // 안젤리나 - 기란 항구
		30899, // 플라우엔 - 하이네스 마을 게이트키퍼
		31275, // 타티아나 - 고다드성 마을 게이트키퍼
		31320, // 일리야나 - 루운성 마을 게이트키퍼
		31964, // 빌리아 - 슈트가르트성 마을 게이트키퍼
		32163, // 텔레포트 장치 - 카마엘 마을
	};
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		QuestState st = player.getQuestState(getName());
		if (st == null) {
			return null;
		}
		if (event.equalsIgnoreCase("teleportWithToken")) {
			if (st.hasQuestItems(13722)) {
				npc.showChatWindow(player, 3);
			} else {
				return "noble-nopass.htm";
			}
		}
		return null;
	}
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player) {
		QuestState st = player.getQuestState(getName());
		String htmltext = getNoQuestMsg(player);
		if (st == null) {
			return htmltext;
		}
		if (player.isNoble()) {
			htmltext = "nobleteleporter.htm";
		} else {
			htmltext = "nobleteleporter-no.htm";
		}
		return htmltext;
	}
	
	/**
	 * @param name
	 * @param descr
	 */
	public NoblesseTeleport(String name, String descr) {
		super(name, descr);
		for (int npcId : NPCs) {
			addStartNpc(npcId);
			addTalkId(npcId);
		}
	}
	
	public static void main(String[] args) {
		new NoblesseTeleport(NoblesseTeleport.class.getSimpleName(), "ai/npc/Teleports/");
	}
	
}
