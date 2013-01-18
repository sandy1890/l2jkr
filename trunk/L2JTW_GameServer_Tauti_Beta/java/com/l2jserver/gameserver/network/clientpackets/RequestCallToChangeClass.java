package com.l2jserver.gameserver.network.clientpackets;

import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;

public class RequestCallToChangeClass extends L2GameClientPacket
{
	private static final String _C__D0_A4_REQUESTCALLTOCHANGECLASS = "[C] D0:A4 RequestCallToChangeClass";
	
	@SuppressWarnings("unused")
	private String _msg;
	
	@Override
	protected void readImpl()
	{
		_msg = readS();
	}
	
	@Override
	protected void runImpl()
	{
		@SuppressWarnings("unused")
		L2PcInstance activeChar = getClient().getActiveChar();
		//
	}
	
	@Override
	public String getType()
	{
		return _C__D0_A4_REQUESTCALLTOCHANGECLASS;
	}
}
