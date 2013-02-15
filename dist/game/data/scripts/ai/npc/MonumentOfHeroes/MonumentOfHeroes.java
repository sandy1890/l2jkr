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
package ai.npc.MonumentOfHeroes;

import ai.npc.AbstractNpcAI;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.util.Util;

/**
 * Monument of Heroes AI.
 * @author Adry_85
 */
public class MonumentOfHeroes extends AbstractNpcAI {
	
	// NPCs
	private static final int[] MONUMENTS =
	{
		31690, // 영웅들의 기념탑
		31769, // 영웅들의 기념탑
		31770, // 영웅들의 기념탑
		31771, // 영웅들의 기념탑
		31772, // 영웅들의 기념탑
	};
	
	// 아이템
	private static final int WINGS_OF_DESTINY_CIRCLET = 6842; // 운명의 날개 서클릿
	private static final int[] WEAPONS =
	{
		6611, // 인피니티 블레이드 (검 한손)
		6612, // 인피니티 클래버 (검 양손)
		6613, // 인피니티 엑스 (둔기 한손)
		6614, // 인피니티 로드 (둔기 한손)
		6615, // 인피니티 크러셔 (둔기 양손)
		6616, // 인피니티 셉터 (둔기 양손)
		6617, // 인피니티 스팅거 (단검 한손)
		6618, // 인피니티 팽 (격투 양손)
		6619, // 인피니티 보우 (활 양손)
		6620, // 인피니티 윙 (이도류 양손)
		6621, // 인피니티 스피어 (창 양손)
		9388, // 인피니티 레이피어 (카마엘 전용 - 세검 한손)
		9389, // 인피니티 소드 (카마엘 전용 - 고대검 양손)
		9390, // 인피니티 슈터 (카마엘 전용 - 석궁 양손)
	};
	
	/**
	 * @param name
	 * @param descr
	 */
	private MonumentOfHeroes(String name, String descr) {
		super(name, descr);
		addStartNpc(MONUMENTS);
		addTalkId(MONUMENTS);
	}
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		switch (event) {
			case "HeroWeapon": {
				if (player.isHero()) {
					return hasAtLeastOneQuestItem(player, WEAPONS) ? "already_have_weapon.htm" : "weapon_list.htm";
				}
				return "no_hero_weapon.htm";
			}
			case "HeroCirclet": {
				if (player.isHero()) {
					if (!hasQuestItems(player, WINGS_OF_DESTINY_CIRCLET)) {
						giveItems(player, WINGS_OF_DESTINY_CIRCLET, 1);
					} else {
						return "already_have_circlet.htm";
					}
				} else {
					return "no_hero_circlet.htm";
				}
				break;
			}
			default: {
				int weaponId = Integer.parseInt(event);
				if (Util.contains(WEAPONS, weaponId)) {
					giveItems(player, weaponId, 1);
				}
				break;
			}
		}
		return super.onAdvEvent(event, npc, player);
	}
	
	public static void main(String[] args) {
		new MonumentOfHeroes(MonumentOfHeroes.class.getSimpleName(), "ai/npc");
	}
	
}
