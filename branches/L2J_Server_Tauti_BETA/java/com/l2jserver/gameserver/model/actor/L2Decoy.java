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
package com.l2jserver.gameserver.model.actor;

import java.util.Collection;

import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.actor.templates.L2CharTemplate;
import com.l2jserver.gameserver.model.actor.templates.L2NpcTemplate;
import com.l2jserver.gameserver.model.items.L2Weapon;
import com.l2jserver.gameserver.model.items.instance.L2ItemInstance;
import com.l2jserver.gameserver.network.SystemMessageId;
import com.l2jserver.gameserver.network.serverpackets.CharInfo;
import com.l2jserver.gameserver.network.serverpackets.L2GameServerPacket;
import com.l2jserver.gameserver.taskmanager.DecayTaskManager;

public abstract class L2Decoy extends L2Character {
	
	private final L2PcInstance _owner;
	
	/**
	 * @param objectId
	 * @param template
	 * @param owner
	 */
	public L2Decoy(int objectId, L2CharTemplate template, L2PcInstance owner) {
		super(objectId, template);
		setInstanceType(InstanceType.L2Decoy);
		_owner = owner;
		setXYZInvisible(owner.getX(), owner.getY(), owner.getZ());
		setIsInvul(false);
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#onSpawn()
	 */
	@Override
	public void onSpawn() {
		super.onSpawn();
		sendPacket(new CharInfo(this));
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#updateAbnormalEffect()
	 */
	@Override
	public void updateAbnormalEffect() {
		Collection<L2PcInstance> plrs = getKnownList().getKnownPlayers().values();
		
		for (L2PcInstance player : plrs) {
			if (player != null) {
				player.sendPacket(new CharInfo(this));
			}
		}
	}
	
	public void stopDecay() {
		DecayTaskManager.getInstance().cancelDecayTask(this);
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#onDecay()
	 */
	@Override
	public void onDecay() {
		deleteMe(_owner);
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.L2Object#isAutoAttackable(com.l2jserver.gameserver.model.actor.L2Character)
	 */
	@Override
	public boolean isAutoAttackable(L2Character attacker) {
		return _owner.isAutoAttackable(attacker);
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#getActiveWeaponInstance()
	 */
	@Override
	public L2ItemInstance getActiveWeaponInstance() {
		return null;
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#getActiveWeaponItem()
	 */
	@Override
	public L2Weapon getActiveWeaponItem() {
		return null;
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#getSecondaryWeaponInstance()
	 */
	@Override
	public L2ItemInstance getSecondaryWeaponInstance() {
		return null;
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#getSecondaryWeaponItem()
	 */
	@Override
	public L2Weapon getSecondaryWeaponItem() {
		return null;
	}
	
	/**
	 * @return
	 */
	public final int getNpcId() {
		return getTemplate().getNpcId();
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#getLevel()
	 */
	@Override
	public int getLevel() {
		return getTemplate().getLevel();
	}
	
	/**
	 * @param owner
	 */
	public void deleteMe(L2PcInstance owner) {
		decayMe();
		getKnownList().removeAllKnownObjects();
		owner.setDecoy(null);
	}
	
	/**
	 * @param owner
	 */
	public synchronized void unSummon(L2PcInstance owner) {
		if (isVisible() && !isDead()) {
			if (getWorldRegion() != null) {
				getWorldRegion().removeFromZones(this);
			}
			owner.setDecoy(null);
			decayMe();
			getKnownList().removeAllKnownObjects();
		}
	}
	
	/**
	 * @return
	 */
	public final L2PcInstance getOwner() {
		return _owner;
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.L2Object#getActingPlayer()
	 */
	@Override
	public L2PcInstance getActingPlayer() {
		return _owner;
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.actor.L2Character#getTemplate()
	 */
	@Override
	public L2NpcTemplate getTemplate() {
		return (L2NpcTemplate) super.getTemplate();
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.L2Object#sendInfo(com.l2jserver.gameserver.model.actor.instance.L2PcInstance)
	 */
	@Override
	public void sendInfo(L2PcInstance activeChar) {
		activeChar.sendPacket(new CharInfo(this));
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.L2Object#sendPacket(com.l2jserver.gameserver.network.serverpackets.L2GameServerPacket)
	 */
	@Override
	public void sendPacket(L2GameServerPacket mov) {
		if (getOwner() != null) {
			getOwner().sendPacket(mov);
		}
	}
	
	/*
	 * (non-Javadoc)
	 * @see com.l2jserver.gameserver.model.L2Object#sendPacket(com.l2jserver.gameserver.network.SystemMessageId)
	 */
	@Override
	public void sendPacket(SystemMessageId id) {
		if (getOwner() != null) {
			getOwner().sendPacket(id);
		}
	}
	
}
