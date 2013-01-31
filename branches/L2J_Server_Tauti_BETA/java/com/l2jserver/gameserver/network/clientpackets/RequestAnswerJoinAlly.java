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
package com.l2jserver.gameserver.network.clientpackets;

import com.l2jserver.gameserver.datatables.ClanTable;
import com.l2jserver.gameserver.model.L2Clan;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.network.SystemMessageId;
import com.l2jserver.gameserver.network.communityserver.CommunityServerThread;
import com.l2jserver.gameserver.network.communityserver.writepackets.WorldInfo;
import com.l2jserver.gameserver.network.serverpackets.SystemMessage;

//rocknow-God

public final class RequestAnswerJoinAlly extends L2GameClientPacket {
	private static final String _C__8D_REQUESTANSWERJOINALLY = "[C] 8D RequestAnswerJoinAlly";
	
	private int _response;
	
	@Override
	protected void readImpl() {
		_response = readD();
	}
	
	@Override
	protected void runImpl() {
		L2PcInstance activeChar = getClient().getActiveChar();
		if (activeChar == null) {
			return;
		}
		
		L2PcInstance requestor = activeChar.getRequest().getPartner();
		if (requestor == null) {
			return;
		}
		
		if (_response == 0) {
			activeChar.sendPacket(SystemMessageId.YOU_DID_NOT_RESPOND_TO_ALLY_INVITATION);
			requestor.sendPacket(SystemMessageId.NO_RESPONSE_TO_ALLY_INVITATION);
		} else {
			if (!(requestor.getRequest().getRequestPacket() instanceof RequestJoinAlly)) {
				return; // hax
			}
			
			L2Clan clan = requestor.getClan();
			// we must double check this cause of hack
			if (clan.checkAllyJoinCondition(requestor, activeChar)) {
				// TODO: Need correct message id
				// rocknow-God-Start
				// requestor.sendPacket(SystemMessageId.YOU_HAVE_SUCCEEDED_INVITING_FRIEND);
				L2Clan targetClan = activeChar.getClan();
				SystemMessage sm = SystemMessage.getSystemMessage(SystemMessageId.S1_CLAN_ALREADY_MEMBER_OF_S2_ALLIANCE);
				sm.addString(targetClan.getName());
				sm.addString(clan.getAllyName());
				requestor.sendPacket(sm);
				sm = null;
				// rocknow-God-End
				activeChar.sendPacket(SystemMessageId.YOU_ACCEPTED_ALLIANCE);
				
				activeChar.getClan().setAllyId(clan.getAllyId());
				activeChar.getClan().setAllyName(clan.getAllyName());
				activeChar.getClan().setAllyPenaltyExpiryTime(0, 0);
				activeChar.getClan().changeAllyCrest(clan.getAllyCrestId(), true);
				activeChar.getClan().updateClanInDB();
				for (L2Clan c : ClanTable.getInstance().getClanAllies(clan.getAllyId())) {
					if (c.getAllyId() == clan.getAllyId()) {
						// notify CB server about the change
						CommunityServerThread.getInstance().sendPacket(new WorldInfo(null, c, WorldInfo.TYPE_UPDATE_CLAN_DATA));
					}
				}
			}
		}
		
		activeChar.getRequest().onRequestResponse();
	}
	
	@Override
	public String getType() {
		return _C__8D_REQUESTANSWERJOINALLY;
	}
}
