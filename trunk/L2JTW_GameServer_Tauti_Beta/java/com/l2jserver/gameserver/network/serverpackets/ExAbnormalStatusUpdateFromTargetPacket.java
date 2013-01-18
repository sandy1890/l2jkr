package com.l2jserver.gameserver.network.serverpackets;

import com.l2jserver.gameserver.model.L2Object;
import com.l2jserver.gameserver.model.L2World;
import com.l2jserver.gameserver.model.actor.L2Attackable;
import com.l2jserver.gameserver.model.actor.L2Character;
import com.l2jserver.gameserver.model.effects.L2Effect;

public class ExAbnormalStatusUpdateFromTargetPacket extends L2GameServerPacket
{
	private static final String _S__E5_EXABNORMALSTATUSUPDATEFROMTARGETPACKET = "[S] E5 ExAbnormalStatusUpdateFromTargetPacket";
	
	private int _objectId;
	private L2Effect[] _effects;
	
	public ExAbnormalStatusUpdateFromTargetPacket(int ObjectId)
	{
		
		L2Character target = null;
		target = (L2Character) L2World.getInstance().findObject(ObjectId);
		_objectId = ObjectId;
		if (target != null)
		{
			_effects = target.getAllEffects();
		}
	}
	
	public ExAbnormalStatusUpdateFromTargetPacket(L2Object object)
	{
		_objectId = object.getObjectId();
		if (object instanceof L2Attackable)
		{
			_effects = ((L2Character) ((L2Attackable) object).getTarget()).getAllEffects();
		}
	}
	
	public ExAbnormalStatusUpdateFromTargetPacket(L2Character target)
	{
		_objectId = target.getObjectId();
		_effects = target.getAllEffects();
	}
	
	@Override
	protected final void writeImpl()
	{
		writeC(0xfe);
		writeH(0xe5);
		writeD(_objectId);
		if (_effects != null)
		{
			writeH(_effects.length);
			
			for (L2Effect e : _effects)
			{
				if (e != null)
				{
					writeD(e.getSkill().getId());
					writeH(e.getLevel());
					writeD(0);
					writeD(e.getAbnormalTime() - e.getTime());
					writeD(0);
				}
			}
		}
	}
	
	@Override
	public String getType()
	{
		return _S__E5_EXABNORMALSTATUSUPDATEFROMTARGETPACKET;
	}
}
