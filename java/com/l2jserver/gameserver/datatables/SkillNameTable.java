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
package com.l2jserver.gameserver.datatables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

import javolution.util.FastList;

import com.l2jserver.L2DatabaseFactory;
import com.l2jserver.gameserver.model.L2SkillLearn;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.base.ClassId;
import com.l2jserver.gameserver.model.skills.L2Skill;

/**
 * This class ...
 * @version $Revision: 1.8.2.6.2.18 $ $Date: 2005/04/06 16:13:25 $
 */
public class SkillNameTable {
	
	private static final Logger _log = Logger.getLogger(SkillNameTable.class.getName());
	private static SkillNameTable _instance;
	private final FastList<Nametable> tables = new FastList<>();
	
	protected class Nametable {
		public String name; // 스킬 이름
		public int id; // 스킬 번호
		public int level; // 스킬 레벨
	}
	
	/**
	 * @return
	 */
	public static SkillNameTable getInstance() {
		if (_instance == null) {
			_instance = new SkillNameTable();
		}
		return _instance;
	}
	
	private SkillNameTable() {
		reload();
	}
	
	private void reload() {
		Connection con = null;
		int count = 0;
		try {
			con = L2DatabaseFactory.getInstance().getConnection();
			PreparedStatement statement = con.prepareStatement("SELECT " + L2DatabaseFactory.getInstance().safetyString(new String[]
			{
				"skill_id",
				"name",
				"level"
			}) + " FROM skill");
			ResultSet skilldata = statement.executeQuery();
			Nametable data;
			while (skilldata.next()) {
				data = new Nametable();
				data.id = skilldata.getInt("skill_id");
				data.level = skilldata.getInt("level");
				data.name = skilldata.getString("name");
				if (tables == null) {
					new FastList<Nametable>();
				}
				tables.add(data);
				count++;
			}
			skilldata.close();
			statement.close();
		} catch (Exception e) {
			_log.warning("스킬 이름 테이블: 스킬 이름 데이터를 가져 오는중 오류가 발생했습니다.");
			_log.warning("" + e);
		} finally {
			L2DatabaseFactory.close(con);
		}
		
		L2Skill result = null;
		for (Nametable n : tables) {
			result = SkillTable.getInstance()._skills.get(SkillTable.getSkillHashCode(n.id, n.level));
			if (result != null) {
				SkillTable.getInstance()._skills.get(SkillTable.getSkillHashCode(n.id, n.level)).setName(n.name);
			}
		}
		_log.warning("스킬 이름 테이블: " + count + "개 이름.");
	}
	
	/**
	 * @param player
	 * @param classId
	 * @return
	 */
	public L2SkillLearn[] getAvailableSkills(L2PcInstance player, ClassId classId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}