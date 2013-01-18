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
package com.l2jserver.gameserver.communitybbs.Manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javolution.util.FastList;

import com.l2jserver.L2DatabaseFactory;
import com.l2jserver.gameserver.communitybbs.BB.Forum;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

public class ForumsBBSManager extends BaseBBSManager
{
	private static Logger _log = Logger.getLogger(ForumsBBSManager.class.getName());
	private List<Forum> _table;
	private int _lastid = 1;
	
	/**
	 * @return
	 */
	public static ForumsBBSManager getInstance()
	{
		return SingletonHolder._instance;
	}
	
	protected ForumsBBSManager()
	{
		_table = new FastList<>();
		
		Connection con = null;
		try
		{
			con = L2DatabaseFactory.getInstance().getConnection();
			PreparedStatement statement = con.prepareStatement("SELECT forum_id FROM forums WHERE forum_type=0");
			ResultSet result = statement.executeQuery();
			while (result.next())
			{
				int forumId = result.getInt("forum_id");
				Forum f = new Forum(forumId, null);
				addForum(f);
			}
			result.close();
			statement.close();
		}
		catch (Exception e)
		{
			_log.log(Level.WARNING, "Data error on Forum (root): " + e.getMessage(), e);
		}
		finally
		{
			L2DatabaseFactory.close(con);
		}
	}
	
	public void initRoot()
	{
		for (Forum f : _table)
			f.vload();
		_log.info("Loaded " + _table.size() + " forums. Last forum id used: " + _lastid);
	}
	
	public void addForum(Forum ff)
	{
		if (ff == null)
			return;
		
		_table.add(ff);
		
		if (ff.getID() > _lastid)
		{
			_lastid = ff.getID();
		}
	}
	
	@Override
	public void parsecmd(String command, L2PcInstance activeChar)
	{
	}
	
	/**
	 * 
	 * @param Name
	 * @return
	 */
	public Forum getForumByName(String Name)
	{
		for (Forum f : _table)
		{
			if (f.getName().equals(Name))
			{
				return f;
			}
		}
		
		return null;
	}
	
	/**
	 * @param name
	 * @param parent
	 * @param type
	 * @param perm
	 * @param oid
	 * @return
	 */
	public Forum createNewForum(String name, Forum parent, int type, int perm, int oid)
	{
		Forum forum = new Forum(name, parent, type, perm, oid);
		forum.insertIntoDb();
		return forum;
	}
	
	/**
	 * @return
	 */
	public int getANewID()
	{
		return ++_lastid;
	}
	
	/**
	 * @param idf
	 * @return
	 */
	public Forum getForumByID(int idf)
	{
		for (Forum f : _table)
		{
			if (f.getID() == idf)
			{
				return f;
			}
		}
		return null;
	}
	
	@Override
	public void parsewrite(String ar1, String ar2, String ar3, String ar4, String ar5, L2PcInstance activeChar)
	{
	}
	
	private static class SingletonHolder
	{
		protected static final ForumsBBSManager _instance = new ForumsBBSManager();
	}
}