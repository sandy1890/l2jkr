package com.l2jserver.gameserver.network.serverpackets;

public class ExReceiveOlympiad extends L2GameServerPacket
{
	private static final String _S__FE_D4_EXRECEIVEOLYMPIAD = "[S] FE:D4 ExReceiveOlympiad";
	
	@Override
	protected void writeImpl()
	{
		writeC(0xfe);
		writeH(0xd4);
	}
	
	@Override
	public String getType()
	{
		return _S__FE_D4_EXRECEIVEOLYMPIAD;
	}
}
