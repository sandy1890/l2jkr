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
package events.CharacterBirthday;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;
import com.l2jserver.gameserver.model.quest.QuestState;
import com.l2jserver.gameserver.model.quest.State;
import com.l2jserver.gameserver.network.serverpackets.PlaySound;
import com.l2jserver.gameserver.util.Util;

/**
 * 캐릭터 생성일 생일 도우미
 * @author Gnacik. Updated to H5 by Nyaran
 */
public class CharacterBirthday extends Quest {
	
	private static final int ALEGRIA = 32600; // 알레그리아
	
	private static int SPAWNS = 0;
	
	private final static int[] GATEKEEPER =
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
		String htmltext = event;
		QuestState st = player.getQuestState(getName());
		if (event.equalsIgnoreCase("despawn_npc")) {
			npc.doDie(player);
			SPAWNS--;
			htmltext = null;
		} else if (event.equalsIgnoreCase("change")) {
			// 모자 변경
			if (st.hasQuestItems(10250)) {
				st.takeItems(10250, 1); // 탐험가 모자 - 이벤트
				st.giveItems(21594, 1); // 생일 모자
				htmltext = null;
				// Despawn npc
				npc.doDie(player);
				SPAWNS--;
			} else {
				htmltext = "32600-nohat.htm";
			}
		}
		return htmltext;
	}
	
	@Override
	public String onTalk(L2Npc npc, L2PcInstance player) {
		if (SPAWNS >= 3) {
			return "busy.htm";
		}
		QuestState st = player.getQuestState(getName());
		if (st == null) {
			st = newQuestState(player);
		}
		if (!Util.checkIfInRange(10, npc, player, true)) {
			L2Npc spawned = st.addSpawn(ALEGRIA, player.getX() + 10, player.getY() + 10, player.getZ() + 10, 0, false, 0, true);
			player.sendPacket(new PlaySound(1, "HB01", 0, 0, 0, 0, 0));
			st.setState(State.STARTED);
			st.startQuestTimer("despawn_npc", 180000, spawned);
			SPAWNS++;
		} else {
			return "tooclose.htm";
		}
		return null;
	}
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public CharacterBirthday(int questId, String name, String descr) {
		super(questId, name, descr);
		addStartNpc(ALEGRIA);
		addStartNpc(GATEKEEPER);
		addTalkId(ALEGRIA);
		addTalkId(GATEKEEPER);
	}
	
	public static void main(String[] args) {
		new CharacterBirthday(-1, CharacterBirthday.class.getSimpleName(), "events");
	}
	
}
