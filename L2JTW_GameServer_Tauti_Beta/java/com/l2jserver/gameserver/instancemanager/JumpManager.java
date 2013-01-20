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

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

import com.l2jserver.Config;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.network.serverpackets.ExFlyMove;

import gnu.trove.map.hash.TIntObjectHashMap;

/**
 * JumpManager
 * @author ALF
 */
public class JumpManager {
	
	private static final Logger _log = Logger.getLogger(JumpManager.class.getName());
	private final TIntObjectHashMap<List<JumpNode>> _routes = new TIntObjectHashMap<>();
	
	private JumpManager() {
		// l2jtw add start
		load();
		// l2jtw add end
	}
	
	public void load() {
		_log.info(getClass().getSimpleName() + ": Initializing");
		_routes.clear();
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setValidating(false);
		factory.setIgnoringComments(true);
		File file = new File(Config.DATAPACK_ROOT, "data/JumpTrack.xml");
		Document doc = null;
		
		if (file.exists()) {
			try {
				doc = factory.newDocumentBuilder().parse(file);
			} catch (Exception e) {
				_log.log(Level.WARNING, "Could not parse JumpTrack.xml file: " + e.getMessage(), e);
			}
			if (doc != null) {
				Node n = doc.getFirstChild();
				for (Node d = n.getFirstChild(); d != null; d = d.getNextSibling()) {
					if (d.getNodeName().equals("track")) {
						List<JumpNode> list = new ArrayList<>();
						int trackId = Integer.parseInt(d.getAttributes().getNamedItem("trackId").getNodeValue());
						int maxNum = Integer.parseInt(d.getAttributes().getNamedItem("maxNum").getNodeValue());
						for (Node r = d.getFirstChild(); r != null; r = r.getNextSibling()) {
							if (r.getNodeName().equals("jumpLoc")) {
								NamedNodeMap attrs = r.getAttributes();
								int id = Integer.parseInt(attrs.getNamedItem("id").getNodeValue());
								int x = Integer.parseInt(attrs.getNamedItem("x").getNodeValue());
								int y = Integer.parseInt(attrs.getNamedItem("y").getNodeValue());
								int z = Integer.parseInt(attrs.getNamedItem("z").getNodeValue());
								list.add(new JumpNode(id, maxNum, x, y, z));
							}
						}
						_routes.put(trackId, list);
					}
				}
			} else {
				_log.log(Level.WARNING, "doc null");
			}
		}
		_log.info(getClass().getSimpleName() + ": Loaded " + _routes.size() + " Jump Routes.");
	}
	
	public void StartJump(L2PcInstance player) {
		if (!player.isInsideZone(L2Character.ZONE_JUMP)) {
			return;
		}
		
		int _id = MapRegionManager.getInstance().getClosestTownId(player);
		int _tracId = 0;
		
		switch (_id) {
			case 910:
				_tracId = 1;
			break; // Talking Island Village
		}
		
		/*
		 * l2jtw start JumpNode n = getRouteForId(_tracId).get(1);
		 */
		if (_tracId == 0) {
			return;
		}
		JumpNode n = getRouteForId(_tracId).get(0);
		// l2jtw end
		player.sendPacket(new ExFlyMove(player.getObjectId(), n.getMaxNum(), n.getMoveX(), n.getMoveY(), n.getMoveZ(), n.getRouteId()));
		player.setXYZ(n.getMoveX(), n.getMoveY(), n.getMoveZ());
	}
	
	public void NextJump(L2PcInstance player, int nextId) {
		if (nextId < 0) {
			return;
		}
		int _id = MapRegionManager.getInstance().getClosestTownId(player);
		int _tracId = 0;
		switch (_id) {
			case 910:
				_tracId = 1;
			break; // Talking Island Village
		}
		// l2jtw add start
		if (nextId >= getRouteForId(_tracId).size()) {
			return;
		}
		// l2jtw end
		JumpNode n = getRouteForId(_tracId).get(nextId);
		if (n == null) {
			return;
		}
		player.sendPacket(new ExFlyMove(player.getObjectId(), n.getMaxNum(), n.getMoveX(), n.getMoveY(), n.getMoveZ(), n.getRouteId()));
		player.setXYZ(n.getMoveX(), n.getMoveY(), n.getMoveZ());
	}
	
	public List<JumpNode> getRouteForId(int id) {
		return _routes.get(id);
	}
	
	public class JumpNode {
		private final int _id;
		private final int _maxNum;
		private final int _moveX;
		private final int _moveY;
		private final int _moveZ;
		
		public JumpNode(int id, int maxNum, int moveX, int moveY, int moveZ) {
			super();
			this._id = id;
			this._maxNum = maxNum;
			this._moveX = moveX;
			this._moveY = moveY;
			this._moveZ = moveZ;
		}
		
		public int getRouteId() {
			return _id;
		}
		
		public int getMoveX() {
			return _moveX;
		}
		
		public int getMoveY() {
			return _moveY;
		}
		
		public int getMoveZ() {
			return _moveZ;
		}
		
		public int getMaxNum() {
			return _maxNum;
		}
	}
	
	public static final JumpManager getInstance() {
		return SingletonHolder._instance;
	}
	
	@SuppressWarnings("synthetic-access")
	private static class SingletonHolder {
		protected static final JumpManager _instance = new JumpManager();
	}
	
}
