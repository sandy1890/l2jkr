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
package com.l2jserver.gameserver.instancemanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javolution.util.FastList;

import com.l2jserver.L2DatabaseFactory;
import com.l2jserver.gameserver.model.entity.Auction;

/**
 * 경매 관리
 * @author lineage2kr
 */
public class AuctionManager {
	
	protected static final Logger _log = Logger.getLogger(AuctionManager.class.getName());
	
	private final List<Auction> _auctions;
	
	private static final String[] ITEM_INIT_DATA =
	{
		"(22, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 22, 0, '문스톤 홀', 1, 20000000, 0, 1164841200000)",
		"(23, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 23, 0, '오닉스 홀', 1, 20000000, 0, 1164841200000)",
		"(24, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 24, 0, '토파즈 홀', 1, 20000000, 0, 1164841200000)",
		"(25, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 25, 0, '루비 홀', 1, 20000000, 0, 1164841200000)",
		"(26, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 26, 0, '크리스탈 홀', 1, 20000000, 0, 1164841200000)",
		"(27, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 27, 0, '오닉스 홀', 1, 20000000, 0, 1164841200000)",
		"(28, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 28, 0, '사파이어 홀', 1, 20000000, 0, 1164841200000)",
		"(29, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 29, 0, '문스톤 홀', 1, 20000000, 0, 1164841200000)",
		"(30, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 30, 0, '에메랄드 홀', 1, 20000000, 0, 1164841200000)",
		"(31, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 31, 0, '블랙 배럭스', 1, 8000000, 0, 1164841200000)",
		"(32, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 32, 0, '레드 배럭스', 1, 8000000, 0, 1164841200000)",
		"(33, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 33, 0, '그린 배럭스', 1, 8000000, 0, 1164841200000)",
		"(36, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 36, 0, '골든 라운지', 1, 50000000, 0, 1164841200000)",
		"(37, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 37, 0, '실버 라운지', 1, 50000000, 0, 1164841200000)",
		"(38, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 38, 0, '미스릴 라운지', 1, 50000000, 0, 1164841200000)",
		"(39, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 39, 0, '실버 하우스', 1, 50000000, 0, 1164841200000)",
		"(40, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 40, 0, '골든 하우스', 1, 50000000, 0, 1164841200000)",
		"(41, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 41, 0, '브론즈 라운지', 1, 50000000, 0, 1164841200000)",
		"(42, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 42, 0, '골든 라운지', 1, 50000000, 0, 1164841200000)",
		"(43, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 43, 0, '실버 라운지', 1, 50000000, 0, 1164841200000)",
		"(44, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 44, 0, '미스릴 라운지', 1, 50000000, 0, 1164841200000)",
		"(45, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 45, 0, '브론즈 라운지', 1, 50000000, 0, 1164841200000)",
		"(46, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 46, 0, '실버 하우스', 1, 50000000, 0, 1164841200000)",
		"(47, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 47, 0, '문스톤 홀', 1, 50000000, 0, 1164841200000)",
		"(48, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 48, 0, '오닉스 홀', 1, 50000000, 0, 1164841200000)",
		"(49, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 49, 0, '에메랄드 홀', 1, 50000000, 0, 1164841200000)",
		"(50, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 50, 0, '사파이어 홀', 1, 50000000, 0, 1164841200000)",
		"(51, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 51, 0, '몬트 라운지', 1, 50000000, 0, 1164841200000)",
		"(52, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 52, 0, '슈테른 라운지', 1, 50000000, 0, 1164841200000)",
		"(53, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 53, 0, '베누스 라운지', 1, 50000000, 0, 1164841200000)",
		"(54, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 54, 0, '마르스 라운지', 1, 50000000, 0, 1164841200000)",
		"(55, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 55, 0, '아데스 라운지', 1, 50000000, 0, 1164841200000)",
		"(56, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 56, 0, '프루토 라운지', 1, 50000000, 0, 1164841200000)",
		"(57, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 57, 0, '트라반 라운지', 1, 50000000, 0, 1164841200000)",
		"(58, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 58, 0, '아이젠 홀', 1, 50000000, 0, 1164841200000)",
		"(59, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 59, 0, '베어메탈 홀', 1, 50000000, 0, 1164841200000)",
		"(60, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 60, 0, '히트메탈 홀', 1, 50000000, 0, 1164841200000)",
		"(61, 0, 'NPC', '혈맹 NPC', '혈맹 아지트', 61, 0, '티탄 홀', 1, 50000000, 0, 1164841200000)"
	};
	
