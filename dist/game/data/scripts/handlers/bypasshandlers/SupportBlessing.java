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
package handlers.bypasshandlers;

import com.l2jserver.gameserver.datatables.SkillTable;
import com.l2jserver.gameserver.handler.IBypassHandler;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.L2Npc;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.skills.L2Skill;
import com.l2jserver.gameserver.network.serverpackets.NpcHtmlMessage;
import com.l2jserver.gameserver.datatables.MessageTable;

public class SupportBlessing implements IBypassHandler
{
	private static final String[] COMMANDS =
	{
		"GiveBlessing"
	};
	
	@Override
	public boolean useBypass(String command, L2PcInstance activeChar, L2Character target)
	{
		if (!(target instanceof L2Npc))
		{
			return false;
		}
		
		// Blessing of protection - author kerberos_20. Used codes from Rayan - L2Emu project.
		// Prevent a cursed weapon weilder of being buffed - I think no need of that becouse karma check > 0
		// if (player.isCursedWeaponEquiped())
		// return;
		
		int player_level = activeChar.getLevel();
		// Select the player
		((L2Npc) target).setTarget(activeChar);
		// If the player is too high level, display a message and return
		if ((player_level > 39) || (activeChar.getClassId().level() >= 2))
		{
			NpcHtmlMessage msg = new NpcHtmlMessage(((L2Npc) target).getObjectId());
			msg.setHtml("<html><body>"+ MessageTable.Messages[1074].getMessage() +"<br>"+ MessageTable.Messages[1075].getMessage() +"<br1>"+ MessageTable.Messages[1076].getMessage() +"<font color=\"LEVEL\">"+ MessageTable.Messages[1077].getMessage() +"</font></body></html>");
			activeChar.sendPacket(msg);
			return true;
		}
		L2Skill skill = SkillTable.FrequentSkill.BLESSING_OF_PROTECTION.getSkill();
		((L2Npc) target).doCast(skill);
		
		return false;
	}
	
	@Override
	public String[] getBypassList()
	{
		return COMMANDS;
	}
}
