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
package com.l2jserver.gameserver.instancemanager;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

import com.l2jserver.Config;
import com.l2jserver.gameserver.model.L2World;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.zone.L2ZoneType;
import com.l2jserver.gameserver.model.zone.type.L2JumpZone;
import com.l2jserver.gameserver.network.serverpackets.ExFlyMove;

import gnu.trove.map.hash.TIntObjectHashMap;

/**
 * JumpManager
 * @author ALF
 */

public class JumpManager
{
	private static final Logger _log = Logger.getLogger(JumpManager.class.getName());
	private final TIntObjectHashMap<Track> _tracks = new TIntObjectHashMap<>();
	private final Map<String, Integer> _zoneRoutesList = new HashMap<>();
	
	public class Track extends TIntObjectHashMap<JumpWay>
	{
	}
	
	public class JumpWay extends ArrayList<JumpNode>
	{
		
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
	}
	
	public class JumpNode
	{
		private final int _x;
		private final int _y;
		private final int _z;
		private final int _next;
		
		public JumpNode(int x, int y, int z, int next)
		{
			this._x = x;
			this._y = y;
			this._z = z;
			this._next = next;
		}
		
		public int getX()
		{
			return _x;
		}
		
		public int getY()
		{
			return _y;
		}
		
		public int getZ()
		{
			return _z;
		}
		
		public int getNext()
		{
			return _next;
		}
	}
	
	private JumpManager()
	{
		load();
	}
	
	public void load()
	{
		_log.info(getClass().getSimpleName() + ": Initializing");
		_tracks.clear();
		_zoneRoutesList.clear();
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setValidating(false);
		factory.setIgnoringComments(true);
		File file = new File(Config.DATAPACK_ROOT, "data/JumpTrack.xml");
		Document doc = null;
		
		if (file.exists())
		{
			try
			{
				doc = factory.newDocumentBuilder().parse(file);
			}
			catch (Exception e)
			{
				_log.log(Level.WARNING, "Could not parse JumpTrack.xml file: " + e.getMessage(), e);
				return;
			}
			Node root = doc.getFirstChild();
			for (Node t = root.getFirstChild(); t != null; t = t.getNextSibling())
			{
				if (t.getNodeName().equals("track"))
				{
					Track track = new Track();
					int trackId = Integer.parseInt(t.getAttributes().getNamedItem("trackId").getNodeValue());
					String zoneName = t.getAttributes().getNamedItem("zone").getNodeValue();
					for (Node w = t.getFirstChild(); w != null; w = w.getNextSibling())
					{
						if (w.getNodeName().equals("way"))
						{
							JumpWay jw = new JumpWay();
							int wayId = Integer.parseInt(w.getAttributes().getNamedItem("id").getNodeValue());
							for (Node j = w.getFirstChild(); j != null; j = j.getNextSibling())
							{
								if (j.getNodeName().equals("jumpLoc"))
								{
									NamedNodeMap attrs = j.getAttributes();
									int next = Integer.parseInt(attrs.getNamedItem("next").getNodeValue());
									int x = Integer.parseInt(attrs.getNamedItem("x").getNodeValue());
									int y = Integer.parseInt(attrs.getNamedItem("y").getNodeValue());
									int z = Integer.parseInt(attrs.getNamedItem("z").getNodeValue());
									jw.add(new JumpNode(x, y, z, next));
								}
							}
							track.put(wayId, jw);
						}
					}
					_tracks.put(trackId, track);
					_zoneRoutesList.put(zoneName, trackId);
				}
			}
		}
		_log.info(getClass().getSimpleName() + ": Loaded " + _tracks.size() + " Jump Routes.");
	}
	
	public int getTrackId(L2PcInstance player)
	{
		for (L2ZoneType zone : L2World.getInstance().getRegion(player.getX(), player.getY()).getZones())
		{
			if (zone.isCharacterInZone(player) && (zone instanceof L2JumpZone))
			{
				Integer i = _zoneRoutesList.get(zone.getName());
				return i == null ? -1 : i;
			}
		}
		return -1;
	}
	
	public JumpWay getJumpWay(int trackId, int wayId)
	{
		Track t = _tracks.get(trackId);
		if (t != null)
		{
			return t.get(wayId);
		}
		return null;
	}
	
	public void StartJump(L2PcInstance player)
	{
		if (!player.isInsideZone(L2Character.ZONE_JUMP))
		{
			return;
		}
		player.jumpTrackId = getTrackId(player);
		if (player.jumpTrackId == -1)
		{
			return;
		}
		JumpWay jw = getJumpWay(player.jumpTrackId, 0);
		if (jw == null)
		{
			return;
		}
		player.sendPacket(new ExFlyMove(player.getObjectId(), player.jumpTrackId, jw));
		JumpNode n = jw.get(0); // need fix
		player.setXYZ(n.getX(), n.getY(), n.getZ()); // need fix
	}
	
	public void NextJump(L2PcInstance player, int nextId)
	{
		if (player.jumpTrackId == -1)
		{
			return;
		}
		
		JumpWay jw = getJumpWay(player.jumpTrackId, nextId);
		if (jw == null)
		{
			return;
		}
		player.sendPacket(new ExFlyMove(player.getObjectId(), player.jumpTrackId, jw));
		JumpNode n = jw.get(0); // need fix
		player.setXYZ(n.getX(), n.getY(), n.getZ()); // need fix
	}
	
	public static final JumpManager getInstance()
	{
		return SingletonHolder._instance;
	}
	
	@SuppressWarnings("synthetic-access")
	private static class SingletonHolder
	{
		protected static final JumpManager _instance = new JumpManager();
	}
}