	private static final int[] ItemInitDataId =
	{
		22,
		23,
		24,
		25,
		26,
		27,
		28,
		29,
		30,
		31,
		32,
		33,
		36,
		37,
		38,
		39,
		40,
		41,
		42,
		43,
		44,
		45,
		46,
		47,
		48,
		49,
		50,
		51,
		52,
		53,
		54,
		55,
		56,
		57,
		58,
		59,
		60,
		61
	};
	
	public static final AuctionManager getInstance() {
		return SingletonHolder._instance;
	}
	
	protected AuctionManager() {
		_auctions = new FastList<>();
		load();
	}
	
	public void reload() {
		_auctions.clear();
		load();
	}
	
	/**
	 * 경매 아지트 번호 로드.
	 */
	private final void load() {
		Connection con = null;
		try {
			con = L2DatabaseFactory.getInstance().getConnection();
			PreparedStatement statement = con.prepareStatement("SELECT `id` FROM `auction` ORDER BY `id`");
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				_auctions.add(new Auction(rs.getInt("id")));
			}
			rs.close();
			statement.close();
			_log.info(getAuctions().size() + "개 경매가 로드되었습니다.");
		} catch (Exception e) {
			_log.log(Level.WARNING, "예외: AuctionManager.load(): " + e.getMessage(), e);
		} finally {
			L2DatabaseFactory.close(con);
		}
	}
	
	/**
	 * @param auctionId
	 * @return
	 */
	public final Auction getAuction(int auctionId) {
		int index = getAuctionIndex(auctionId);
		if (index >= 0) {
			return getAuctions().get(index);
		}
		return null;
	}
	
	/**
	 * @param auctionId
	 * @return
	 */
	public final int getAuctionIndex(int auctionId) {
		Auction auction;
		for (int i = 0; i < getAuctions().size(); i++) {
			auction = getAuctions().get(i);
			if ((auction != null) && (auction.getId() == auctionId)) {
				return i;
			}
		}
		return -1;
	}
	
	/**
	 * @return
	 */
	public final List<Auction> getAuctions() {
		return _auctions;
	}
	
	/**
	 * 경매 초기 혈맹 NPC
	 * @param id
	 */
	public void initNPC(int id) {
		int i;
		for (i = 0; i < ItemInitDataId.length; i++) {
			if (ItemInitDataId[i] == id) {
				break;
			}
		}
		if ((i >= ItemInitDataId.length) || (ItemInitDataId[i] != id)) {
			_log.warning("아지트 경매를 찾을 수 없습니다. ID:" + id);
			return;
		}
		
		Connection con = null;
		try {
			con = L2DatabaseFactory.getInstance().getConnection();
			PreparedStatement statement = con.prepareStatement("INSERT INTO `auction` VALUES " + ITEM_INIT_DATA[i]);
			statement.execute();
			statement.close();
			_auctions.add(new Auction(id));
			_log.info("아지트 경매가 생성되었습니다. ID: " + id);
		} catch (Exception e) {
			_log.log(Level.SEVERE, "Exception: Auction.initNPC(): " + e.getMessage(), e);
		} finally {
			L2DatabaseFactory.close(con);
		}
	}
	
	private static class SingletonHolder {
		protected static final AuctionManager _instance = new AuctionManager();
	}
	
}
