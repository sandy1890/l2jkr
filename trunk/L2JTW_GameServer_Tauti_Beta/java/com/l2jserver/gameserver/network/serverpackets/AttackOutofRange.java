package com.l2jserver.gameserver.network.serverpackets;

/**
 * Created by IntelliJ IDEA.
 * User: Keiichi
 * Date: 05.06.2011
 * Time: 20:13:54
 * To change this template use File | Settings | File Templates.
 */
public class AttackOutofRange extends L2GameServerPacket
{
	private static final String _S__02_ATTACKOUTOFRANGE = "[S] 02 AttackOutofRange";
	
	@Override
	protected final void writeImpl()
	{
		// ?
	}
	
	@Override
	public String getType()
	{
		return _S__02_ATTACKOUTOFRANGE;
	}
}
