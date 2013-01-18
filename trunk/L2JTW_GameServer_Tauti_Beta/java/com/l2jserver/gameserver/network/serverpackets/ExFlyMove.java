package com.l2jserver.gameserver.network.serverpackets;


/**
 * Created by IntelliJ IDEA.
 * User: Keiichi
 * Date: 27.05.2011
 * Time: 12:06:19
 * To change this template use File | Settings | File Templates.
 */
public class ExFlyMove extends L2GameServerPacket
{
	private static final String _S__FE_E7_EXFLYMOVE = "[S] FE:E7 ExFlyMove";
	
	int _objId;
	int _x;
	int _y;
	int _z;
	int _na;
	int _n;
	
	public ExFlyMove(int objid, int na, int x, int y, int z, int n)
	{
		_objId = objid;
		_x = x;
		_y = y;
		_z = z;
		_n = n;
		_na = na;
	}
	
	@Override
	protected void writeImpl()
	{
		writeC(0xfe);
		writeH(0xe7);
		writeD(_objId);
		
		writeD(2);
		writeD(0);
		writeD(_na);
		
		writeD(1);
		writeD(_n);
		writeD(0);
		
		writeD(_x);
		writeD(_y);
		writeD(_z);
	}
	
	@Override
	public String getType()
	{
		return _S__FE_E7_EXFLYMOVE;
	}
}
