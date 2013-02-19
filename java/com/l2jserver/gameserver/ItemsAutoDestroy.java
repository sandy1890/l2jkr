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
package com.l2jserver.gameserver;

import java.util.List;
import java.util.logging.Logger;

import javolution.util.FastList;

import com.l2jserver.Config;
import com.l2jserver.gameserver.instancemanager.ItemsOnGroundManager;
import com.l2jserver.gameserver.model.L2World;
import com.l2jserver.gameserver.model.items.instance.L2ItemInstance;
import com.l2jserver.gameserver.model.items.type.L2EtcItemType;

public class ItemsAutoDestroy {
	
	private static final Logger _log = Logger.getLogger(ItemsAutoDestroy.class.getName());
	
	protected List<L2ItemInstance> _items = null;
	protected static long _sleep;
	
	protected ItemsAutoDestroy() {
		_items = new FastList<>();
		_sleep = Config.AUTODESTROY_ITEM_AFTER * 1000;
		if (_sleep == 0) {
			_sleep = 3600000;
		}
		ThreadPoolManager.getInstance().scheduleGeneralAtFixedRate(new CheckItemsForDestroy(), 5000, 5000);
	}
	
	/**
	 * @return
	 */
	public static ItemsAutoDestroy getInstance() {
		return SingletonHolder._instance;
	}
	
	/**
	 * @param item
	 */
	public synchronized void addItem(L2ItemInstance item) {
		item.setDropTime(System.currentTimeMillis());
		_items.add(item);
	}
	
	public synchronized void removeItems() {
		if (Config.DEBUG) {
			_log.info("[아이템 자동 파괴] : " + _items.size() + "개 아이템 체크.");
		}
		
		if (_items.isEmpty()) {
			return;
		}
		
		long curtime = System.currentTimeMillis();
		for (L2ItemInstance item : _items) {
			if ((item == null) || (item.getDropTime() == 0) || (item.getLocation() != L2ItemInstance.ItemLocation.VOID)) {
				_items.remove(item);
			} else {
				if (item.getItem().getAutoDestroyTime() > 0) {
					if ((curtime - item.getDropTime()) > item.getItem().getAutoDestroyTime()) {
						L2World.getInstance().removeVisibleObject(item, item.getWorldRegion());
						L2World.getInstance().removeObject(item);
						_items.remove(item);
						if (Config.SAVE_DROPPED_ITEM) {
							ItemsOnGroundManager.getInstance().removeObject(item);
						}
					}
				} else if (item.getItemType() == L2EtcItemType.HERB) {
					if ((curtime - item.getDropTime()) > Config.HERB_AUTO_DESTROY_TIME) {
						L2World.getInstance().removeVisibleObject(item, item.getWorldRegion());
						L2World.getInstance().removeObject(item);
						_items.remove(item);
						if (Config.SAVE_DROPPED_ITEM) {
							ItemsOnGroundManager.getInstance().removeObject(item);
						}
					}
				} else if ((curtime - item.getDropTime()) > _sleep) {
					L2World.getInstance().removeVisibleObject(item, item.getWorldRegion());
					L2World.getInstance().removeObject(item);
					_items.remove(item);
					if (Config.SAVE_DROPPED_ITEM) {
						ItemsOnGroundManager.getInstance().removeObject(item);
					}
				}
			}
		}
		
		if (Config.DEBUG) {
			_log.info("[아이템 자동 파괴] : " + _items.size() + "개 남아있는 아이템.");
		}
	}
	
	protected class CheckItemsForDestroy extends Thread {
		@Override
		public void run() {
			removeItems();
		}
	}
	
	private static class SingletonHolder {
		protected static final ItemsAutoDestroy _instance = new ItemsAutoDestroy();
	}
	
}
