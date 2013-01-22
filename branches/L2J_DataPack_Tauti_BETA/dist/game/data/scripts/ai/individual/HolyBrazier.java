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
package ai.individual;

//import com.l2jserver.gameserver.ai.CtrlIntention;
//import com.l2jserver.gameserver.model.actor.L2Attackable;
import java.util.logging.Logger;

import ai.group_template.L2AttackableAIScript;

import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

/**
 * HolyBrazier AI 神聖的火爐 / 聖杯守護者
 * @author Emperorc
 */
public class HolyBrazier extends L2AttackableAIScript {
	
	private static final Logger _log = Logger.getLogger(HolyBrazier.class.getName());
	
	private static final int HolyBrazier = 32027;
	private static final int GuardianOfTheGrail = 22133;
	
	private L2Npc _guard = null;
	private L2Npc _brazier = null;
	
	/**
	 * @param questId
	 * @param name
	 * @param descr
	 */
	public HolyBrazier(int questId, String name, String descr) {
		super(questId, name, descr);
		int[] mobs =
		{
			HolyBrazier,
			GuardianOfTheGrail
		};
		registerMobs(mobs);
	}
	
	/**
	 * @param npc
	 */
	private void spawnGuard(L2Npc npc) {
		_log.info("******* spawnGuard *******");
		_log.info("_guard   = " + _guard);
		_log.info("_brazier = " + _brazier);
		if ((_guard == null) && (_brazier != null)) {
			_log.info("******* addSpawn *******");
			_guard = addSpawn(GuardianOfTheGrail, _brazier.getX(), _brazier.getY(), _brazier.getZ(), 0, false, 0);
			_guard.setIsNoRndWalk(true);
		}
		System.out.println("******* return *******");
		return;
	}
	
	@Override
	public String onSpawn(L2Npc npc) {
		_log.info("******* onSpawn *******");
		_log.info("npc = " + npc.getNpcId());
		if (npc.getNpcId() == HolyBrazier) {
			_log.info("******* HolyBrazier *******");
			_brazier = npc;
			_guard = null;
			npc.setIsNoRndWalk(true);
			spawnGuard(npc);
		}
		_log.info("******* return *******");
		return super.onSpawn(npc);
	}
	
	@Override
	public String onAggroRangeEnter(L2Npc npc, L2PcInstance player, boolean isPet) {
		if ((npc.getNpcId() == GuardianOfTheGrail) && !npc.isInCombat() && (npc.getTarget() == null)) {
			npc.setIsNoRndWalk(true);
		}
		return super.onAggroRangeEnter(npc, player, isPet);
	}
	
	@Override
	public String onKill(L2Npc npc, L2PcInstance killer, boolean isPet) {
		if (npc.getNpcId() == GuardianOfTheGrail) {
			_guard = null;
			spawnGuard(npc);
		} else if (npc.getNpcId() == HolyBrazier) {
			if (_guard != null) {
				_guard.deleteMe();
				_guard = null;
				
			}
			_brazier = null;
		}
		return super.onKill(npc, killer, isPet);
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		new HolyBrazier(-1, "HolyBrazier", "ai");
	}
	
}
