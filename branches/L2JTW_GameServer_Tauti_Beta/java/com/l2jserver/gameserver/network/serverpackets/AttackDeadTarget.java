package com.l2jserver.gameserver.network.serverpackets;

/**
 * Created by IntelliJ IDEA.
 * User: Keiichi
 * Date: 05.06.2011
 * Time: 20:25:36
 * To change this template use File | Settings | File Templates.
 */
public class AttackDeadTarget extends L2GameServerPacket
{
	private static final String _S__04_ATTACKDEATHTARGET = "[S] 04 AttackDeadTarget";
	
	@Override
	protected final void writeImpl()
	{
		//?
	}
	
	@Override
	public String getType()
	{
		return _S__04_ATTACKDEATHTARGET;
	}
}
