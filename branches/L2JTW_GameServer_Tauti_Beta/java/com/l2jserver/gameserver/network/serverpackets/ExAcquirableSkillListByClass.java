/*
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.l2jserver.gameserver.network.serverpackets;

import java.util.List;

import com.l2jserver.gameserver.datatables.SkillTreesData;
import com.l2jserver.gameserver.model.L2SkillLearn;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.holders.ItemHolder;

/**
 * 
 * @author mrTJO
 */
public class ExAcquirableSkillListByClass extends L2GameServerPacket
{
	private static final String _S__FE_F9_EXACQUIRABLESKILLLISTBYCLASS = "[S] FE:F9 ExAcquirableSkillListByClass";
	L2PcInstance _activeChar;
	
	
	public ExAcquirableSkillListByClass(L2PcInstance activeChar)
	{
		_activeChar = activeChar;
	}
	
	@Override
	protected void writeImpl()
	{
		List<L2SkillLearn> avaibleSkills = SkillTreesData.getInstance().getAvailableSkills(_activeChar, _activeChar.getClassId(), false, false);
		
		writeC(0xFE);
		writeH(0xF9);
		writeD(avaibleSkills.size());
		for (L2SkillLearn skill : avaibleSkills)
		{
			writeD(skill.getSkillId());
			writeD(skill.getSkillLevel());
			writeD(skill.getLevelUpSp());
			writeH(0x00);
			writeD(skill.getRequiredItems().size());
			for(ItemHolder item : skill.getRequiredItems())
			{
				writeD(item.getId());
				writeQ(item.getCount());
			}
			
			writeD(0x00);
		}
	}
	
	@Override
	public String getType()
	{
		return _S__FE_F9_EXACQUIRABLESKILLLISTBYCLASS;
	}
}
