package com.l2jserver.gameserver.network.serverpackets;

import java.util.List;

import javolution.util.FastList;

/**
 * Created by IntelliJ IDEA.
 * User: sgteam
 * Date: 07.06.2011
 * Time: 0:26:05
 * To change this template use File | Settings | File Templates.
 */
public class ExAcquireSkillInfo extends L2GameServerPacket
{
	private static final String _S__FE_FB_EXACQUIRESKILLINFO = "[S] FE:FB ExAcquireSkillInfo";
	
	private List<Req> _reqs;
	@SuppressWarnings("unused")
	private int _id, _level, _spCost, _mode;
	
	private static class Req
	{
		public int itemId;
		public int count;
		@SuppressWarnings("unused")
		public int type;
		@SuppressWarnings("unused")
		public int unk;
		
		public Req(int pType, int pItemId, int pCount, int pUnk)
		{
			itemId = pItemId;
			type = pType;
			count = pCount;
			unk = pUnk;
		}
	}
	
	public ExAcquireSkillInfo(int id, int level, int spCost, int mode)
	{
		_reqs = new FastList<Req>();
		_id = id;
		_level = level;
		_spCost = spCost;
		_mode = mode;
	}
	
	public void addRequirement(int type, int id, int count, int unk)
	{
		_reqs.add(new Req(type, id, count, unk));
	}
	
	@Override
	protected final void writeImpl()
	{
		writeC(0xfe);
		writeH(0xfb);
		//TODO: Need fix
		writeD(_id);
		writeD(_level);
		writeD(_spCost);
		writeH(_level + 1); //c4
		
		writeD(_reqs.size());
		for (Req temp : _reqs)
		{
			writeD(temp.itemId);
			writeQ(temp.count);
		}
		//TODO: structure is not completed
		writeD(0);
	}
	
	/* (non-Javadoc)
	 * @see com.l2jserver.gameserver.network.serverpackets.L2GameServerPacket#getType()
	 */
	@Override
	public String getType()
	{
		return _S__FE_FB_EXACQUIRESKILLINFO;
	}
}
