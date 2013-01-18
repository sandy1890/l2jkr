package com.l2jserver.gameserver.network.serverpackets;

/**
 * Created by IntelliJ IDEA.
 * User: Keiichi
 * Date: 05.06.2011
 * Time: 20:23:39
 * To change this template use File | Settings | File Templates.
 */
public class AttackinCoolTime extends L2GameServerPacket
{
	private static final String _S__03_ATTACKINCOOLTIME = "[S] 03 AttackinCoolTime";
	
	@Override
	protected final void writeImpl()
	{
	}
	
	@Override
	public String getType()
	{
		return _S__03_ATTACKINCOOLTIME;
	}
}
