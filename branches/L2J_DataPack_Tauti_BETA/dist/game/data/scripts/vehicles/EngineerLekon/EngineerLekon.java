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
package vehicles.EngineerLekon;

import com.l2jserver.gameserver.instancemanager.AirShipManager;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.quest.Quest;

public class EngineerLekon extends Quest {
	
	// NPC
	private static final int LEKON = 32557; // 엔지니어 레콘
	
	// 아이템
	private static final int LICENSE = 13559; // 비행선 소환 허가서
	private static final int STARSTONE = 13277; // 에너지 스타 스톤
	
	// 수량
	private static final int LICENSE_COST = 10;
	
	@Override
	public String onAdvEvent(String event, L2Npc npc, L2PcInstance player) {
		if ("license".equalsIgnoreCase(event)) {
			if ((player.getClan() == null) || (player.getClan().getLevel() < 5)) {
				return "32557-4.htm";
			}
			if (!player.isClanLeader()) {
				return "32557-4.htm";
			}
			if (AirShipManager.getInstance().hasAirShipLicense(player.getClanId())) {
				return "32557-3.htm";
			}
			if (player.getInventory().getItemByItemId(LICENSE) != null) {
				return "32557-3.htm";
			}
			if (!player.destroyItemByItemId("AirShipLicense", STARSTONE, LICENSE_COST, npc, false)) {
				return "32557-2.htm";
			}
			player.addItem("AirShipLicense", LICENSE, 1, npc, true);
			return null;
		}
		return event;
	}
	
	@Override
	public String onFirstTalk(L2Npc npc, L2PcInstance player) {
		if (player.getQuestState(getName()) == null) {
			newQuestState(player);
		}
		return npc.getNpcId() + ".htm";
	}
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public EngineerLekon(int questId, String name, String descr) {
		super(questId, name, descr);
		addStartNpc(LEKON);
		addFirstTalkId(LEKON);
		addTalkId(LEKON);
	}
	
	public static void main(String[] args) {
		new EngineerLekon(-1, EngineerLekon.class.getSimpleName(), "vehicles");
	}
	
}
