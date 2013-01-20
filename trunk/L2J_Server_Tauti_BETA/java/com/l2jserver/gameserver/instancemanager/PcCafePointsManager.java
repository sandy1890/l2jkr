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
package com.l2jserver.gameserver.instancemanager;

import com.l2jserver.Config;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.base.ClassId;
import com.l2jserver.gameserver.network.SystemMessageId;
import com.l2jserver.gameserver.network.serverpackets.ExPCCafePointInfo;
import com.l2jserver.gameserver.network.serverpackets.MagicSkillUse;
import com.l2jserver.gameserver.network.serverpackets.SystemMessage;
import com.l2jserver.util.Rnd;

public class PcCafePointsManager {
	
	private static PcCafePointsManager _instance;
	
	public static PcCafePointsManager getInstance() {
		if (_instance == null) {
			_instance = new PcCafePointsManager();
		}
		return _instance;
	}
	
	public PcCafePointsManager() {
	}
	
	public void givePcCafePoint(final L2PcInstance player, final long givedexp) {
		if (!Config.PC_BANG_ENABLED) {
			return;
		}
		
		if (player.isInsideZone(L2Character.ZONE_PEACE) || player.isInsideZone(L2Character.ZONE_PVP) || player.isInsideZone(L2Character.ZONE_SIEGE) || (player.isOnlineInt() == 0) || player.isInJail()) {
			return;
		}
		
		if (player.getPcBangPoints() >= Config.MAX_PC_BANG_POINTS) {
			final SystemMessage sm = SystemMessage.getSystemMessage(SystemMessageId.THE_MAXMIMUM_ACCUMULATION_ALLOWED_OF_PC_CAFE_POINTS_HAS_BEEN_EXCEEDED);
			player.sendPacket(sm);
			return;
		}
		int _points = (int) (givedexp * 0.0001 * Config.PC_BANG_POINT_RATE);
		if ((player.getActiveClass() == ClassId.archmage.getId()) || (player.getActiveClass() == ClassId.soultaker.getId()) || (player.getActiveClass() == ClassId.stormScreamer.getId()) || (player.getActiveClass() == ClassId.mysticMuse.getId())) {
			_points /= 2;
		}
		
		if (Config.RANDOM_PC_BANG_POINT) {
			_points = Rnd.get(_points / 2, _points);
		}
		
		boolean doublepoint = false;
		SystemMessage sm = null;
		if (_points > 0) {
			if (Config.ENABLE_DOUBLE_PC_BANG_POINTS && (Rnd.get(100) < Config.DOUBLE_PC_BANG_POINTS_CHANCE)) {
				_points *= 2;
				sm = SystemMessage.getSystemMessage(SystemMessageId.ACQUIRED_S1_PCPOINT_DOUBLE);
				player.broadcastPacket(new MagicSkillUse(player, player, 2023, 1, 100, 0));
				doublepoint = true;
			} else {
				sm = SystemMessage.getSystemMessage(SystemMessageId.ACQUIRED_S1_PCPOINT);
			}
			if ((player.getPcBangPoints() + _points) > Config.MAX_PC_BANG_POINTS) {
				_points = Config.MAX_PC_BANG_POINTS - player.getPcBangPoints();
			}
			sm.addNumber(_points);
			player.sendPacket(sm);
			player.setPcBangPoints(player.getPcBangPoints() + _points);
			player.sendPacket(new ExPCCafePointInfo(player.getPcBangPoints(), _points, true, doublepoint, 1));
		}
	}
	
}
