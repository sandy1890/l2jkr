/*
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.l2jserver.gameserver.instancemanager;

import java.util.logging.Logger;

import com.l2jserver.gameserver.datatables.SkillTable;
import com.l2jserver.gameserver.model.actor.instance.L2PcInstance;
import com.l2jserver.gameserver.model.skills.L2Skill;
import com.l2jserver.gameserver.network.serverpackets.ExChangeToAwakenedClass;
import com.l2jserver.gameserver.network.serverpackets.SocialAction;

import gnu.trove.map.hash.TIntIntHashMap;

/**
 * AwakingManager
 * @author ALF
 */

public class AwakingManager {
	
	private static final Logger _log = Logger.getLogger(AwakingManager.class.getName());
	
	//@formatter:off
	// ClassId => AwakingId
	private final TIntIntHashMap _CA = new TIntIntHashMap();
	
	// l2jtw add start
	public int[] autoRemoveSkills = {2,10,13,15,21,27,33,44,46,58,61,67,69,70,72,78,82,94,97,102,103,112,122,123,129,139,141,143,196,213,222,223,227,230,231,234,254,262,279,287,288,289,291,296,299,302,312,314,315,320,322,323,324,328,329,334,335,336,338,339,340,341,342,346,348,350,353,355,356,357,361,368,405,412,416,417,419,420,421,424,428,429,430,431,435,438,439,440,445,448,450,454,456,457,458,459,460,461,462,466,467,470,471,482,483,484,485,493,494,495,499,500,502,504,505,510,513,514,515,517,519,520,527,528,531,532,533,534,535,536,537,538,579,620,621,623,624,625,626,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,776,777,778,784,786,788,790,791,792,810,818,819,820,825,826,827,828,829,830,831,832,834,836,912,913,914,915,917,918,919,920,922,923,924,929,930,931,939,945,946,947,948,949,984,985,1018,1020,1044,1049,1071,1072,1074,1078,1083,1095,1102,1108,1129,1151,1154,1170,1182,1210,1213,1223,1224,1243,1250,1256,1257,1258,1268,1279,1280,1281,1285,1286,1287,1288,1289,1300,1304,1305,1307,1328,1329,1330,1334,1340,1346,1347,1348,1350,1351,1366,1367,1380,1398,1399,1400,1405,1416,1424,1426,1429,1435,1441,1443,1444,1445,1460,1467,1468,1470,1478,1479,1480,1482,1483,1486,1487,1493,1494,1495,1496,1497,1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1509,1510,1514,1515,1516,1517,1518,1519,1520,1526,1532,1535,1536,1537,1538,1539,1540,1542,1543,1547,1551,1552,1557,1560,1598,1599,1600};
	// l2jtw add end
	//@formatter:on
	
	public static final AwakingManager getInstance() {
		return SingletonHolder._instance;
	}
	
	private AwakingManager() {
		// l2jtw add start
		load();
		// l2jtw add end
	}
	
	public void load() {
		_log.info(getClass().getSimpleName() + ": Initializing");
		_CA.clear();
		
		/***************************************************************************************************
		 * 139 H_PhoenixKnight, H_HellKnight, E_EvaTemplar, DE_ShillienTemplar 140 H_Duelist, H_Dreadnought, O_Titan, O_GrandKhauatari, D_Maestro, K_Male_Doombringer 141 H_Adventurer, E_WindRider, DE_GhostHunter, D_FortuneSeeker, 142 H_Sagittarius, E_MoonlightSentinel, DE_GhostSentinel,
		 * K_Female_Trickster 143 H_Archmage, H_Soultaker, E_MysticMuse, DE_StormScreamer, K_Male_Soulhound, K_Female_Soulhound 144 H_Hierophant, E_SwordMuse, DE_SpectralDancer, O_Dominator, O_Doomcryer, K_Judicator 145 H_ArcanaLord, E_ElementalMaster, DE_SpectralMaster 146 H_Cardinal, E_EvaSaint,
		 * DE_ShillienSaint
		 ****************************************************************************************************/
		_CA.put(90, 139);
		_CA.put(91, 139);
		_CA.put(99, 139);
		_CA.put(106, 139);
		_CA.put(88, 140);
		_CA.put(89, 140);
		_CA.put(113, 140);
		_CA.put(114, 140);
		_CA.put(118, 140);
		_CA.put(131, 140);
		_CA.put(93, 141);
		_CA.put(101, 141);
		_CA.put(108, 141);
		_CA.put(117, 141);
		_CA.put(92, 142);
		_CA.put(102, 142);
		_CA.put(109, 142);
		_CA.put(134, 142);
		_CA.put(94, 143);
		_CA.put(95, 143);
		_CA.put(103, 143);
		_CA.put(110, 143);
		_CA.put(132, 143);
		_CA.put(133, 143);
		_CA.put(98, 144);
		_CA.put(100, 144);
		_CA.put(107, 144);
		_CA.put(115, 144);
		_CA.put(116, 144);
		_CA.put(136, 144);
		_CA.put(96, 145);
		_CA.put(104, 145);
		_CA.put(111, 145);
		_CA.put(97, 146);
		_CA.put(105, 146);
		_CA.put(112, 146);
		
		_log.info(getClass().getSimpleName() + ": Loaded 8 Awaking class for " + _CA.size() + " normal class.");
	}
	
	public void SetAwakingId(L2PcInstance player) {
		if (player.getLevel() < 85) {
			return;
		}
		if (player.getClassId().level() < 3) {
			return;
		}
		if (player.isAwaken()) {
			return;
		}
		int _oldId = player.getClassId().getId();
		
		player.setClassId(_CA.get(_oldId));
		
		if (player.isSubClassActive()) {
			player.getSubClasses().get(player.getClassIndex()).setClassId(player.getActiveClass());
		} else {
			player.setBaseClass(player.getActiveClass());
		}
		player.broadcastUserInfo();
		// l2jtw add start
		player.broadcastPacket(new SocialAction(player.getObjectId(), _CA.get(_oldId) - 119));
		AwakingRemoveSkills(player);
		// l2jtw add end
	}
	
	// l2jtw add start
	public void AwakingRemoveSkills(L2PcInstance player) {
		for (int i : autoRemoveSkills) {
			int level = player.getSkillLevel(i);
			if (level > 0) {
				L2Skill skill = SkillTable.getInstance().getInfo(i, level);
				_log.info(getClass().getSimpleName() + ":" + player.getName() + ":remove skill:" + skill.getName() + " " + skill.getId());
				player.removeSkill(skill);
			}
		}
		player.sendSkillList();
	}
	
	// l2jtw add end
	public void SendReqAwaking(L2PcInstance player) {
		if (player.getClassId().level() < 3) {
			return;
		}
		player.sendPacket(new ExChangeToAwakenedClass(_CA.get(player.getClassId().getId())));
	}
	
	@SuppressWarnings("synthetic-access")
	private static class SingletonHolder {
		protected static final AwakingManager _instance = new AwakingManager();
	}
	
}
