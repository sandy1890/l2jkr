SET NAMES UTF8;
-- ----------------------------
-- Table structure for messagetable
-- ----------------------------
DROP TABLE IF EXISTS `messagetable`;
CREATE TABLE IF NOT EXISTS `messagetable` (
  `mid` int(3) NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT 'en',
  `message` text NOT NULL,
  `extraMessage` text NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY  (`mid`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `messagetable`;
-- ----------------------------
-- Records of messagetable
-- ----------------------------
INSERT INTO `messagetable` VALUES
(0, 'cn', '删除', '', 'Announcements.java'),
(0, 'en', 'Delete', '', 'Announcements.java'),
(0, 'ko', '삭제', '', 'Announcements.java'),
(0, 'tw', '刪除', '', 'Announcements.java'),

(1, 'cn', '', ' 使用「;」登录「塔武提」的测试服务端，已拒绝。;嗨翻天;毁灭女神', 'ProtocolVersion.java'),
(1, 'en', '', ' Wrong protocol!;;;', 'ProtocolVersion.java'),
(1, 'ko', '', ' 잘못된 프로토콜!;;;', 'ProtocolVersion.java'),
(1, 'tw', '', ' 使用「;」登入「塔武提」的測試伺服器，已拒絕。;嗨翻天;毀滅女神', 'ProtocolVersion.java'),

(2, 'cn', '', ' 使用「;更新」的游戏（协定版本:;）登录测试服务端，已;未;最新;拒绝。;允许。', 'ProtocolVersion.java'),
(2, 'en', '', ' Use ;Newer ;Older ;protocol:;;;', 'ProtocolVersion.java'),
(2, 'ko', '', ' 사용 ;높은 ;낮은 ;프로토콜:;;;', 'ProtocolVersion.java'),
(2, 'tw', '', ' 使用「;更新」的遊戲（協定版本:;）登入測試伺服器，已;未;最新;拒絕。;允許。', 'ProtocolVersion.java'),

(4, 'cn', '目前处于忙碌状态无法进行制作。', '', 'RecipeController.java'),
(4, 'en', 'You are busy creating', '', 'RecipeController.java'),
(4, 'ko', '당신은 제작중입니다', '', 'RecipeController.java'),
(4, 'tw', '目前處於忙碌狀態無法進行製作。', '', 'RecipeController.java'),

(5, 'cn', '制作物品的功能目前关闭。', '', 'RecipeController.java'),
(5, 'en', 'Item creation is currently disabled.', '', 'RecipeController.java'),
(5, 'ko', '아이템 제작이 현재 비활성화 되어있습니다.', '', 'RecipeController.java'),
(5, 'tw', '製作物品的功能目前關閉。', '', 'RecipeController.java'),

(6, 'cn', '制作取消！', '', 'RecipeController.java'),
(6, 'en', 'Manufacture aborted', '', 'RecipeController.java'),
(6, 'ko', '제작 중단', '', 'RecipeController.java'),
(6, 'tw', '製作取消！', '', 'RecipeController.java'),

(7, 'cn', '物品制作取消！', '', 'RecipeController.java'),
(7, 'en', 'Item creation aborted', '', 'RecipeController.java'),
(7, 'ko', '아이템 제작이 취소되었습니다', '', 'RecipeController.java'),
(7, 'tw', '物品製作取消！', '', 'RecipeController.java'),

(8, 'cn', '', '「;」使用「;」个「;」来制作。', 'RecipeController.java'),
(8, 'en', '', 'Manufacturer ; used ; ;', 'RecipeController.java'),
(8, 'ko', '', '제작 ; 사용 ; ;', 'RecipeController.java'),
(8, 'tw', '', '「;」使用「;」個「;」來製作。', 'RecipeController.java'),

(9, 'cn', '制作发生错误！请通知管理员。', '', 'RecipeController.java'),
(9, 'en', 'Recipe error!!!, please tell this to your GM.', '', 'RecipeController.java'),
(9, 'ko', '레시피 오류!!!, 지엠에게 제보해 주세요.', '', 'RecipeController.java'),
(9, 'tw', '製作發生錯誤！請通知管理員。', '', 'RecipeController.java'),

(13, 'cn', '黎明的君主们', '', 'SevenSigns.java'),
(13, 'en', 'Lords of Dawn', '', 'SevenSigns.java'),
(13, 'ko', '여명의 사제', '', 'SevenSigns.java'),
(13, 'tw', '黎明的君主們', '', 'SevenSigns.java'),

(14, 'cn', '黄昏的革命军', '', 'SevenSigns.java'),
(14, 'en', 'Revolutionaries of Dusk', '', 'SevenSigns.java'),
(14, 'ko', '황혼의 사제', '', 'SevenSigns.java'),
(14, 'tw', '黃昏的革命軍', '', 'SevenSigns.java'),

(15, 'cn', '无所属阵营', '', 'SevenSigns.java'),
(15, 'en', 'No Cabal', '', 'SevenSigns.java'),
(15, 'ko', 'No Cabal', '', 'SevenSigns.java'),
(15, 'tw', '無所屬陣營', '', 'SevenSigns.java'),

(16, 'cn', '', '贪欲的封印;启示的封印;战乱的封印', 'SevenSigns.java'),
(16, 'en', 'Seal of ', 'Avarice;Gnosis;Strife', 'SevenSigns.java'),
(16, 'ko', 'Seal of ', 'Avarice;Gnosis;Strife', 'SevenSigns.java'),
(16, 'tw', '', '貪慾的封印;啟示的封印;戰亂的封印', 'SevenSigns.java'),

(17, 'cn', '竞争准备中', '', 'SevenSigns.java'),
(17, 'en', 'Quest Event Initialization', '', 'SevenSigns.java'),
(17, 'ko', '퀘스트 이벤트 초기화', '', 'SevenSigns.java'),
(17, 'tw', '競爭準備中', '', 'SevenSigns.java'),

(18, 'cn', '竞争期间', '', 'SevenSigns.java'),
(18, 'en', 'Competition (Quest Event)', '', 'SevenSigns.java'),
(18, 'ko', '경쟁 기간', '', 'SevenSigns.java'),
(18, 'tw', '競爭期間', '', 'SevenSigns.java'),

(19, 'cn', '结果统计中', '', 'SevenSigns.java'),
(19, 'en', 'Quest Event Results', '', 'SevenSigns.java'),
(19, 'ko', '통계 결과', '', 'SevenSigns.java'),
(19, 'tw', '結果統計中', '', 'SevenSigns.java'),

(20, 'cn', '封印有效期间', '', 'SevenSigns.java'),
(20, 'en', 'Seal Validation', '', 'SevenSigns.java'),
(20, 'ko', '봉인 유효기간', '', 'SevenSigns.java'),
(20, 'tw', '封印有效期間', '', 'SevenSigns.java'),

(21, 'cn', '目前为封印有效期间，将强制传送至最近的村庄。', '', 'SevenSigns.java'),
(21, 'en', 'You have been teleported to the nearest town due to the beginning of the Seal Validation period.', '', 'SevenSigns.java'),
(21, 'ko', '봉인 유효기간 시작으로 가까운 마을로 이동되었습니다.', '', 'SevenSigns.java'),
(21, 'tw', '目前為封印有效期間，將強制傳送至最近的村莊。', '', 'SevenSigns.java'),

(22, 'cn', '因为没有参与任何封印，将强制传送至最近的村庄。', '', 'SevenSigns.java'),
(22, 'en', 'You have been teleported to the nearest town because you have not signed for any cabal.', '', 'SevenSigns.java'),
(22, 'ko', '세븐사인에 참여하지 않았기 때문에 가까운 마을로 이동되었습니다.', '', 'SevenSigns.java'),
(22, 'tw', '因為沒有參與任何封印，將強制傳送至最近的村莊。', '', 'SevenSigns.java'),

(25, 'cn', '未满32级', '', 'SevenSignsFestival.java'),
(25, 'en', 'Level 31 or lower', '', 'SevenSignsFestival.java'),
(25, 'ko', '레벨 31 또는 이하', '', 'SevenSignsFestival.java'),
(25, 'tw', '未滿32級', '', 'SevenSignsFestival.java'),

(26, 'cn', '未满43级', '', 'SevenSignsFestival.java'),
(26, 'en', 'Level 42 or lower', '', 'SevenSignsFestival.java'),
(26, 'ko', '레벨 42 또는 이하', '', 'SevenSignsFestival.java'),
(26, 'tw', '未滿43級', '', 'SevenSignsFestival.java'),

(27, 'cn', '未满54级', '', 'SevenSignsFestival.java'),
(27, 'en', 'Level 53 or lower', '', 'SevenSignsFestival.java'),
(27, 'ko', '레벨 53 또는 이하', '', 'SevenSignsFestival.java'),
(27, 'tw', '未滿54級', '', 'SevenSignsFestival.java'),

(28, 'cn', '未满65级', '', 'SevenSignsFestival.java'),
(28, 'en', 'Level 64 or lower', '', 'SevenSignsFestival.java'),
(28, 'ko', '레벨 64 또는 이하', '', 'SevenSignsFestival.java'),
(28, 'tw', '未滿65級', '', 'SevenSignsFestival.java'),

(29, 'cn', '无限制', '', 'SevenSignsFestival.java'),
(29, 'en', 'No Level Limit', '', 'SevenSignsFestival.java'),
(29, 'ko', '레벨 제한 없음', '', 'SevenSignsFestival.java'),
(29, 'tw', '無限制', '', 'SevenSignsFestival.java'),

(30, 'cn', '封印有效期间已结束，黑暗祭典将在下一个竞争期间重新开始。', '', 'SevenSignsFestival.java'),
(30, 'en', 'This is the Seal Validation period. Festivals will resume next week.', '', 'SevenSignsFestival.java'),
(30, 'ko', '봉인 유효기간입니다. 어둠의 제전은 다음주에 다시 시작됩니다.', '', 'SevenSignsFestival.java'),
(30, 'tw', '封印有效期間已結束，黑暗祭典將在下一個競爭期間重新開始。', '', 'SevenSignsFestival.java'),

(31, 'cn', '', '至下一个祭典的申请所剩余的时间：; 分钟。', 'SevenSignsFestival.java'),
(31, 'en', '', 'The next festival will begin in ; minute(s).', 'SevenSignsFestival.java'),
(31, 'ko', '', '어둠의 제전 남은 시간 ; 분 남았습니다.', 'SevenSignsFestival.java'),
(31, 'tw', '', '至下一個祭典的申請所剩餘的時間：; 分鐘。', 'SevenSignsFestival.java'),

(32, 'cn', '', '祭典的引导者;;分钟后开始举行黑暗的祭典。请踊跃参加。', 'SevenSignsFestival.java'),
(32, 'en', '', 'Festival Guide;The main event will start in ; minutes. Please register now.', 'SevenSignsFestival.java'),
(32, 'ko', '', 'Festival Guide;The main event will start in ; minutes. Please register now.', 'SevenSignsFestival.java'),
(32, 'tw', '', '祭典的引導者;;分鐘後開始舉行黑暗的祭典。請踴躍參加。', 'SevenSignsFestival.java'),

(33, 'cn', '', '祭典的引导者;黑暗的祭典正式开始。', 'SevenSignsFestival.java'),
(33, 'en', '', 'Festival Guide;The main event is now starting.', 'SevenSignsFestival.java'),
(33, 'ko', '', 'Festival Guide;The main event is now starting.', 'SevenSignsFestival.java'),
(33, 'tw', '', '祭典的引導者;黑暗的祭典正式開始。', 'SevenSignsFestival.java'),

(35, 'cn', '', ';分钟后黑暗的祭典将要结束。', 'SevenSignsFestival.java'),
(35, 'en', '', 'The festival will end in ; minute(s).', 'SevenSignsFestival.java'),
(35, 'ko', '', 'The festival will end in ; minute(s).', 'SevenSignsFestival.java'),
(35, 'tw', '', ';分鐘後黑暗的祭典將要結束。', 'SevenSignsFestival.java'),

(36, 'cn', '宝箱已经出来了！黑暗的祭典即将结束！', '', 'SevenSignsFestival.java'),
(36, 'en', 'The chests have spawned! Be quick, the festival will end soon.', '', 'SevenSignsFestival.java'),
(36, 'ko', 'The chests have spawned! Be quick, the festival will end soon.', '', 'SevenSignsFestival.java'),
(36, 'tw', '寶箱已經出來了！黑暗的祭典即將結束！', '', 'SevenSignsFestival.java'),

(37, 'cn', '', '祭典的巫女;祭物很充足！！我将立刻把你移到外面！', 'SevenSignsFestival.java'),
(37, 'en', '', 'Festival Witch;That will do! I\'ll move you to the outside soon.', 'SevenSignsFestival.java'),
(37, 'ko', '', 'Festival Witch;That will do! I\'ll move you to the outside soon.', 'SevenSignsFestival.java'),
(37, 'tw', '', '祭典的巫女;祭物很充足！！我將立刻把你移到外面！', 'SevenSignsFestival.java'),

(39, 'cn', '祭典的巫女', '', 'SevenSignsFestival.java'),
(39, 'en', 'Festival Witch', '', 'SevenSignsFestival.java'),
(39, 'ko', 'Festival Witch', '', 'SevenSignsFestival.java'),
(39, 'tw', '祭典的巫女', '', 'SevenSignsFestival.java'),

(40, 'cn', '黑暗的祭典已结束。队长必须在下一场开始前完成分数登记。', '', 'SevenSignsFestival.java'),
(40, 'en', 'The festival has ended. Your party leader must now register your score before the next festival takes place.', '', 'SevenSignsFestival.java'),
(40, 'ko', 'The festival has ended. Your party leader must now register your score before the next festival takes place.', '', 'SevenSignsFestival.java'),
(40, 'tw', '黑暗的祭典已結束。隊長必須在下一場開始前完成分數登記。', '', 'SevenSignsFestival.java'),

(41, 'cn', '已离开黑暗的祭典。', '', 'SevenSignsFestival.java'),
(41, 'en', 'You have been removed from the festival arena.', '', 'SevenSignsFestival.java'),
(41, 'ko', 'You have been removed from the festival arena.', '', 'SevenSignsFestival.java'),
(41, 'tw', '已離開黑暗的祭典。', '', 'SevenSignsFestival.java'),

(44, 'cn', '服务端取消「$E1」，继续正常运作！', '关闭;重新启动;放弃', 'Shutdown.java'),
(44, 'en', 'Server aborts $E1 and continues normal operation!', 'Shutdown;Restart;Abort', 'Shutdown.java'),
(44, 'ko', 'Server aborts $E1 and continues normal operation!', 'Shutdown;Restart;Abort', 'Shutdown.java'),
(44, 'tw', '伺服器取消「$E1」，繼續正常運作！', '關閉;重新啟動;放棄', 'Shutdown.java'),

(47, 'cn', '档案遗失：', '', 'HtmCache.java'),
(47, 'en', 'My Text is missing:', '', 'HtmCache.java'),
(47, 'ko', '파일이 없습니다:', '', 'HtmCache.java'),
(47, 'tw', '檔案遺失：', '', 'HtmCache.java'),

(50, 'cn', '', '功能：; 尚未实装', 'CommunityBoard.java'),
(50, 'en', '', 'the command: ; is not implemented yet', 'CommunityBoard.java'),
(50, 'ko', '', 'the command: ; is not implemented yet', 'CommunityBoard.java'),
(50, 'tw', '', '功能：; 尚未實裝', 'CommunityBoard.java'),

(53, 'cn', '首页', '', 'ClanBBSManager.java'),
(53, 'en', 'HOME', '', 'ClanBBSManager.java'),
(53, 'ko', 'HOME', '', 'ClanBBSManager.java'),
(53, 'tw', '首頁', '', 'ClanBBSManager.java'),

(54, 'cn', '血盟通知功能可以让血盟盟主通知事务，当血盟成员登陆游戏时，将会显示血盟通知。', '', 'ClanBBSManager.java'),
(54, 'en', 'The Clan Notice function allows the clan leader to send messages through a pop-up window to clan members at login.', '', 'ClanBBSManager.java'),
(54, 'ko', 'The Clan Notice function allows the clan leader to send messages through a pop-up window to clan members at login.', '', 'ClanBBSManager.java'),
(54, 'tw', '血盟通知功能可以讓血盟盟主通知事務，當血盟成員登陸遊戲時，將會顯示血盟通知。', '', 'ClanBBSManager.java'),

(55, 'cn', '', '血盟通知功能;开启;关闭', 'ClanBBSManager.java'),
(55, 'en', '', 'Clan Notice Function;on;off', 'ClanBBSManager.java'),
(55, 'ko', '', '혈맹 공지기능;on;off', 'ClanBBSManager.java'),
(55, 'tw', '', '血盟通知功能;開啟;關閉', 'ClanBBSManager.java'),

(56, 'cn', '编辑通知: ', '', 'ClanBBSManager.java'),
(56, 'en', 'Edit Notice: ', '', 'ClanBBSManager.java'),
(56, 'ko', '공지수정: ', '', 'ClanBBSManager.java'),
(56, 'tw', '編輯通知: ', '', 'ClanBBSManager.java'),

(57, 'cn', '进入我的血盟', '', 'ClanBBSManager.java'),
(57, 'en', 'GO TO MY CLAN', '', 'ClanBBSManager.java'),
(57, 'ko', '내혈맹 가기', '', 'ClanBBSManager.java'),
(57, 'tw', '進入我的血盟', '', 'ClanBBSManager.java'),

(58, 'cn', '血盟名称', '', 'ClanBBSManager.java'),
(58, 'en', 'CLAN NAME', '', 'ClanBBSManager.java'),
(58, 'ko', '혈맹이름', '', 'ClanBBSManager.java'),
(58, 'tw', '血盟名稱', '', 'ClanBBSManager.java'),

(59, 'cn', '血盟盟主', '', 'ClanBBSManager.java'),
(59, 'en', 'CLAN LEADER', '', 'ClanBBSManager.java'),
(59, 'ko', '혈맹주', '', 'ClanBBSManager.java'),
(59, 'tw', '血盟盟主', '', 'ClanBBSManager.java'),

(60, 'cn', '血盟等级', '', 'ClanBBSManager.java'),
(60, 'en', 'CLAN LEVEL', '', 'ClanBBSManager.java'),
(60, 'ko', '혈맹레벨', '', 'ClanBBSManager.java'),
(60, 'tw', '血盟等級', '', 'ClanBBSManager.java'),

(61, 'cn', '血盟成员数', '', 'ClanBBSManager.java'),
(61, 'en', 'CLAN MEMBERS', '', 'ClanBBSManager.java'),
(61, 'ko', '혈맹원수', '', 'ClanBBSManager.java'),
(61, 'tw', '血盟成員數', '', 'ClanBBSManager.java'),

(62, 'cn', '名称;管理者', '', 'ClanBBSManager.java'),
(62, 'en', 'Name;Ruler', '', 'ClanBBSManager.java'),
(62, 'ko', 'Name;Ruler', '', 'ClanBBSManager.java'),
(62, 'tw', '名稱;管理者', '', 'ClanBBSManager.java'),

(63, 'cn', '血盟公告', '', 'ClanBBSManager.java'),
(63, 'en', 'CLAN ANNOUNCEMENT', '', 'ClanBBSManager.java'),
(63, 'ko', '혈맹알림', '', 'ClanBBSManager.java'),
(63, 'tw', '血盟公告', '', 'ClanBBSManager.java'),

(64, 'cn', '血盟自由讨论区', '', 'ClanBBSManager.java'),
(64, 'en', 'CLAN BULLETIN BOARD', '', 'ClanBBSManager.java'),
(64, 'ko', 'CLAN BULLETIN BOARD', '', 'ClanBBSManager.java'),
(64, 'tw', '血盟自由討論區', '', 'ClanBBSManager.java'),

(65, 'cn', '血盟信箱', '', 'ClanBBSManager.java'),
(65, 'en', 'CLAN MAIL', '', 'ClanBBSManager.java'),
(65, 'ko', '혈맹메일', '', 'ClanBBSManager.java'),
(65, 'tw', '血盟信箱', '', 'ClanBBSManager.java'),

(66, 'cn', '血盟通知', '', 'ClanBBSManager.java'),
(66, 'en', 'CLAN NOTICE', '', 'ClanBBSManager.java'),
(66, 'ko', '혈맹공지', '', 'ClanBBSManager.java'),
(66, 'tw', '血盟通知', '', 'ClanBBSManager.java'),

(67, 'cn', '同盟', '', 'ClanBBSManager.java'),
(67, 'en', 'ALLIANCE', '', 'ClanBBSManager.java'),
(67, 'ko', 'ALLIANCE', '', 'ClanBBSManager.java'),
(67, 'tw', '同盟', '', 'ClanBBSManager.java'),

(68, 'cn', '你不是血盟的盟主，因此无法更改血盟通知。', '', 'ClanBBSManager.java'),
(68, 'en', 'You are not your clan\'s leader, and therefore cannot change the clan notice', '', 'ClanBBSManager.java'),
(68, 'ko', 'You are not your clan\'s leader, and therefore cannot change the clan notice', '', 'ClanBBSManager.java'),
(68, 'tw', '你不是血盟的盟主，因此無法更改血盟通知。', '', 'ClanBBSManager.java'),

(69, 'cn', '目前血盟通知', '', 'ClanBBSManager.java'),
(69, 'en', 'The current clan notice:', '', 'ClanBBSManager.java'),
(69, 'ko', '현재 혈맹공지:', '', 'ClanBBSManager.java'),
(69, 'tw', '目前血盟通知:', '', 'ClanBBSManager.java'),

(70, 'cn', '首页', '', 'PostBBSManager.java'),
(70, 'en', 'HOME', '', 'PostBBSManager.java'),
(70, 'ko', 'HOME', '', 'PostBBSManager.java'),
(70, 'tw', '首頁', '', 'PostBBSManager.java'),

(71, 'cn', '的备忘录', '', 'PostBBSManager.java'),
(71, 'en', ' Form', '', 'PostBBSManager.java'),
(71, 'ko', ' Form', '', 'PostBBSManager.java'),
(71, 'tw', '的備忘錄', '', 'PostBBSManager.java'),

(72, 'cn', '备忘录', '', 'PostBBSManager.java'),
(72, 'en', 'Memo Form', '', 'PostBBSManager.java'),
(72, 'ko', 'Memo Form', '', 'PostBBSManager.java'),
(72, 'tw', '備忘錄', '', 'PostBBSManager.java'),

(75, 'cn', '', '功能：; 尚未实装', 'RegionBBSManager.java'),
(75, 'en', '', 'the command: ; is not implemented yet', 'RegionBBSManager.java'),
(75, 'ko', '', 'the command: ; is not implemented yet', 'RegionBBSManager.java'),
(75, 'tw', '', '功能：; 尚未實裝', 'RegionBBSManager.java'),

(76, 'cn', 'L2JTW 社群系统', '', 'RegionBBSManager.java'),
(76, 'en', 'L2J Community Board', '', 'RegionBBSManager.java'),
(76, 'ko', '커뮤니티 게시판', '', 'RegionBBSManager.java'),
(76, 'tw', 'L2JTW 社群系統', '', 'RegionBBSManager.java'),

(77, 'cn', '男性', '', 'RegionBBSManager.java'),
(77, 'en', 'Male', '', 'RegionBBSManager.java'),
(77, 'ko', 'Male', '', 'RegionBBSManager.java'),
(77, 'tw', '男性', '', 'RegionBBSManager.java'),

(78, 'cn', '女性', '', 'RegionBBSManager.java'),
(78, 'en', 'Female', '', 'RegionBBSManager.java'),
(78, 'ko', 'Female', '', 'RegionBBSManager.java'),
(78, 'tw', '女性', '', 'RegionBBSManager.java'),

(79, 'cn', '低等', '', 'RegionBBSManager.java'),
(79, 'en', 'low', '', 'RegionBBSManager.java'),
(79, 'ko', 'low', '', 'RegionBBSManager.java'),
(79, 'tw', '低等', '', 'RegionBBSManager.java'),

(80, 'cn', '非常高等', '', 'RegionBBSManager.java'),
(80, 'en', 'very high', '', 'RegionBBSManager.java'),
(80, 'ko', 'very high', '', 'RegionBBSManager.java'),
(80, 'tw', '非常高等', '', 'RegionBBSManager.java'),

(81, 'cn', '高等', '', 'RegionBBSManager.java'),
(81, 'en', 'high', '', 'RegionBBSManager.java'),
(81, 'ko', 'high', '', 'RegionBBSManager.java'),
(81, 'tw', '高等', '', 'RegionBBSManager.java'),

(82, 'cn', '中等', '', 'RegionBBSManager.java'),
(82, 'en', 'medium', '', 'RegionBBSManager.java'),
(82, 'ko', 'medium', '', 'RegionBBSManager.java'),
(82, 'tw', '中等', '', 'RegionBBSManager.java'),

(83, 'cn', '等级：', '', 'RegionBBSManager.java'),
(83, 'en', 'Level: ', '', 'RegionBBSManager.java'),
(83, 'ko', '레벨: ', '', 'RegionBBSManager.java'),
(83, 'tw', '等級：', '', 'RegionBBSManager.java'),

(84, 'cn', '经验值：', '', 'RegionBBSManager.java'),
(84, 'en', 'Experience: ', '', 'RegionBBSManager.java'),
(84, 'ko', 'Experience: ', '', 'RegionBBSManager.java'),
(84, 'tw', '經驗值：', '', 'RegionBBSManager.java'),

(85, 'cn', '升级所需经验值：', '', 'RegionBBSManager.java'),
(85, 'en', 'Experience needed for level up: ', '', 'RegionBBSManager.java'),
(85, 'ko', 'Experience needed for level up: ', '', 'RegionBBSManager.java'),
(85, 'tw', '升級所需經驗值：', '', 'RegionBBSManager.java'),

(86, 'cn', '累积线上时间：', '', 'RegionBBSManager.java'),
(86, 'en', 'Uptime: ', '', 'RegionBBSManager.java'),
(86, 'ko', '업타임: ', '', 'RegionBBSManager.java'),
(86, 'tw', '累積線上時間：', '', 'RegionBBSManager.java'),

(87, 'cn', '', '小时;分;秒', 'RegionBBSManager.java'),
(87, 'en', '', 'h ;m ;s', 'RegionBBSManager.java'),
(87, 'ko', '', '시 ;분 ;초', 'RegionBBSManager.java'),
(87, 'tw', '', '小時;分;秒', 'RegionBBSManager.java'),

(88, 'cn', '血盟：', '', 'RegionBBSManager.java'),
(88, 'en', 'Clan: ', '', 'RegionBBSManager.java'),
(88, 'ko', '혈맹: ', '', 'RegionBBSManager.java'),
(88, 'tw', '血盟：', '', 'RegionBBSManager.java'),

(89, 'cn', '发送密语', '', 'RegionBBSManager.java'),
(89, 'en', 'Send PM', '', 'RegionBBSManager.java'),
(89, 'ko', '귓속말 보내기', '', 'RegionBBSManager.java'),
(89, 'tw', '發送密語', '', 'RegionBBSManager.java'),

(90, 'cn', '返回', '', 'RegionBBSManager.java'),
(90, 'en', 'Back', '', 'RegionBBSManager.java'),
(90, 'ko', '뒤로', '', 'RegionBBSManager.java'),
(90, 'tw', '返回', '', 'RegionBBSManager.java'),

(91, 'cn', ' ========= 人物管理 =========', '', 'RegionBBSManager.java'),
(91, 'en', ' === Character management ===', '', 'RegionBBSManager.java'),
(91, 'ko', ' === 캐릭터 관리 ===', '', 'RegionBBSManager.java'),
(91, 'tw', ' ========= 人物管理 =========', '', 'RegionBBSManager.java'),

(92, 'cn', '资讯', '', 'RegionBBSManager.java'),
(92, 'en', 'Information', '', 'RegionBBSManager.java'),
(92, 'ko', '정보', '', 'RegionBBSManager.java'),
(92, 'tw', '資訊', '', 'RegionBBSManager.java'),

(93, 'cn', '前往', '', 'RegionBBSManager.java'),
(93, 'en', 'Go', '', 'RegionBBSManager.java'),
(93, 'ko', 'Go', '', 'RegionBBSManager.java'),
(93, 'tw', '前往', '', 'RegionBBSManager.java'),

(94, 'cn', '召唤', '', 'RegionBBSManager.java'),
(94, 'en', 'Call', '', 'RegionBBSManager.java'),
(94, 'ko', 'Call', '', 'RegionBBSManager.java'),
(94, 'tw', '召喚', '', 'RegionBBSManager.java'),

(95, 'cn', '状态', '', 'RegionBBSManager.java'),
(95, 'en', 'buffs', '', 'RegionBBSManager.java'),
(95, 'ko', 'buffs', '', 'RegionBBSManager.java'),
(95, 'tw', '狀態', '', 'RegionBBSManager.java'),

(96, 'cn', '复活', '', 'RegionBBSManager.java'),
(96, 'en', 'revive', '', 'RegionBBSManager.java'),
(96, 'ko', 'revive', '', 'RegionBBSManager.java'),
(96, 'tw', '復活', '', 'RegionBBSManager.java'),

(97, 'cn', '治愈', '', 'RegionBBSManager.java'),
(97, 'en', 'Cure', '', 'RegionBBSManager.java'),
(97, 'ko', 'Cure', '', 'RegionBBSManager.java'),
(97, 'tw', '治癒', '', 'RegionBBSManager.java'),

(98, 'cn', '查询不到玩家：', '', 'RegionBBSManager.java'),
(98, 'en', 'No player with name ', '', 'RegionBBSManager.java'),
(98, 'ko', 'No player with name ', '', 'RegionBBSManager.java'),
(98, 'tw', '查詢不到玩家：', '', 'RegionBBSManager.java'),

(99, 'cn', '没有发现该玩家！', '', 'RegionBBSManager.java'),
(99, 'en', 'Player not found !', '', 'RegionBBSManager.java'),
(99, 'ko', '플레이어를 찾을 수 없습니다!', '', 'RegionBBSManager.java'),
(99, 'tw', '沒有發現該玩家！', '', 'RegionBBSManager.java'),

(100, 'cn', '玩家监禁中。', '', 'RegionBBSManager.java'),
(100, 'en', 'Player is in jail.', '', 'RegionBBSManager.java'),
(100, 'ko', '플레이어는 감옥에 있습니다.', '', 'RegionBBSManager.java'),
(100, 'tw', '玩家監禁中。', '', 'RegionBBSManager.java'),

(101, 'cn', '玩家禁止聊天中。', '', 'RegionBBSManager.java'),
(101, 'en', 'Player is chat banned.', '', 'RegionBBSManager.java'),
(101, 'ko', '플레이어는 채팅 금지중입니다.', '', 'RegionBBSManager.java'),
(101, 'tw', '玩家禁止聊天中。', '', 'RegionBBSManager.java'),

(102, 'cn', '监禁中禁止聊天。', '', 'RegionBBSManager.java'),
(102, 'en', 'You can not chat while in jail.', '', 'RegionBBSManager.java'),
(102, 'ko', '감옥에선 채팅을 할 수 없습니다.', '', 'RegionBBSManager.java'),
(102, 'tw', '監禁中禁止聊天。', '', 'RegionBBSManager.java'),

(103, 'cn', '信息传送成功！', '', 'RegionBBSManager.java'),
(103, 'en', 'Message Sent', '', 'RegionBBSManager.java'),
(103, 'ko', '메시지 보내기', '', 'RegionBBSManager.java'),
(103, 'tw', '訊息傳送成功！', '', 'RegionBBSManager.java'),

(104, 'cn', '服务端启动时间：', '', 'RegionBBSManager.java'),
(104, 'en', 'Server Restarted: ', '', 'RegionBBSManager.java'),
(104, 'ko', '서버 재시작: ', '', 'RegionBBSManager.java'),
(104, 'tw', '伺服器啟動時間：', '', 'RegionBBSManager.java'),

(105, 'cn', '经验值倍率：', '', 'RegionBBSManager.java'),
(105, 'en', 'XP Rate: x', '', 'RegionBBSManager.java'),
(105, 'ko', 'XP 배율: x', '', 'RegionBBSManager.java'),
(105, 'tw', '經驗值倍率：', '', 'RegionBBSManager.java'),

(106, 'cn', '组队经验值倍率：', '', 'RegionBBSManager.java'),
(106, 'en', 'Party XP Rate: x', '', 'RegionBBSManager.java'),
(106, 'ko', '파티 XP 배율: x', '', 'RegionBBSManager.java'),
(106, 'tw', '組隊經驗值倍率：', '', 'RegionBBSManager.java'),

(107, 'cn', '额外经验值倍率：', '', 'RegionBBSManager.java'),
(107, 'en', 'XP Exponent: ', '', 'RegionBBSManager.java'),
(107, 'ko', 'XP Exponent: ', '', 'RegionBBSManager.java'),
(107, 'tw', '額外經驗值倍率：', '', 'RegionBBSManager.java'),

(108, 'cn', '技能值倍率：', '', 'RegionBBSManager.java'),
(108, 'en', 'SP Rate: x', '', 'RegionBBSManager.java'),
(108, 'ko', 'SP 배율: x', '', 'RegionBBSManager.java'),
(108, 'tw', '技能值倍率：', '', 'RegionBBSManager.java'),

(109, 'cn', '组队技能值倍率：', '', 'RegionBBSManager.java'),
(109, 'en', 'Party SP Rate: x', '', 'RegionBBSManager.java'),
(109, 'ko', '파티 SP 배율: x', '', 'RegionBBSManager.java'),
(109, 'tw', '組隊技能值倍率：', '', 'RegionBBSManager.java'),

(110, 'cn', '额外技能值倍率：', '', 'RegionBBSManager.java'),
(110, 'en', 'SP Exponent: ', '', 'RegionBBSManager.java'),
(110, 'ko', 'SP Exponent: ', '', 'RegionBBSManager.java'),
(110, 'tw', '額外技能值倍率：', '', 'RegionBBSManager.java'),

(111, 'cn', '掉落倍率：', '', 'RegionBBSManager.java'),
(111, 'en', 'Drop Rate: ', '', 'RegionBBSManager.java'),
(111, 'ko', '드랍 배율: ', '', 'RegionBBSManager.java'),
(111, 'tw', '掉落倍率：', '', 'RegionBBSManager.java'),

(112, 'cn', '回收倍率：', '', 'RegionBBSManager.java'),
(112, 'en', 'Spoil Rate: ', '', 'RegionBBSManager.java'),
(112, 'ko', '스포일 배율: ', '', 'RegionBBSManager.java'),
(112, 'tw', '回收倍率：', '', 'RegionBBSManager.java'),

(113, 'cn', '金钱倍率：', '', 'RegionBBSManager.java'),
(113, 'en', 'Adena Rate: ', '', 'RegionBBSManager.java'),
(113, 'ko', '아데나 배율: ', '', 'RegionBBSManager.java'),
(113, 'tw', '金錢倍率：', '', 'RegionBBSManager.java'),

(114, 'cn', ' 个物件', '', 'RegionBBSManager.java'),
(114, 'en', ' Object count', '', 'RegionBBSManager.java'),
(114, 'ko', ' 오브젝트 갯수', '', 'RegionBBSManager.java'),
(114, 'tw', ' 個物件', '', 'RegionBBSManager.java'),

(115, 'cn', ' 个玩家在线上', '', 'RegionBBSManager.java'),
(115, 'en', ' Player(s) Online', '', 'RegionBBSManager.java'),
(115, 'ko', ' 온라인 유저 수', '', 'RegionBBSManager.java'),
(115, 'tw', ' 個玩家在線上', '', 'RegionBBSManager.java'),

(116, 'cn', '上一页', '', 'RegionBBSManager.java'),
(116, 'en', 'Prev', '', 'RegionBBSManager.java'),
(116, 'ko', '이전', '', 'RegionBBSManager.java'),
(116, 'tw', '上一頁', '', 'RegionBBSManager.java'),

(117, 'cn', '下一页', '', 'RegionBBSManager.java'),
(117, 'en', 'Next', '', 'RegionBBSManager.java'),
(117, 'ko', '다음', '', 'RegionBBSManager.java'),
(117, 'tw', '下一頁', '', 'RegionBBSManager.java'),

(118, 'cn', '', '显示范围 ; 个玩家。', 'RegionBBSManager.java'),
(118, 'en', '', 'Displaying ;player(s)', 'RegionBBSManager.java'),
(118, 'ko', '', 'Displaying ;player(s)', 'RegionBBSManager.java'),
(118, 'tw', '', '顯示範圍 ; 個玩家。', 'RegionBBSManager.java'),

(121, 'cn', '没有发现档案：', '', 'TopBBSManager.java'),
(121, 'en', '404 :File Not foud: ', '', 'TopBBSManager.java'),
(121, 'ko', '404 :파일을 찾을 수 없습니다: ', '', 'TopBBSManager.java'),
(121, 'tw', '沒有發現檔案：', '', 'TopBBSManager.java'),

(124, 'cn', '首页', '', 'TopicBBSManager.java'),
(124, 'en', 'HOME', '', 'TopicBBSManager.java'),
(124, 'ko', 'HOME', '', 'TopicBBSManager.java'),
(124, 'tw', '首頁', '', 'TopicBBSManager.java'),

(125, 'cn', '备忘录', '', 'TopicBBSManager.java'),
(125, 'en', 'Memo Form', '', 'TopicBBSManager.java'),
(125, 'ko', 'Memo Form', '', 'TopicBBSManager.java'),
(125, 'tw', '備忘錄', '', 'TopicBBSManager.java'),

(128, 'cn', '技能尚未实装。技能 ID：', '', 'L2SkillDefault.java'),
(128, 'en', 'Skill not implemented. Skill ID: ', '', 'L2SkillDefault.java'),
(128, 'ko', '스킬이 구현되지 않았습니다. 스킬 ID: ', '', 'L2SkillDefault.java'),
(128, 'tw', '技能尚未實裝。技能 ID︰', '', 'L2SkillDefault.java'),

(131, 'cn', '你必须在施法前装备武器。', '', 'L2SkillElemental.java'),
(131, 'en', 'You must equip your weapon before casting a spell.', '', 'L2SkillElemental.java'),
(131, 'ko', 'You must equip your weapon before casting a spell.', '', 'L2SkillElemental.java'),
(131, 'tw', '你必須在施法前裝備武器。', '', 'L2SkillElemental.java'),

(132, 'cn', '目标没有注入元素之力。', '', 'L2SkillElemental.java'),
(132, 'en', 'Target is not charged by elements.', '', 'L2SkillElemental.java'),
(132, 'ko', 'Target is not charged by elements.', '', 'L2SkillElemental.java'),
(132, 'tw', '目標沒有注入元素之力。', '', 'L2SkillElemental.java'),

(135, 'cn', '只能在城堡周围放置旗帜。', '', 'L2SkillSiegeFlag.java'),
(135, 'en', 'You must be on castle ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(135, 'ko', 'You must be on castle ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(135, 'tw', '只能在城堡周圍放置旗幟。', '', 'L2SkillSiegeFlag.java'),

(136, 'cn', '只能在攻城战放置旗帜。', '', 'L2SkillSiegeFlag.java'),
(136, 'en', 'You can only place a flag during a siege.', '', 'L2SkillSiegeFlag.java'),
(136, 'ko', 'You can only place a flag during a siege.', '', 'L2SkillSiegeFlag.java'),
(136, 'tw', '只能在攻城戰放置旗幟。', '', 'L2SkillSiegeFlag.java'),

(137, 'cn', '只有攻城方才能放置旗帜。', '', 'L2SkillSiegeFlag.java'),
(137, 'en', 'You must be an attacker to place a flag.', '', 'L2SkillSiegeFlag.java'),
(137, 'ko', 'You must be an attacker to place a flag.', '', 'L2SkillSiegeFlag.java'),
(137, 'tw', '只有攻城方才能放置旗幟。', '', 'L2SkillSiegeFlag.java'),

(138, 'cn', '必须是血盟盟主。', '', 'L2SkillSiegeFlag.java'),
(138, 'en', 'You must be a clan leader to place a flag.', '', 'L2SkillSiegeFlag.java'),
(138, 'ko', 'You must be a clan leader to place a flag.', '', 'L2SkillSiegeFlag.java'),
(138, 'tw', '必須是血盟盟主。', '', 'L2SkillSiegeFlag.java'),

(139, 'cn', '旗帜放置数量已达到极限。', '', 'L2SkillSiegeFlag.java'),
(139, 'en', 'You have already placed the maximum number of flags possible.', '', 'L2SkillSiegeFlag.java'),
(139, 'ko', 'You have already placed the maximum number of flags possible.', '', 'L2SkillSiegeFlag.java'),
(139, 'tw', '旗幟放置數量已達到極限。', '', 'L2SkillSiegeFlag.java'),

(141, 'cn', '只能在要塞周围放置旗帜。', '', 'L2SkillSiegeFlag.java'),
(141, 'en', 'You must be on fort ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(141, 'ko', 'You must be on fort ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(141, 'tw', '只能在要塞周圍放置旗幟。', '', 'L2SkillSiegeFlag.java'),

(142, 'cn', '只能在要塞战放置旗帜。', '', 'L2SkillSiegeFlag.java'),
(142, 'en', 'You can only place a flag during a siege.', '', 'L2SkillSiegeFlag.java'),
(142, 'ko', 'You can only place a flag during a siege.', '', 'L2SkillSiegeFlag.java'),
(142, 'tw', '只能在要塞戰放置旗幟。', '', 'L2SkillSiegeFlag.java'),

(143, 'cn', 'You must be on fort or castle ground to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),
(143, 'en', 'You must be on fort or castle ground to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),
(143, 'ko', 'You must be on fort or castle ground to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),
(143, 'tw', 'You must be on fort or castle ground to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),

(144, 'cn', 'You can only construct an outpost or flag on siege field.', '', 'L2SkillSiegeFlag.java'),
(144, 'en', 'You can only construct an outpost or flag on siege field.', '', 'L2SkillSiegeFlag.java'),
(144, 'ko', 'You can only construct an outpost or flag on siege field.', '', 'L2SkillSiegeFlag.java'),
(144, 'tw', 'You can only construct an outpost or flag on siege field.', '', 'L2SkillSiegeFlag.java'),

(145, 'cn', 'You must be a clan leader to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),
(145, 'en', 'You must be a clan leader to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),
(145, 'ko', 'You must be a clan leader to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),
(145, 'tw', 'You must be a clan leader to construct an outpost or flag.', '', 'L2SkillSiegeFlag.java'),

(146, 'cn', 'You must be on Siegable clan hall ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(146, 'en', 'You must be on Siegable clan hall ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(146, 'ko', 'You must be on Siegable clan hall ground to place a flag.', '', 'L2SkillSiegeFlag.java'),
(146, 'tw', 'You must be on Siegable clan hall ground to place a flag.', '', 'L2SkillSiegeFlag.java'),

(147, 'cn', 'You cannot place a flag on this siege.', '', 'L2SkillSiegeFlag.java'),
(147, 'en', 'You cannot place a flag on this siege.', '', 'L2SkillSiegeFlag.java'),
(147, 'ko', 'You cannot place a flag on this siege.', '', 'L2SkillSiegeFlag.java'),
(147, 'tw', 'You cannot place a flag on this siege.', '', 'L2SkillSiegeFlag.java'),

(151, 'cn', '', '召唤技能「;」尚未实装。', 'L2SkillSummon.java'),
(151, 'en', '', 'Summon skill ; not described yet', 'L2SkillSummon.java'),
(151, 'ko', '', '소환 스킬 ; 아직 구현되지 않았습니다', 'L2SkillSummon.java'),
(151, 'tw', '', '召喚技能「;」尚未實裝。', 'L2SkillSummon.java'),

(154, 'cn', '无法在黑暗的祭典使用脱逃。', '', 'L2SkillTeleport.java'),
(154, 'en', 'You may not use an escape skill in a festival.', '', 'L2SkillTeleport.java'),
(154, 'ko', '어둠의 제전에서 탈출을 사용할 수 없습니다.', '', 'L2SkillTeleport.java'),
(154, 'tw', '無法在黑暗的祭典使用脫逃。', '', 'L2SkillTeleport.java'),

(155, 'cn', '无法在 GM 谘询处使用脱逃。', '', 'L2SkillTeleport.java'),
(155, 'en', 'You can not escape from jail.', '', 'L2SkillTeleport.java'),
(155, 'ko', '감옥에서는 귀환 주문서를 사용할 수 없습니다.', '', 'L2SkillTeleport.java'),
(155, 'tw', '無法在 GM 諮詢處使用脫逃。', '', 'L2SkillTeleport.java'),

(156, 'cn', '无法在决斗中使用脱逃。', '', 'L2SkillTeleport.java'),
(156, 'en', 'You cannot use escape skills during a duel.', '', 'L2SkillTeleport.java'),
(156, 'ko', 'You cannot use escape skills during a duel.', '', 'L2SkillTeleport.java'),
(156, 'tw', '無法在決鬥中使用脫逃。', '', 'L2SkillTeleport.java'),

(159, 'cn', '因为做了非法动作而被踢除。', '', 'IllegalPlayerAction.java'),
(159, 'en', 'You will be kicked for illegal action, GM informed.', '', 'IllegalPlayerAction.java'),
(159, 'ko', 'You will be kicked for illegal action, GM informed.', '', 'IllegalPlayerAction.java'),
(159, 'tw', '因為做了非法動作而被踢除。', '', 'IllegalPlayerAction.java'),

(160, 'cn', '因为做了非法动作而被封锁。', '', 'IllegalPlayerAction.java'),
(160, 'en', 'You are banned for illegal action, GM informed.', '', 'IllegalPlayerAction.java'),
(160, 'ko', 'You are banned for illegal action, GM informed.', '', 'IllegalPlayerAction.java'),
(160, 'tw', '因為做了非法動作而被封鎖。', '', 'IllegalPlayerAction.java'),

(161, 'cn', '做出非法动作！', '', 'IllegalPlayerAction.java'),
(161, 'en', 'Illegal action performed!', '', 'IllegalPlayerAction.java'),
(161, 'ko', 'Illegal action performed!', '', 'IllegalPlayerAction.java'),
(161, 'tw', '做出非法動作！', '', 'IllegalPlayerAction.java'),

(162, 'cn', '强制传送至 GM 谘询处。', '', 'IllegalPlayerAction.java'),
(162, 'en', 'You will be teleported to GM Consultation Service area and jailed.', '', 'IllegalPlayerAction.java'),
(162, 'ko', 'You will be teleported to GM Consultation Service area and jailed.', '', 'IllegalPlayerAction.java'),
(162, 'tw', '強制傳送至 GM 諮詢處。', '', 'IllegalPlayerAction.java'),

(165, 'cn', '', '彩券局数第 #; 局。', 'Lottery.java'),
(165, 'en', '', 'Lottery tickets are now available for Lucky Lottery #;.', 'Lottery.java'),
(165, 'ko', '', 'Lottery tickets are now available for Lucky Lottery #;.', 'Lottery.java'),
(165, 'tw', '', '彩券局數第 #; 局。', 'Lottery.java'),

(168, 'cn', '次元的裂痕空间已满，请稍后再试。', '', 'DimensionalRiftManager.java'),
(168, 'en', 'Rift is full. Try later.', '', 'DimensionalRiftManager.java'),
(168, 'ko', 'Rift is full. Try later.', '', 'DimensionalRiftManager.java'),
(168, 'tw', '次元的裂痕空間已滿，請稍後再試。', '', 'DimensionalRiftManager.java'),

(171, 'cn', '决斗已取消，因位决斗者正在进行 PvP 竞赛。', '', 'DuelManager.java'),
(171, 'en', 'The duel was canceled because a duelist engaged in PvP combat.', '', 'DuelManager.java'),
(171, 'ko', 'The duel was canceled because a duelist engaged in PvP combat.', '', 'DuelManager.java'),
(171, 'tw', '決鬥已取消，因位決鬥者正在進行 PvP 競賽。', '', 'DuelManager.java'),

(174, 'cn', '只能在要塞周围召唤。', '', 'FortSiegeManager.java'),
(174, 'en', 'You must be on fort ground to summon this', '', 'FortSiegeManager.java'),
(174, 'ko', 'You must be on fort ground to summon this', '', 'FortSiegeManager.java'),
(174, 'tw', '只能在要塞周圍召喚。', '', 'FortSiegeManager.java'),

(175, 'cn', '只能在攻城战召唤。', '', 'FortSiegeManager.java'),
(175, 'en', 'You can only summon this during a siege.', '', 'FortSiegeManager.java'),
(175, 'ko', 'You can only summon this during a siege.', '', 'FortSiegeManager.java'),
(175, 'tw', '只能在攻城戰召喚。', '', 'FortSiegeManager.java'),

(176, 'cn', '只有攻城方才能召唤。', '', 'FortSiegeManager.java'),
(176, 'en', 'You can only summon this as a registered attacker.', '', 'FortSiegeManager.java'),
(176, 'ko', 'You can only summon this as a registered attacker.', '', 'FortSiegeManager.java'),
(176, 'tw', '只有攻城方才能召喚。', '', 'FortSiegeManager.java'),

(177, 'cn', '已经有旗帜了。', '', 'FortSiegeManager.java'),
(177, 'en', 'You already have the combat flag', '', 'FortSiegeManager.java'),
(177, 'ko', 'You already have the combat flag', '', 'FortSiegeManager.java'),
(177, 'tw', '已經有旗幟了。', '', 'FortSiegeManager.java'),

(178, 'cn', '必须在要塞地面上才可捡起旗帜。', '', 'FortSiegeManager.java'),
(178, 'en', 'You must be on fort ground to pickup Combat Flag', '', 'FortSiegeManager.java'),
(178, 'ko', 'You must be on fort ground to pickup Combat Flag', '', 'FortSiegeManager.java'),
(178, 'tw', '必須在要塞地面上才可撿起旗幟。', '', 'FortSiegeManager.java'),

(179, 'cn', '必须在攻城战期间才可捡起旗帜。', '', 'FortSiegeManager.java'),
(179, 'en', 'You can only pickup Combat Flag during a siege.', '', 'FortSiegeManager.java'),
(179, 'ko', 'You can only pickup Combat Flag during a siege.', '', 'FortSiegeManager.java'),
(179, 'tw', '必須在攻城戰期間才可撿起旗幟。', '', 'FortSiegeManager.java'),

(180, 'cn', '必须是攻城方才可捡起旗帜。', '', 'FortSiegeManager.java'),
(180, 'en', 'You must be an attacker to pickup Combat Flag', '', 'FortSiegeManager.java'),
(180, 'ko', 'You must be an attacker to pickup Combat Flag', '', 'FortSiegeManager.java'),
(180, 'tw', '必須是攻城方才可撿起旗幟。', '', 'FortSiegeManager.java'),

(189, 'cn', '首页', '', 'PetitionManager.java'),
(189, 'en', 'Main', '', 'PetitionManager.java'),
(189, 'ko', '메인', '', 'PetitionManager.java'),
(189, 'tw', '首頁', '', 'PetitionManager.java'),

(190, 'cn', '诉求管理', '', 'PetitionManager.java'),
(190, 'en', 'Petition Menu', '', 'PetitionManager.java'),
(190, 'ko', '진정 메뉴', '', 'PetitionManager.java'),
(190, 'tw', '訴求管理', '', 'PetitionManager.java'),

(191, 'cn', '返回', '', 'PetitionManager.java'),
(191, 'en', 'Back', '', 'PetitionManager.java'),
(191, 'ko', '이전', '', 'PetitionManager.java'),
(191, 'tw', '返回', '', 'PetitionManager.java'),

(192, 'cn', '重新开始', '', 'PetitionManager.java'),
(192, 'en', 'Reset', '', 'PetitionManager.java'),
(192, 'ko', '리셋', '', 'PetitionManager.java'),
(192, 'tw', '重新開始', '', 'PetitionManager.java'),

(193, 'cn', '重新整理', '', 'PetitionManager.java'),
(193, 'en', 'Refresh', '', 'PetitionManager.java'),
(193, 'ko', '갱신', '', 'PetitionManager.java'),
(193, 'tw', '重新整理', '', 'PetitionManager.java'),

(194, 'cn', '目前没有任何诉求。', '', 'PetitionManager.java'),
(194, 'en', 'There are no currently pending petitions.', '', 'PetitionManager.java'),
(194, 'ko', '현재 보류중인 진정이 없습니다.', '', 'PetitionManager.java'),
(194, 'tw', '目前沒有任何訴求。', '', 'PetitionManager.java'),

(195, 'cn', '目前诉求：', '', 'PetitionManager.java'),
(195, 'en', 'Current Petitions:', '', 'PetitionManager.java'),
(195, 'ko', '현재 진정:', '', 'PetitionManager.java'),
(195, 'tw', '目前訴求：', '', 'PetitionManager.java'),

(196, 'cn', '检视', '', 'PetitionManager.java'),
(196, 'en', 'View', '', 'PetitionManager.java'),
(196, 'ko', '보기', '', 'PetitionManager.java'),
(196, 'tw', '檢視', '', 'PetitionManager.java'),

(197, 'cn', '拒绝', '', 'PetitionManager.java'),
(197, 'en', 'Reject', '', 'PetitionManager.java'),
(197, 'ko', '거부', '', 'PetitionManager.java'),
(197, 'tw', '拒絕', '', 'PetitionManager.java'),

(198, 'cn', '还有更多等待中的诉求', '', 'PetitionManager.java'),
(198, 'en', 'There is more pending petition...', '', 'PetitionManager.java'),
(198, 'ko', '대기중인 진정이 있습니다...', '', 'PetitionManager.java'),
(198, 'tw', '還有更多等待中的訴求...', '', 'PetitionManager.java'),

(199, 'cn', '送出新的诉求。', '', 'PetitionManager.java'),
(199, 'en', ' has submitted a new petition.', '', 'PetitionManager.java'),
(199, 'ko', '신규 진정이 접수되었습니다.', '', 'PetitionManager.java'),
(199, 'tw', '送出新的訴求。', '', 'PetitionManager.java'),

(200, 'cn', '诉求系统', '', 'PetitionManager.java'),
(200, 'en', 'Petition System', '', 'PetitionManager.java'),
(200, 'ko', '진정 시스템', '', 'PetitionManager.java'),
(200, 'tw', '訴求系統', '', 'PetitionManager.java'),

(203, 'cn', '无。', '', 'RaidBossSpawnManager.java'),
(203, 'en', 'None', '', 'RaidBossSpawnManager.java'),
(203, 'ko', 'None', '', 'RaidBossSpawnManager.java'),
(203, 'tw', '無。', '', 'RaidBossSpawnManager.java'),

(204, 'cn', '狩猎首领状态....\\n', '', 'RaidBossSpawnManager.java'),
(204, 'en', 'RaidBoss Status....\\n', '', 'RaidBossSpawnManager.java'),
(204, 'ko', '레이드보스 상태....\\n', '', 'RaidBossSpawnManager.java'),
(204, 'tw', '狩獵首領狀態....\\n', '', 'RaidBossSpawnManager.java'),

(206, 'cn', '只能在城堡周围召唤。', '', 'SiegeManager.java'),
(206, 'en', 'You must be on castle ground to summon this', '', 'SiegeManager.java'),
(206, 'ko', 'You must be on castle ground to summon this', '', 'SiegeManager.java'),
(206, 'tw', '只能在城堡周圍召喚。', '', 'SiegeManager.java'),

(207, 'cn', '只能在攻城战召唤。', '', 'SiegeManager.java'),
(207, 'en', 'You can only summon this during a siege.', '', 'SiegeManager.java'),
(207, 'ko', 'You can only summon this during a siege.', '', 'SiegeManager.java'),
(207, 'tw', '只能在攻城戰召喚。', '', 'SiegeManager.java'),

(208, 'cn', '只有攻城方才能召唤。', '', 'SiegeManager.java'),
(208, 'en', 'You can only summon this as a registered attacker.', '', 'SiegeManager.java'),
(208, 'ko', 'You can only summon this as a registered attacker.', '', 'SiegeManager.java'),
(208, 'tw', '只有攻城方才能召喚。', '', 'SiegeManager.java'),

(210, 'cn', '指定的 NPC 不存在。', '', 'SpawnTable.java'),
(210, 'en', 'No current spawns found.', '', 'SpawnTable.java'),
(210, 'ko', 'No current spawns found.', '', 'SpawnTable.java'),
(210, 'tw', '指定的 NPC 不存在。', '', 'SpawnTable.java'),

(211, 'cn', '', '等级：; (主动)', 'AbstractNpcInfo.java'),
(211, 'en', '', 'Lv ;*', 'AbstractNpcInfo.java'),
(211, 'ko', '', 'Lv ;*', 'AbstractNpcInfo.java'),
(211, 'tw', '', '等級：; (主動)', 'AbstractNpcInfo.java'),

(214, 'cn', '隐形状态', '', 'CharInfo.java'),
(214, 'en', 'Invisible', '', 'CharInfo.java'),
(214, 'ko', '투명 모드', '', 'CharInfo.java'),
(214, 'tw', '隱形狀態', '', 'CharInfo.java'),

(217, 'cn', '档案内容过长，无法正确显示。', '', 'NpcHtmlMessage.java'),
(217, 'en', 'Html was too long', '', 'NpcHtmlMessage.java'),
(217, 'ko', '파일의 내용이 너무 큽니다.', '', 'NpcHtmlMessage.java'),
(217, 'tw', '檔案內容過長，無法正確顯示。', '', 'NpcHtmlMessage.java'),

(218, 'cn', '档案遗失：', '', 'NpcHtmlMessage.java'),
(218, 'en', 'My Text is missing:', '', 'NpcHtmlMessage.java'),
(218, 'ko', '파일이 없습니다:', '', 'NpcHtmlMessage.java'),
(218, 'tw', '檔案遺失：', '', 'NpcHtmlMessage.java'),

(221, 'cn', '档案内容过长，无法正确显示。', '', 'NpcQuestHtmlMessage.java'),
(221, 'en', 'Html was too long', '', 'NpcQuestHtmlMessage.java'),
(221, 'ko', '파일의 내용이 너무 큽니다.', '', 'NpcQuestHtmlMessage.java'),
(221, 'tw', '檔案內容過長，無法正確顯示。', '', 'NpcQuestHtmlMessage.java'),

(222, 'cn', '档案遗失：', '', 'NpcQuestHtmlMessage.java'),
(222, 'en', 'My Text is missing:', '', 'NpcQuestHtmlMessage.java'),
(222, 'ko', '파일이 없습니다:', '', 'NpcQuestHtmlMessage.java'),
(222, 'tw', '檔案遺失：', '', 'NpcQuestHtmlMessage.java'),

(228, 'cn', '隐形状态', '', 'UserInfo.java'),
(228, 'en', 'Invisible', '', 'UserInfo.java'),
(228, 'ko', '투명 모드', '', 'UserInfo.java'),
(228, 'tw', '隱形狀態', '', 'UserInfo.java'),

(230, 'cn', '没有相关权限。', '', 'AddTradeItem.java'),
(230, 'en', 'Transactions are disabled for your Access Level', '', 'AddTradeItem.java'),
(230, 'ko', 'Transactions are disabled for your Access Level', '', 'AddTradeItem.java'),
(230, 'tw', '沒有相關權限。', '', 'AddTradeItem.java'),

(231, 'cn', '', '指令「;」尚未实装。', 'BypassUserCmd.java'),
(231, 'en', '', 'User commandID ; not implemented yet.', 'BypassUserCmd.java'),
(231, 'ko', '', 'User commandID ; not implemented yet.', 'BypassUserCmd.java'),
(231, 'tw', '', '指令「;」尚未實裝。', 'BypassUserCmd.java'),

(235, 'cn', '你的伴侣已登录。', '', 'EnterWorld.java'),
(235, 'en', 'Your Partner has logged in.', '', 'EnterWorld.java'),
(235, 'ko', 'Your Partner has logged in.', '', 'EnterWorld.java'),
(235, 'tw', '你的伴侶已登入。', '', 'EnterWorld.java'),

(238, 'cn', '无法在活动中登出。', '', 'Logout.java'),
(238, 'en', 'A superior power doesn\'t allow you to leave the event', '', 'Logout.java'),
(238, 'ko', 'A superior power doesn\'t allow you to leave the event', '', 'Logout.java'),
(238, 'tw', '無法在活動中登出。', '', 'Logout.java'),

(239, 'cn', '无法在黑暗的祭典中登出。', '', 'Logout.java'),
(239, 'en', 'You cannot log out while you are a participant in a festival.', '', 'Logout.java'),
(239, 'ko', 'You cannot log out while you are a participant in a festival.', '', 'Logout.java'),
(239, 'tw', '無法在黑暗的祭典中登出。', '', 'Logout.java'),

(240, 'cn', '在下一场的黑暗祭典被移除。', '', 'Logout.java'),
(240, 'en', ' has been removed from the upcoming festival.', '', 'Logout.java'),
(240, 'ko', ' has been removed from the upcoming festival.', '', 'Logout.java'),
(240, 'tw', '在下一場的黑暗祭典被移除。', '', 'Logout.java'),

(243, 'cn', '功能尚未实装。', '', 'RequestActionUse.java'),
(243, 'en', 'Action not handled yet.', '', 'RequestActionUse.java'),
(243, 'ko', 'Action not handled yet.', '', 'RequestActionUse.java'),
(243, 'tw', '功能尚未實裝。', '', 'RequestActionUse.java'),

(244, 'cn', '交易时无法使用技能。', '', 'RequestActionUse.java'),
(244, 'en', 'You cannot use a skill while operating a private store.', '', 'RequestActionUse.java'),
(244, 'ko', 'You cannot use a skill while operating a private store.', '', 'RequestActionUse.java'),
(244, 'tw', '交易時無法使用技能。', '', 'RequestActionUse.java'),

(245, 'cn', '交易时无法使用夫妇的行动。', '', 'RequestActionUse.java'),
(245, 'en', 'You cannot request a couple action yourself.', '', 'RequestActionUse.java'),
(245, 'ko', 'You cannot request a couple action yourself.', '', 'RequestActionUse.java'),
(245, 'tw', '交易時無法使用夫婦的行動。', '', 'RequestActionUse.java'),

(246, 'cn', '交易时无法使用制作。', '', 'RequestActionUse.java'),
(246, 'en', 'You cannot request a couple action while casting.', '', 'RequestActionUse.java'),
(246, 'ko', 'You cannot request a couple action while casting.', '', 'RequestActionUse.java'),
(246, 'tw', '交易時無法使用製作。', '', 'RequestActionUse.java'),

(249, 'cn', '不能使用该物品。', '', 'RequestAutoSoulShot.java'),
(249, 'en', 'Cannot use this item.', '', 'RequestAutoSoulShot.java'),
(249, 'ko', 'Cannot use this item.', '', 'RequestAutoSoulShot.java'),
(249, 'tw', '不能使用該物品。', '', 'RequestAutoSoulShot.java'),

(251, 'cn', '你购买的速度太快。', '', 'RequestBuyItem.java'),
(251, 'en', 'You are buying too fast.', '', 'RequestBuyItem.java'),
(251, 'ko', 'You are buying too fast.', '', 'RequestBuyItem.java'),
(251, 'tw', '你購買的速度太快。', '', 'RequestBuyItem.java'),

(252, 'cn', '此价格只有 GM 才能购买！', '', 'RequestBuyItem.java'),
(252, 'en', 'Ohh Cheat dont work? You have a problem now!', '', 'RequestBuyItem.java'),
(252, 'ko', 'Ohh Cheat dont work? You have a problem now!', '', 'RequestBuyItem.java'),
(252, 'tw', '此價格只有 GM 才能購買！', '', 'RequestBuyItem.java'),

(254, 'cn', '你投标的速度太快。', '', 'RequestBidItemAuction.java'),
(254, 'en', 'You are bidding too fast.', '', 'RequestBidItemAuction.java'),
(254, 'ko', 'You are bidding too fast.', '', 'RequestBidItemAuction.java'),
(254, 'tw', '你投標的速度太快。', '', 'RequestBidItemAuction.java'),

(255, 'cn', '', '指令「;」并不存在！', 'RequestBypassToServer.java'),
(255, 'en', '', 'The command ; does not exists!', 'RequestBypassToServer.java'),
(255, 'ko', '', 'The command ; does not exists!', 'RequestBypassToServer.java'),
(255, 'tw', '', '指令「;」並不存在！', 'RequestBypassToServer.java'),

(256, 'cn', '你不能使用该物品。', '', 'RequestCrystallizeItem.java'),
(256, 'en', 'You cannot use this item.', '', 'RequestCrystallizeItem.java'),
(256, 'ko', 'You cannot use this item.', '', 'RequestCrystallizeItem.java'),
(256, 'tw', '你不能使用該物品。', '', 'RequestCrystallizeItem.java'),

(257, 'cn', '你结晶的速度太快。', '', 'RequestCrystallizeItem.java'),
(257, 'en', 'You are crystallizing too fast.', '', 'RequestCrystallizeItem.java'),
(257, 'ko', 'You are crystallizing too fast.', '', 'RequestCrystallizeItem.java'),
(257, 'tw', '你結晶的速度太快。', '', 'RequestCrystallizeItem.java'),

(258, 'cn', '你破坏物品的速度太快。', '', 'RequestDestroyItem.java'),
(258, 'en', 'You destroying items too fast.', '', 'RequestDestroyItem.java'),
(258, 'ko', 'You destroying items too fast.', '', 'RequestDestroyItem.java'),
(258, 'tw', '你破壞物品的速度太快。', '', 'RequestDestroyItem.java'),

(259, 'cn', '你不能使用该物品。', '', 'RequestDestroyItem.java'),
(259, 'en', 'You cannot use this item.', '', 'RequestDestroyItem.java'),
(259, 'ko', 'You cannot use this item.', '', 'RequestDestroyItem.java'),
(259, 'tw', '你不能使用該物品。', '', 'RequestDestroyItem.java'),

(261, 'cn', '无法在 GM 谘询处丢弃物品。', '', 'RequestDropItem.java'),
(261, 'en', 'You cannot drop items in Jail.', '', 'RequestDropItem.java'),
(261, 'ko', '감옥에서 아이템을 드랍할 수 없습니다.', '', 'RequestDropItem.java'),
(261, 'tw', '無法在 GM 諮詢處丟棄物品。', '', 'RequestDropItem.java'),

(262, 'cn', '没有相关权限。', '', 'RequestDropItem.java'),
(262, 'en', 'Transactions are disabled for your Access Level', '', 'RequestDropItem.java'),
(262, 'ko', 'Transactions are disabled for your Access Level', '', 'RequestDropItem.java'),
(262, 'tw', '沒有相關權限。', '', 'RequestDropItem.java'),

(263, 'cn', '你不能使用该物品。', '', 'RequestDropItem.java'),
(263, 'en', 'You cannot use this item.', '', 'RequestDropItem.java'),
(263, 'ko', 'You cannot use this item.', '', 'RequestDropItem.java'),
(263, 'tw', '你不能使用該物品。', '', 'RequestDropItem.java'),

(264, 'cn', '只有队长才能提出队伍决斗。', '', 'RequestDuelStart.java'),
(264, 'en', 'You have to be the leader of a party in order to request a party duel.', '', 'RequestDuelStart.java'),
(264, 'ko', 'You have to be the leader of a party in order to request a party duel.', '', 'RequestDuelStart.java'),
(264, 'tw', '只有隊長才能提出隊伍決鬥。', '', 'RequestDuelStart.java'),

(265, 'cn', '玩家是你的队员。', '', 'RequestDuelStart.java'),
(265, 'en', 'This player is a member of your own party.', '', 'RequestDuelStart.java'),
(265, 'ko', 'This player is a member of your own party.', '', 'RequestDuelStart.java'),
(265, 'tw', '玩家是你的隊員。', '', 'RequestDuelStart.java'),

(266, 'cn', '仍有队员没有准备好决斗。', '', 'RequestDuelStart.java'),
(266, 'en', 'Not all the members of your party are ready for a duel.', '', 'RequestDuelStart.java'),
(266, 'ko', 'Not all the members of your party are ready for a duel.', '', 'RequestDuelStart.java'),
(266, 'tw', '仍有隊員沒有準備好決鬥。', '', 'RequestDuelStart.java'),

(271, 'cn', '联合军内没有应邀的玩家。', '', 'RequestExAskJoinMPCC.java'),
(271, 'en', 'doesn\'t have party and cannot be invited to Command Channel.', '', 'RequestExAskJoinMPCC.java'),
(271, 'ko', 'doesn\'t have party and cannot be invited to Command Channel.', '', 'RequestExAskJoinMPCC.java'),
(271, 'tw', '聯合軍內沒有應邀的玩家。', '', 'RequestExAskJoinMPCC.java'),

(272, 'cn', '', '邀请「;」加入你的指挥频道。', 'RequestExAskJoinMPCC.java'),
(272, 'en', '', 'You invited ; to your Command Channel.', 'RequestExAskJoinMPCC.java'),
(272, 'ko', '', 'You invited ; to your Command Channel.', 'RequestExAskJoinMPCC.java'),
(272, 'tw', '', '邀請「;」加入你的指揮頻道。', 'RequestExAskJoinMPCC.java'),

(276, 'cn', '交易时无法强化。', '', 'RequestExEnchantItemAttribute.java'),
(276, 'en', 'Enchanting items is not allowed during a trade.', '', 'RequestExEnchantItemAttribute.java'),
(276, 'ko', 'Enchanting items is not allowed during a trade.', '', 'RequestExEnchantItemAttribute.java'),
(276, 'tw', '交易時無法強化。', '', 'RequestExEnchantItemAttribute.java'),

(279, 'cn', '盟徽大小超过 2176 bytes。', '', 'RequestExSetPledgeCrestLarge.java'),
(279, 'en', 'The insignia file size is greater than 2176 bytes.', '', 'RequestExSetPledgeCrestLarge.java'),
(279, 'ko', 'The insignia file size is greater than 2176 bytes.', '', 'RequestExSetPledgeCrestLarge.java'),
(279, 'tw', '盟徽大小超過 2176 bytes。', '', 'RequestExSetPledgeCrestLarge.java'),

(280, 'cn', '档案传输错误。', '', 'RequestExSetPledgeCrestLarge.java'),
(280, 'en', 'File Transfer Error.', '', 'RequestExSetPledgeCrestLarge.java'),
(280, 'ko', 'File Transfer Error.', '', 'RequestExSetPledgeCrestLarge.java'),
(280, 'tw', '檔案傳輸錯誤。', '', 'RequestExSetPledgeCrestLarge.java'),

(283, 'cn', '你在对方的隔绝名单。', '', 'RequestFriendInvite.java'),
(283, 'en', 'You are in target\'s block list.', '', 'RequestFriendInvite.java'),
(283, 'ko', 'You are in target\'s block list.', '', 'RequestFriendInvite.java'),
(283, 'tw', '你在對方的隔絕名單。', '', 'RequestFriendInvite.java'),

(286, 'cn', '你取回宠物的物品速度太快。', '', 'RequestGetItemFromPet.java'),
(286, 'en', 'You get items from pet too fast.', '', 'RequestGetItemFromPet.java'),
(286, 'ko', 'You get items from pet too fast.', '', 'RequestGetItemFromPet.java'),
(286, 'tw', '你取回寵物的物品速度太快。', '', 'RequestGetItemFromPet.java'),

(289, 'cn', '你丢物品给宠物的速度太快', '', 'RequestGiveItemToPet.java'),
(289, 'en', 'You give items to pet too fast.', '', 'RequestGiveItemToPet.java'),
(289, 'ko', 'You give items to pet too fast.', '', 'RequestGiveItemToPet.java'),
(289, 'tw', '你丟物品給寵物的速度太快', '', 'RequestGiveItemToPet.java'),

(292, 'cn', '玩家监禁中。', '', 'RequestJoinParty.java'),
(292, 'en', 'Player is in jail.', '', 'RequestJoinParty.java'),
(292, 'ko', '플레이어는 감옥에 있습니다.', '', 'RequestJoinParty.java'),
(292, 'tw', '玩家監禁中。', '', 'RequestJoinParty.java'),

(293, 'cn', '玩家目前为离线交易模式。', '', 'RequestJoinParty.java'),
(293, 'en', 'Player is in offline mode.', '', 'RequestJoinParty.java'),
(293, 'ko', '해당 플레이어는 오프라인 모드입니다.', '', 'RequestJoinParty.java'),
(293, 'tw', '玩家目前為離線交易模式。', '', 'RequestJoinParty.java'),

(294, 'cn', '无法邀请位于次元的裂痕的玩家。', '', 'RequestJoinParty.java'),
(294, 'en', 'You can\'t invite a player when in Dimensional Rift.', '', 'RequestJoinParty.java'),
(294, 'ko', 'You can\'t invite a player when in Dimensional Rift.', '', 'RequestJoinParty.java'),
(294, 'tw', '無法邀請位於次元的裂痕的玩家。', '', 'RequestJoinParty.java'),

(297, 'cn', '无法在次元的裂痕驱逐队员。', '', 'RequestOustPartyMember.java'),
(297, 'en', 'You can\'t dismiss party member when you are in Dimensional Rift.', '', 'RequestOustPartyMember.java'),
(297, 'ko', 'You can\'t dismiss party member when you are in Dimensional Rift.', '', 'RequestOustPartyMember.java'),
(297, 'tw', '無法在次元的裂痕驅逐隊員。', '', 'RequestOustPartyMember.java'),

(300, 'cn', '取消诉求。', '', 'RequestPetitionCancel.java'),
(300, 'en', ' has canceled a pending petition.', '', 'RequestPetitionCancel.java'),
(300, 'ko', ' has canceled a pending petition.', '', 'RequestPetitionCancel.java'),
(300, 'tw', '取消訴求。', '', 'RequestPetitionCancel.java'),

(301, 'cn', '诉求系统', '', 'RequestPetitionCancel.java'),
(301, 'en', 'Petition System', '', 'RequestPetitionCancel.java'),
(301, 'ko', '진정 시스템', '', 'RequestPetitionCancel.java'),
(301, 'tw', '訴求系統', '', 'RequestPetitionCancel.java'),

(304, 'cn', '请先移除之前的关联。', '', 'RequestPledgeSetAcademyMaster.java'),
(304, 'en', 'Remove previous connections first.', '', 'RequestPledgeSetAcademyMaster.java'),
(304, 'ko', 'Remove previous connections first.', '', 'RequestPledgeSetAcademyMaster.java'),
(304, 'tw', '請先移除之前的關聯。', '', 'RequestPledgeSetAcademyMaster.java'),

(307, 'cn', '无法变更学院成员的等级。', '', 'RequestPledgeSetMemberPowerGrade.java'),
(307, 'en', 'You cannot change academy member grade', '', 'RequestPledgeSetMemberPowerGrade.java'),
(307, 'ko', 'You cannot change academy member grade', '', 'RequestPledgeSetMemberPowerGrade.java'),
(307, 'tw', '無法變更學院成員的等級。', '', 'RequestPledgeSetMemberPowerGrade.java'),

(308, 'cn', '没有相关权限。', '', 'RequestPostAttachment.java'),
(308, 'en', 'Transactions are disabled for your Access Level', '', 'RequestPostAttachment.java'),
(308, 'ko', 'Transactions are disabled for your Access Level', '', 'RequestPostAttachment.java'),
(308, 'tw', '沒有相關權限。', '', 'RequestPostAttachment.java'),

(309, 'cn', '你购买的速度太快。', '', 'RequestPreviewItem.java'),
(309, 'en', 'You are buying too fast.', '', 'RequestPreviewItem.java'),
(309, 'ko', 'You are buying too fast.', '', 'RequestPreviewItem.java'),
(309, 'tw', '你購買的速度太快。', '', 'RequestPreviewItem.java'),

(310, 'cn', '你购买物品的速度太快。', '', 'RequestPrivateStoreBuy.java'),
(310, 'en', 'You are buying items too fast.', '', 'RequestPrivateStoreBuy.java'),
(310, 'ko', 'You are buying items too fast.', '', 'RequestPrivateStoreBuy.java'),
(310, 'tw', '你購買物品的速度太快。', '', 'RequestPrivateStoreBuy.java'),

(311, 'cn', '没有相关权限。', '', 'RequestPrivateStoreBuy.java'),
(311, 'en', 'Transactions are disabled for your Access Level', '', 'RequestPrivateStoreBuy.java'),
(311, 'ko', 'Transactions are disabled for your Access Level', '', 'RequestPrivateStoreBuy.java'),
(311, 'tw', '沒有相關權限。', '', 'RequestPrivateStoreBuy.java'),

(314, 'cn', '你贩卖物品的速度太快。', '', 'RequestPrivateStoreSell.java'),
(314, 'en', 'You selling items too fast', '', 'RequestPrivateStoreSell.java'),
(314, 'ko', 'You selling items too fast', '', 'RequestPrivateStoreSell.java'),
(314, 'tw', '你販賣物品的速度太快。', '', 'RequestPrivateStoreSell.java'),

(315, 'cn', '没有相关权限。', '', 'RequestPrivateStoreSell.java'),
(315, 'en', 'Transactions are disabled for your Access Level.', '', 'RequestPrivateStoreSell.java'),
(315, 'ko', 'Transactions are disabled for your Access Level.', '', 'RequestPrivateStoreSell.java'),
(315, 'tw', '沒有相關權限。', '', 'RequestPrivateStoreSell.java'),

(318, 'cn', '交易中无法制作。', '', 'RequestRecipeBookOpen.java'),
(318, 'en', 'Cannot use recipe book while trading', '', 'RequestRecipeBookOpen.java'),
(318, 'ko', 'Cannot use recipe book while trading', '', 'RequestRecipeBookOpen.java'),
(318, 'tw', '交易中無法製作。', '', 'RequestRecipeBookOpen.java'),

(321, 'cn', '交易中无法制作。', '', 'RequestRecipeItemMakeSelf.java'),
(321, 'en', 'You cannot create items while trading.', '', 'RequestRecipeItemMakeSelf.java'),
(321, 'ko', 'You cannot create items while trading.', '', 'RequestRecipeItemMakeSelf.java'),
(321, 'tw', '交易中無法製作。', '', 'RequestRecipeItemMakeSelf.java'),

(322, 'cn', '目前为工房模式。', '', 'RequestRecipeItemMakeSelf.java'),
(322, 'en', 'You are currently in Craft Mode.', '', 'RequestRecipeItemMakeSelf.java'),
(322, 'ko', 'You are currently in Craft Mode.', '', 'RequestRecipeItemMakeSelf.java'),
(322, 'tw', '目前為工房模式。', '', 'RequestRecipeItemMakeSelf.java'),

(325, 'cn', '交易中无法制作。', '', 'RequestRecipeShopMakeItem.java'),
(325, 'en', 'You cannot create items while trading.', '', 'RequestRecipeShopMakeItem.java'),
(325, 'ko', 'You cannot create items while trading.', '', 'RequestRecipeShopMakeItem.java'),
(325, 'tw', '交易中無法製作。', '', 'RequestRecipeShopMakeItem.java'),

(326, 'cn', '目前为工房模式。', '', 'RequestRecipeShopMakeItem.java'),
(326, 'en', 'You are currently in Craft Mode.', '', 'RequestRecipeShopMakeItem.java'),
(326, 'ko', 'You are currently in Craft Mode.', '', 'RequestRecipeShopMakeItem.java'),
(326, 'tw', '目前為工房模式。', '', 'RequestRecipeShopMakeItem.java'),

(329, 'cn', '你回购的速度太快。', '', 'RequestRefundItem.java'),
(329, 'en', 'You are using refund too fast.', '', 'RequestRefundItem.java'),
(329, 'ko', 'You are using refund too fast.', '', 'RequestRefundItem.java'),
(329, 'tw', '你回購的速度太快。', '', 'RequestRefundItem.java'),

(332, 'cn', '交易时无法重新开始。', '', 'RequestRestart.java'),
(332, 'en', 'Cannot restart while trading', '', 'RequestRestart.java'),
(332, 'ko', 'Cannot restart while trading', '', 'RequestRestart.java'),
(332, 'tw', '交易時無法重新開始。', '', 'RequestRestart.java'),

(333, 'cn', '无法在黑暗的祭典中重新开始。', '', 'RequestRestart.java'),
(333, 'en', 'You cannot restart while you are a participant in a festival.', '', 'RequestRestart.java'),
(333, 'ko', 'You cannot restart while you are a participant in a festival.', '', 'RequestRestart.java'),
(333, 'tw', '無法在黑暗的祭典中重新開始。', '', 'RequestRestart.java'),

(334, 'cn', '在下一场的黑暗祭典被移除。', '', 'RequestRestart.java'),
(334, 'en', ' has been removed from the upcoming festival.', '', 'RequestRestart.java'),
(334, 'ko', ' has been removed from the upcoming festival.', '', 'RequestRestart.java'),
(334, 'tw', '在下一場的黑暗祭典被移除。', '', 'RequestRestart.java'),

(337, 'cn', '', '你将在「;」秒后复活。', 'RequestRestartPoint.java'),
(337, 'en', '', 'You will be re-spawned in ; seconds', 'RequestRestartPoint.java'),
(337, 'ko', '', 'You will be re-spawned in ; seconds', 'RequestRestartPoint.java'),
(337, 'tw', '', '你將在「;」秒後復活。', 'RequestRestartPoint.java'),

(340, 'cn', '你购买的速度太快。', '', 'RequestSellItem.java'),
(340, 'en', 'You are buying too fast.', '', 'RequestSellItem.java'),
(340, 'ko', 'You are buying too fast.', '', 'RequestSellItem.java'),
(340, 'tw', '你購買的速度太快。', '', 'RequestSellItem.java'),

(342, 'cn', '没有相关权限。', '', 'RequestSendPost.java'),
(342, 'en', 'Transactions are disabled for your Access Level', '', 'RequestSendPost.java'),
(342, 'ko', 'Transactions are disabled for your Access Level', '', 'RequestSendPost.java'),
(342, 'tw', '沒有相關權限。', '', 'RequestSendPost.java'),

(343, 'cn', '档案转换错误。', '', 'RequestSetAllyCrest.java'),
(343, 'en', 'File transfer error.', '', 'RequestSetAllyCrest.java'),
(343, 'ko', '파일 전송 오류.', '', 'RequestSetAllyCrest.java'),
(343, 'tw', '檔案轉換錯誤。', '', 'RequestSetAllyCrest.java'),

(344, 'cn', '盟徽档案太大 (最大 192 bytes)。', '', 'RequestSetAllyCrest.java'),
(344, 'en', 'The crest file size was too big (max 192 bytes).', '', 'RequestSetAllyCrest.java'),
(344, 'ko', 'The crest file size was too big (max 192 bytes).', '', 'RequestSetAllyCrest.java'),
(344, 'tw', '盟徽檔案太大 (最大 192 bytes)。', '', 'RequestSetAllyCrest.java'),

(347, 'cn', '档案转换错误。', '', 'RequestSetPledgeCrest.java'),
(347, 'en', 'File transfer error.', '', 'RequestSetPledgeCrest.java'),
(347, 'ko', '파일 전송 오류.', '', 'RequestSetPledgeCrest.java'),
(347, 'tw', '檔案轉換錯誤。', '', 'RequestSetPledgeCrest.java'),

(348, 'cn', '盟徽档案太大 (最大 256 bytes)。', '', 'RequestSetPledgeCrest.java'),
(348, 'en', 'The clan crest file size was too big (max 256 bytes).', '', 'RequestSetPledgeCrest.java'),
(348, 'ko', '혈맹마크 파일의 크기가 큽니다 (최대 256 바이트).', '', 'RequestSetPledgeCrest.java'),
(348, 'tw', '盟徽檔案太大 (最大 256 bytes)。', '', 'RequestSetPledgeCrest.java'),

(351, 'cn', '并无与此血盟发生战争。', '', 'RequestStopPledgeWar.java'),
(351, 'en', 'You aren\'t at war with this clan.', '', 'RequestStopPledgeWar.java'),
(351, 'ko', 'You aren\'t at war with this clan.', '', 'RequestStopPledgeWar.java'),
(351, 'tw', '並無與此血盟發生戰爭。', '', 'RequestStopPledgeWar.java'),

(357, 'cn', '并无与此血盟发生战争。', '', 'RequestSurrenderPledgeWar.java'),
(357, 'en', 'You aren\'t at war with this clan.', '', 'RequestSurrenderPledgeWar.java'),
(357, 'ko', 'You aren\'t at war with this clan.', '', 'RequestSurrenderPledgeWar.java'),
(357, 'tw', '並無與此血盟發生戰爭。', '', 'RequestSurrenderPledgeWar.java'),

(363, 'cn', '无法在次元的裂痕离开队伍。', '', 'RequestWithDrawalParty.java'),
(363, 'en', 'You can\'t exit party when you are in Dimensional Rift.', '', 'RequestWithDrawalParty.java'),
(363, 'ko', 'You can\'t exit party when you are in Dimensional Rift.', '', 'RequestWithDrawalParty.java'),
(363, 'tw', '無法在次元的裂痕離開隊伍。', '', 'RequestWithDrawalParty.java'),

(366, 'cn', '监禁中禁止聊天。', '', 'Say2.java'),
(366, 'en', 'You can not chat with players outside of the jail.', '', 'Say2.java'),
(366, 'ko', 'You can not chat with players outside of the jail.', '', 'Say2.java'),
(366, 'tw', '監禁中禁止聊天。', '', 'Say2.java'),

(369, 'cn', '', '指令「;」并不存在！', 'SendBypassBuildCmd.java'),
(369, 'en', '', 'The command ; does not exists!', 'SendBypassBuildCmd.java'),
(369, 'ko', '', 'The command ; does not exists!', 'SendBypassBuildCmd.java'),
(369, 'tw', '', '指令「;」並不存在！', 'SendBypassBuildCmd.java'),

(370, 'cn', '没有相关权限。', '', 'SendBypassBuildCmd.java'),
(370, 'en', 'You don\'t have the access right to use this command!', '', 'SendBypassBuildCmd.java'),
(370, 'ko', 'You don\'t have the access right to use this command!', '', 'SendBypassBuildCmd.java'),
(370, 'tw', '沒有相關權限。', '', 'SendBypassBuildCmd.java'),

(373, 'cn', '你寄存物品的速度太快。', '', 'SendWareHouseDepositList.java'),
(373, 'en', 'You are depositing items too fast.', '', 'SendWareHouseDepositList.java'),
(373, 'ko', 'You are depositing items too fast.', '', 'SendWareHouseDepositList.java'),
(373, 'tw', '你寄存物品的速度太快。', '', 'SendWareHouseDepositList.java'),

(374, 'cn', '没有相关权限。', '', 'SendWareHouseDepositList.java'),
(374, 'en', 'Transactions are disabled for your Access Level', '', 'SendWareHouseDepositList.java'),
(374, 'ko', 'Transactions are disabled for your Access Level', '', 'SendWareHouseDepositList.java'),
(374, 'tw', '沒有相關權限。', '', 'SendWareHouseDepositList.java'),

(376, 'cn', '你取回物品的速度太快。', '', 'SendWareHouseWithDrawList.java'),
(376, 'en', 'You are withdrawing items too fast.', '', 'SendWareHouseWithDrawList.java'),
(376, 'ko', 'You are withdrawing items too fast.', '', 'SendWareHouseWithDrawList.java'),
(376, 'tw', '你取回物品的速度太快。', '', 'SendWareHouseWithDrawList.java'),

(377, 'cn', '没有相关权限。', '', 'SendWareHouseWithDrawList.java'),
(377, 'en', 'Transactions are disabled for your Access Level', '', 'SendWareHouseWithDrawList.java'),
(377, 'ko', 'Transactions are disabled for your Access Level', '', 'SendWareHouseWithDrawList.java'),
(377, 'tw', '沒有相關權限。', '', 'SendWareHouseWithDrawList.java'),

(379, 'cn', '你交易的速度太快。', '', 'TradeDone.java'),
(379, 'en', 'You are trading too fast.', '', 'TradeDone.java'),
(379, 'ko', 'You are trading too fast.', '', 'TradeDone.java'),
(379, 'tw', '你交易的速度太快。', '', 'TradeDone.java'),

(381, 'cn', '没有相关权限。', '', 'TradeRequest.java'),
(381, 'en', 'Transactions are disabled for your Access Level', '', 'TradeRequest.java'),
(381, 'ko', 'Transactions are disabled for your Access Level', '', 'TradeRequest.java'),
(381, 'tw', '沒有相關權限。', '', 'TradeRequest.java'),

(382, 'cn', '无法在奥林匹亚竞赛中交易。', '', 'TradeRequest.java'),
(382, 'en', 'You or your target cant request trade in Olympiad mode', '', 'TradeRequest.java'),
(382, 'ko', 'You or your target cant request trade in Olympiad mode', '', 'TradeRequest.java'),
(382, 'tw', '無法在奧林匹亞競賽中交易。', '', 'TradeRequest.java'),

(383, 'cn', '邪恶的玩家无法使用交易。', '', 'TradeRequest.java'),
(383, 'en', 'You cannot trade while you are in a chaotic state.', '', 'TradeRequest.java'),
(383, 'ko', 'You cannot trade while you are in a chaotic state.', '', 'TradeRequest.java'),
(383, 'tw', '邪惡的玩家無法使用交易。', '', 'TradeRequest.java'),

(384, 'cn', '监禁中进行交易。', '', 'TradeRequest.java'),
(384, 'en', 'You cannot trade in Jail.', '', 'TradeRequest.java'),
(384, 'ko', 'You cannot trade in Jail.', '', 'TradeRequest.java'),
(384, 'tw', '監禁中進行交易。', '', 'TradeRequest.java'),

(385, 'cn', '对方目前为交易拒绝状态。', '', 'TradeRequest.java'),
(385, 'en', 'Target is in trade refusal mode', '', 'TradeRequest.java'),
(385, 'ko', 'Target is in trade refusal mode', '', 'TradeRequest.java'),
(385, 'tw', '對方目前為交易拒絕狀態。', '', 'TradeRequest.java'),

(386, 'cn', '无法与邪恶的玩家进行交易。', '', 'TradeRequest.java'),
(386, 'en', 'You cannot request a trade while your target is in a chaotic state.', '', 'TradeRequest.java'),
(386, 'ko', 'You cannot request a trade while your target is in a chaotic state.', '', 'TradeRequest.java'),
(386, 'tw', '無法與邪惡的玩家進行交易。', '', 'TradeRequest.java'),

(387, 'cn', '不能使用该物品。', '', 'UseItem.java'),
(387, 'en', 'Cannot use this item.', '', 'UseItem.java'),
(387, 'ko', 'Cannot use this item.', '', 'UseItem.java'),
(387, 'tw', '不能使用該物品。', '', 'UseItem.java'),

(388, 'cn', '', '「;」出现在「;」的地区！', 'AutoSpawnHandler.java'),
(388, 'en', '', 'The ; has spawned near ;!', 'AutoSpawnHandler.java'),
(388, 'ko', '', 'The ; has spawned near ;!', 'AutoSpawnHandler.java'),
(388, 'tw', '', '「;」出現在「;」的地區！', 'AutoSpawnHandler.java'),

(391, 'cn', '已经在忽略清单。', '', 'BlockList.java'),
(391, 'en', 'Already in ignore list.', '', 'BlockList.java'),
(391, 'ko', 'Already in ignore list.', '', 'BlockList.java'),
(391, 'tw', '已經在忽略清單。', '', 'BlockList.java'),

(394, 'cn', '无法在骑乘状态捡取东西。', '', 'CursedWeapon.java'),
(394, 'en', 'You may not pick up this item while riding in this territory', '', 'CursedWeapon.java'),
(394, 'ko', 'You may not pick up this item while riding in this territory', '', 'CursedWeapon.java'),
(394, 'tw', '無法在騎乘狀態撿取東西。', '', 'CursedWeapon.java'),

(395, 'cn', '', '「;」尚未出现。', 'CursedWeapon.java'),
(395, 'en', '', '; isn\'t in the World.', 'CursedWeapon.java'),
(395, 'ko', '', '; isn\'t in the World.', 'CursedWeapon.java'),
(395, 'tw', '', '「;」尚未出現。', 'CursedWeapon.java'),

(398, 'cn', '', '火;水;风;大地;黑暗;神圣', 'Elementals.java'),
(398, 'en', '', 'Fire;Water;Wind;Earth;Dark;Holy', 'Elementals.java'),
(398, 'ko', '', 'Fire;Water;Wind;Earth;Dark;Holy', 'Elementals.java'),
(398, 'tw', '', '火;水;風;大地;黑暗;神聖', 'Elementals.java'),

(401, 'cn', '不能再创立学院了。', '', 'L2Clan.java'),
(401, 'en', 'You can\'t create any more sub-units of this type', '', 'L2Clan.java'),
(401, 'ko', 'You can\'t create any more sub-units of this type', '', 'L2Clan.java'),
(401, 'tw', '不能再創立學院了。', '', 'L2Clan.java'),

(402, 'cn', '', '创立「;」同盟。', 'L2Clan.java'),
(402, 'en', '', 'Alliance ; has been created.', 'L2Clan.java'),
(402, 'ko', '', 'Alliance ; has been created.', 'L2Clan.java'),
(402, 'tw', '', '創立「;」同盟。', 'L2Clan.java'),

(410, 'cn', '此类型技能还无法正常使用。', '', 'L2Skill.java'),
(410, 'en', 'Target type of skill is not currently handled', '', 'L2Skill.java'),
(410, 'ko', 'Target type of skill is not currently handled', '', 'L2Skill.java'),
(410, 'tw', '此類型技能還無法正常使用。', '', 'L2Skill.java'),

(413, 'cn', '没有任何玩家登记参与领地战！', '', 'TerritoryWard.java'),
(413, 'en', 'Non participants can\'t pickup Territory Wards!', '', 'TerritoryWard.java'),
(413, 'ko', 'Non participants can\'t pickup Territory Wards!', '', 'TerritoryWard.java'),
(413, 'tw', '沒有任何玩家登記參與領地戰！', '', 'TerritoryWard.java'),

(416, 'cn', '您已经离开投标。', '', 'Auction.java'),
(416, 'en', 'You have been out bidded', '', 'Auction.java'),
(416, 'ko', 'You have been out bidded', '', 'Auction.java'),
(416, 'tw', '您已經離開投標。', '', 'Auction.java'),

(417, 'cn', '恭喜您得到根据地！', '', 'Auction.java'),
(417, 'en', 'Congratulation you have won ClanHall!', '', 'Auction.java'),
(417, 'ko', 'Congratulation you have won ClanHall!', '', 'Auction.java'),
(417, 'tw', '恭喜您得到根據地！', '', 'Auction.java'),

(420, 'cn', '', '税率必须在 0 至 ; 之间。', 'Castle.java'),
(420, 'en', '', 'Tax value must be between 0 and ;.', 'Castle.java'),
(420, 'ko', '', 'Tax value must be between 0 and ;.', 'Castle.java'),
(420, 'tw', '', '稅率必須在 0 至 ; 之間。', 'Castle.java'),

(421, 'cn', '', '的税率更改为;%。', 'Castle.java'),
(421, 'en', '', ' castle tax changed to ;%.', 'Castle.java'),
(421, 'ko', '', ' castle tax changed to ;%.', 'Castle.java'),
(421, 'tw', '', '的稅率更改為;%。', 'Castle.java'),

(422, 'cn', '古鲁丁', '', 'Castle.java'),
(422, 'en', 'Gludio', '', 'Castle.java'),
(422, 'ko', '글루디오', '', 'Castle.java'),
(422, 'tw', '古魯丁', '', 'Castle.java'),

(423, 'cn', '狄恩', '', 'Castle.java'),
(423, 'en', 'Dion', '', 'Castle.java'),
(423, 'ko', '디온', '', 'Castle.java'),
(423, 'tw', '狄恩', '', 'Castle.java'),

(424, 'cn', '奇岩', '', 'Castle.java'),
(424, 'en', 'Giran', '', 'Castle.java'),
(424, 'ko', '기란', '', 'Castle.java'),
(424, 'tw', '奇岩', '', 'Castle.java'),

(425, 'cn', '欧瑞', '', 'Castle.java'),
(425, 'en', 'Oren', '', 'Castle.java'),
(425, 'ko', '오렌', '', 'Castle.java'),
(425, 'tw', '歐瑞', '', 'Castle.java'),

(426, 'cn', '亚丁', '', 'Castle.java'),
(426, 'en', 'Aden', '', 'Castle.java'),
(426, 'ko', '아덴', '', 'Castle.java'),
(426, 'tw', '亞丁', '', 'Castle.java'),

(427, 'cn', '因纳得立', '', 'Castle.java'),
(427, 'en', 'Innadril', '', 'Castle.java'),
(427, 'ko', '인나드릴', '', 'Castle.java'),
(427, 'tw', '因納得立', '', 'Castle.java'),

(428, 'cn', '高达特', '', 'Castle.java'),
(428, 'en', 'Goddard', '', 'Castle.java'),
(428, 'ko', '고다드', '', 'Castle.java'),
(428, 'tw', '高達特', '', 'Castle.java'),

(429, 'cn', '鲁因', '', 'Castle.java'),
(429, 'en', 'Rune', '', 'Castle.java'),
(429, 'ko', '루운', '', 'Castle.java'),
(429, 'tw', '魯因', '', 'Castle.java'),

(430, 'cn', '修加特', '', 'Castle.java'),
(430, 'en', 'Schuttgart', '', 'Castle.java'),
(430, 'ko', '슈트가르트', '', 'Castle.java'),
(430, 'tw', '修加特', '', 'Castle.java'),

(431, 'cn', '无', '', 'Castle.java'),
(431, 'en', 'None', '', 'Castle.java'),
(431, 'ko', '없음', '', 'Castle.java'),
(431, 'tw', '無', '', 'Castle.java'),

(434, 'cn', '决斗已取消，因位决斗者正在进行 PvP 竞赛。', '', 'Duel.java'),
(434, 'en', 'The duel was canceled because a duelist engaged in PvP combat.', '', 'Duel.java'),
(434, 'ko', 'The duel was canceled because a duelist engaged in PvP combat.', '', 'Duel.java'),
(434, 'tw', '決鬥已取消，因位決鬥者正在進行 PvP 競賽。', '', 'Duel.java'),

(441, 'cn', '', '等级「;」以上的血盟才可以登记要塞战。', 'FortSiege.java'),
(441, 'en', '', 'Only clans with Level ; and higher may register for a fort siege.', 'FortSiege.java'),
(441, 'ko', '', 'Only clans with Level ; and higher may register for a fort siege.', 'FortSiege.java'),
(441, 'tw', '', '等級「;」以上的血盟才可以登記要塞戰。', 'FortSiege.java'),

(442, 'cn', '登记需要 250,000 金币。', '', 'FortSiege.java'),
(442, 'en', 'You need 250,000 adena to register', '', 'FortSiege.java'),
(442, 'ko', '등록할려면 250,000 아데나가 필요합니다', '', 'FortSiege.java'),
(442, 'tw', '登記需要 250,000 金幣。', '', 'FortSiege.java'),

(443, 'cn', '', '对抗;获得胜利。', 'Hero.java'),
(443, 'en', '', '; was defeated', 'Hero.java'),
(443, 'ko', '', '; was defeated', 'Hero.java'),
(443, 'tw', '', '對抗;獲得勝利。', 'Hero.java'),

(444, 'cn', '取得英雄资格。', '', 'Hero.java'),
(444, 'en', 'Gained Hero status', '', 'Hero.java'),
(444, 'ko', 'Gained Hero status', '', 'Hero.java'),
(444, 'tw', '取得英雄資格。', '', 'Hero.java'),

(445, 'cn', '离开即时地区。', '', 'Instance.java'),
(445, 'en', 'You were removed from the instance', '', 'Instance.java'),
(445, 'ko', '당신은 인스턴스에서 제거되었습니다', '', 'Instance.java'),
(445, 'tw', '離開即時地區。', '', 'Instance.java'),

(446, 'cn', '', '注意; 秒后挑战时间结束。', 'Instance.java'),
(446, 'en', '', 'Notice; seconds left.', 'Instance.java'),
(446, 'ko', '', '주의; 초 남았습니다.', 'Instance.java'),
(446, 'tw', '', '注意; 秒後挑戰時間結束。', 'Instance.java'),

(447, 'cn', '', '参加;攻城战，领导盟友走向胜利。', 'Hero.java'),
(447, 'en', '', '; Castle was successfuly taken', 'Hero.java'),
(447, 'ko', '', '; Castle was successfuly taken', 'Hero.java'),
(447, 'tw', '', '參加;攻城戰，領導盟友走向勝利。', 'Hero.java'),

(448, 'cn', '胜', '', 'Hero.java'),
(448, 'en', 'victory', '', 'Hero.java'),
(448, 'ko', '승리', '', 'Hero.java'),
(448, 'tw', '勝', '', 'Hero.java'),

(450, 'cn', '上一页', '', 'Hero.java'),
(450, 'en', 'Prev', '', 'Hero.java'),
(450, 'ko', '이전', '', 'Hero.java'),
(450, 'tw', '上一頁', '', 'Hero.java'),

(451, 'cn', '下一页', '', 'Hero.java'),
(451, 'en', 'Next', '', 'Hero.java'),
(451, 'ko', '다음', '', 'Hero.java'),
(451, 'tw', '下一頁', '', 'Hero.java'),

(452, 'cn', '败', '', 'Hero.java'),
(452, 'en', 'loss', '', 'Hero.java'),
(452, 'ko', '손실', '', 'Hero.java'),
(452, 'tw', '敗', '', 'Hero.java'),

(453, 'cn', '和', '', 'Hero.java'),
(453, 'en', 'draw', '', 'Hero.java'),
(453, 'ko', '무승부', '', 'Hero.java'),
(453, 'tw', '和', '', 'Hero.java'),

(454, 'cn', '', '无法登记为守城方，因为「;」是属于 NPC 的。', 'Siege.java'),
(454, 'en', '', 'You cannot register as a defender because ; is owned by NPC.', 'Siege.java'),
(454, 'ko', '', 'You cannot register as a defender because ; is owned by NPC.', 'Siege.java'),
(454, 'tw', '', '無法登記為守城方，因為「;」是屬於 NPC 的。', 'Siege.java'),

(455, 'cn', '时', '', 'Hero.java'),
(455, 'en', ':xx', '', 'Hero.java'),
(455, 'ko', ':xx', '', 'Hero.java'),
(455, 'tw', '時', '', 'Hero.java'),

(456, 'cn', '职业类别', '', 'Hero.java'),
(456, 'en', 'cls', '', 'Hero.java'),
(456, 'ko', 'cls', '', 'Hero.java'),
(456, 'tw', '職業類別', '', 'Hero.java'),

(457, 'cn', 'TvT 活动：没有任何团队参加比赛，因此活动结束！', '', 'TvTEvent.java'),
(457, 'en', 'TvT Event: Event has ended. No team won due to inactivity!', '', 'TvTEvent.java'),
(457, 'ko', 'TvT 이벤트: 참여한 인원이 없어서 이벤트가 종료되었습니다!', '', 'TvTEvent.java'),
(457, 'tw', 'TvT 活動：沒有任何團隊參加比賽，因此活動結束！', '', 'TvTEvent.java'),

(458, 'cn', 'TvT 活动：活动结束，有两个团队平手！', '', 'TvTEvent.java'),
(458, 'en', 'TvT Event: Event has ended, both teams have tied.', '', 'TvTEvent.java'),
(458, 'ko', 'TvT 이벤트: Event has ended, both teams have tied.', '', 'TvTEvent.java'),
(458, 'tw', 'TvT 活動：活動結束，有兩個團隊平手！', '', 'TvTEvent.java'),

(459, 'cn', 'TvT 活动：当有两个团队平手时，活动就会结束。', '', 'TvTEvent.java'),
(459, 'en', 'TvT Event: Event has ended with both teams tying.', '', 'TvTEvent.java'),
(459, 'ko', 'TvT 이벤트: Event has ended with both teams tying.', '', 'TvTEvent.java'),
(459, 'tw', 'TvT 活動：當有兩個團隊平手時，活動就會結束。', '', 'TvTEvent.java'),

(460, 'cn', '', 'TvT 活动：活动结束。「;」团队获得「;」点分数。', 'TvTEvent.java'),
(460, 'en', '', 'TvT Event: Event finish. Team ; won with ; kills.', 'TvTEvent.java'),
(460, 'ko', '', 'TvT 이벤트: 이벤트 완료. 팀 ; won with ; 킬수.', 'TvTEvent.java'),
(460, 'tw', '', 'TvT 活動：活動結束。「;」團隊獲得「;」點分數。', 'TvTEvent.java'),

(461, 'cn', '', '击倒;！', 'TvTEvent.java'),
(461, 'en', '', 'I have killed ;!', 'TvTEvent.java'),
(461, 'ko', '', '제가 죽였습니다 ;!', 'TvTEvent.java'),
(461, 'tw', '', '擊倒;！', 'TvTEvent.java'),

(462, 'cn', '不限职业', '', 'Hero.java'),
(462, 'en', 'non-cls', '', 'Hero.java'),
(462, 'ko', 'non-cls', '', 'Hero.java'),
(462, 'tw', '不限職業', '', 'Hero.java'),

(464, 'cn', 'TvT 活动：活动已取消。', '', 'TvTManager.java'),
(464, 'en', 'TvT Event: Event was cancelled.', '', 'TvTManager.java'),
(464, 'ko', 'TvT 이벤트: 이벤트가 취소되었습니다.', '', 'TvTManager.java'),
(464, 'tw', 'TvT 活動：活動已取消。', '', 'TvTManager.java'),

(465, 'cn', '', 'TvT 活动：开放登记 ; 分钟。', 'TvTManager.java'),
(465, 'en', '', 'TvT Event: Registration opened for ; minute(s).', 'TvTManager.java'),
(465, 'ko', '', 'TvT 이벤트: Registration opened for ; minute(s).', 'TvTManager.java'),
(465, 'tw', '', 'TvT 活动：開放登記 ; 分鐘。', 'TvTManager.java'),

(466, 'cn', 'TvT 活动：因为参赛者人数不足，所以活动取消。', '', 'TvTManager.java'),
(466, 'en', 'TvT Event: Event cancelled due to lack of Participation.', '', 'TvTManager.java'),
(466, 'ko', 'TvT 이벤트: Event cancelled due to lack of Participation.', '', 'TvTManager.java'),
(466, 'tw', 'TvT 活動：因為參賽者人數不足，所以活動取消。', '', 'TvTManager.java'),

(467, 'cn', '', 'TvT 活动：; 秒后将传送到比赛地区。', 'TvTManager.java'),
(467, 'en', '', 'TvT Event: Teleporting participants to an arena in ; second(s).', 'TvTManager.java'),
(467, 'ko', '', 'TvT 이벤트: Teleporting participants to an arena in ; second(s).', 'TvTManager.java'),
(467, 'tw', '', 'TvT 活動：; 秒後將傳送到比賽地區。', 'TvTManager.java'),

(468, 'cn', '', 'TvT 活动：; 秒后将传送回到登记地区。', 'TvTManager.java'),
(468, 'en', '', 'TvT Event: Teleporting back to the registration npc in ; second(s).', 'TvTManager.java'),
(468, 'ko', '', 'TvT 이벤트: Teleporting back to the registration npc in ; second(s).', 'TvTManager.java'),
(468, 'tw', '', 'TvT 活動：; 秒後將傳送回到登記地區。', 'TvTManager.java'),

(469, 'cn', 'TvT 活动：', '', 'TvTManager.java'),
(469, 'en', 'TvT Event: ', '', 'TvTManager.java'),
(469, 'ko', 'TvT 이벤트: ', '', 'TvTManager.java'),
(469, 'tw', 'TvT 活動：', '', 'TvTManager.java'),

(470, 'cn', ' 小时后，登记时间结束！', '', 'TvTManager.java'),
(470, 'en', ' hour(s) until registration is closed!', '', 'TvTManager.java'),
(470, 'ko', ' hour(s) until registration is closed!', '', 'TvTManager.java'),
(470, 'tw', ' 小時後，登記時間結束！', '', 'TvTManager.java'),

(471, 'cn', ' 小时后，活动结束！', '', 'TvTManager.java'),
(471, 'en', ' hour(s) until event is finished!', '', 'TvTManager.java'),
(471, 'ko', ' hour(s) until event is finished!', '', 'TvTManager.java'),
(471, 'tw', ' 小時後，活動結束！', '', 'TvTManager.java'),

(472, 'cn', ' 分钟后，登记时间结束！', '', 'TvTManager.java'),
(472, 'en', ' minute(s) until registration is closed!', '', 'TvTManager.java'),
(472, 'ko', ' minute(s) until registration is closed!', '', 'TvTManager.java'),
(472, 'tw', ' 分鐘後，登記時間結束！', '', 'TvTManager.java'),

(473, 'cn', ' 分钟后，活动结束！', '', 'TvTManager.java'),
(473, 'en', ' minute(s) until the event is finished!', '', 'TvTManager.java'),
(473, 'ko', ' minute(s) until the event is finished!', '', 'TvTManager.java'),
(473, 'tw', ' 分鐘後，活動結束！', '', 'TvTManager.java'),

(474, 'cn', ' 秒后，登记时间结束！', '', 'TvTManager.java'),
(474, 'en', ' second(s) until registration is closed!', '', 'TvTManager.java'),
(474, 'ko', ' second(s) until registration is closed!', '', 'TvTManager.java'),
(474, 'tw', ' 秒後，登記時間結束！', '', 'TvTManager.java'),

(475, 'cn', ' 秒后，活动结束！', '', 'TvTManager.java'),
(475, 'en', ' second(s) until the event is finished!', '', 'TvTManager.java'),
(475, 'ko', ' second(s) until the event is finished!', '', 'TvTManager.java'),
(475, 'tw', ' 秒後，活動結束！', '', 'TvTManager.java'),

(494, 'cn', '脚本错误：', '', 'Quest.java'),
(494, 'en', 'Script error', '', 'Quest.java'),
(494, 'ko', '스크립트 오류', '', 'Quest.java'),
(494, 'tw', '腳本錯誤：', '', 'Quest.java'),

(497, 'cn', '', '文件：; 不存在，請通知 GM 修复。', 'QuestState.java'),
(497, 'en', '', 'File ; not found or file is empty.', 'QuestState.java'),
(497, 'ko', '', '파일 ; 파일이 비어 있거나, 찾을 수 없습니다.', 'QuestState.java'),
(497, 'tw', '', '檔案：; 不存在，請通知 GM 修復。', 'QuestState.java'),

(504, 'cn', '进入了临时地区！', '', 'L2DynamicZone.java'),
(504, 'en', 'You have entered a temporary zone!', '', 'L2DynamicZone.java'),
(504, 'ko', 'You have entered a temporary zone!', '', 'L2DynamicZone.java'),
(504, 'tw', '進入了臨時地區！', '', 'L2DynamicZone.java'),

(505, 'cn', '离开了临时地区！', '', 'L2DynamicZone.java'),
(505, 'en', 'You have left a temporary zone!', '', 'L2DynamicZone.java'),
(505, 'ko', 'You have left a temporary zone!', '', 'L2DynamicZone.java'),
(505, 'tw', '離開了臨時地區！', '', 'L2DynamicZone.java'),

(508, 'cn', '你必须等到监禁时间结束，才能离开这里。', '', 'L2JailZone.java'),
(508, 'en', 'You cannot cheat your way out of here. You must wait until your jail time is over.', '', 'L2JailZone.java'),
(508, 'ko', 'You cannot cheat your way out of here. You must wait until your jail time is over.', '', 'L2JailZone.java'),
(508, 'tw', '你必須等到監禁時間結束，才能離開這裡。', '', 'L2JailZone.java'),

(511, 'cn', '你得到优先权！', '', 'L2Attackable.java'),
(511, 'en', 'You have looting rights!', '', 'L2Attackable.java'),
(511, 'ko', 'You have looting rights!', '', 'L2Attackable.java'),
(511, 'tw', '你得到優先權！', '', 'L2Attackable.java'),

(516, 'cn', '传送至等候室。', '', 'L2Character.java'),
(516, 'en', 'You have been sent to the waiting room.', '', 'L2Character.java'),
(516, 'ko', 'You have been sent to the waiting room.', '', 'L2Character.java'),
(516, 'tw', '傳送至等候室。', '', 'L2Character.java'),

(519, 'cn', '宠物出租', '', 'L2Npc.java'),
(519, 'en', 'Rent Pet', '', 'L2Npc.java'),
(519, 'ko', '펫 대여', '', 'L2Npc.java'),
(519, 'tw', '寵物出租', '', 'L2Npc.java'),

(520, 'cn', '增加NPC：', '', 'L2Npc.java'),
(520, 'en', 'Added NPC: ', '', 'L2Npc.java'),
(520, 'ko', '추가 NPC: ', '', 'L2Npc.java'),
(520, 'tw', '增加NPC：', '', 'L2Npc.java'),

(521, 'cn', '我无法教你任何东西。', '', 'L2Npc.java'),
(521, 'en', 'I cannot teach you any skills.', '', 'L2Npc.java'),
(521, 'ko', 'I cannot teach you any skills.', '', 'L2Npc.java'),
(521, 'tw', '我無法教你任何東西。', '', 'L2Npc.java'),

(522, 'cn', '你必须寻找你所属职业的教师。', '', 'L2Npc.java'),
(522, 'en', ' You must find your current class teachers.', '', 'L2Npc.java'),
(522, 'ko', ' You must find your current class teachers.', '', 'L2Npc.java'),
(522, 'tw', '你必須尋找你所屬職業的教師。', '', 'L2Npc.java'),

(525, 'cn', '你的位置发生错误，请回报给管理者！', '', 'PcPosition.java'),
(525, 'en', 'Error with your coords, Please ask a GM for help!', '', 'PcPosition.java'),
(525, 'ko', 'Error with your coords, Please ask a GM for help!', '', 'PcPosition.java'),
(525, 'tw', '你的位置發生錯誤，請回報給管理者！', '', 'PcPosition.java'),

(534, 'cn', '不能参加拍卖。', '', 'L2AuctioneerInstance.java'),
(534, 'en', 'Wrong conditions.', '', 'L2AuctioneerInstance.java'),
(534, 'ko', 'Wrong conditions.', '', 'L2AuctioneerInstance.java'),
(534, 'tw', '不能參加拍賣。', '', 'L2AuctioneerInstance.java'),

(535, 'cn', '投标错误！', '', 'L2AuctioneerInstance.java'),
(535, 'en', 'Invalid bid!', '', 'L2AuctioneerInstance.java'),
(535, 'ko', '잘못된 입찰!', '', 'L2AuctioneerInstance.java'),
(535, 'tw', '投標錯誤！', '', 'L2AuctioneerInstance.java'),

(536, 'cn', '拍卖期间错误！', '', 'L2AuctioneerInstance.java'),
(536, 'en', 'Invalid auction duration!', '', 'L2AuctioneerInstance.java'),
(536, 'ko', 'Invalid auction duration!', '', 'L2AuctioneerInstance.java'),
(536, 'tw', '拍賣期間錯誤！', '', 'L2AuctioneerInstance.java'),

(537, 'cn', '拍卖错误！', '', 'L2AuctioneerInstance.java'),
(537, 'en', 'Invalid auction!', '', 'L2AuctioneerInstance.java'),
(537, 'ko', 'Invalid auction!', '', 'L2AuctioneerInstance.java'),
(537, 'tw', '拍賣錯誤！', '', 'L2AuctioneerInstance.java'),

(538, 'cn', '', ' 时 ; 分。', 'L2AuctioneerInstance.java'),
(538, 'en', '', ' hours ; minutes', 'L2AuctioneerInstance.java'),
(538, 'ko', '', ' 시간 ; 분', 'L2AuctioneerInstance.java'),
(538, 'tw', '', ' 時 ; 分。', 'L2AuctioneerInstance.java'),

(539, 'cn', '第', '页', 'L2AuctioneerInstance.java'),
(539, 'en', 'Page ', ' ', 'L2AuctioneerInstance.java'),
(539, 'ko', '페이지 ', ' ', 'L2AuctioneerInstance.java'),
(539, 'tw', '第', '頁', 'L2AuctioneerInstance.java'),

(540, 'cn', '你的拍卖已取消。', '', 'L2AuctioneerInstance.java'),
(540, 'en', 'Your auction has been canceled', '', 'L2AuctioneerInstance.java'),
(540, 'ko', 'Your auction has been canceled', '', 'L2AuctioneerInstance.java'),
(540, 'tw', '你的拍賣已取消。', '', 'L2AuctioneerInstance.java'),

(543, 'cn', '竞争准备中', '', 'L2CastleChamberlainInstance.java'),
(543, 'en', 'Quest Event Initialization', '', 'L2CastleChamberlainInstance.java'),
(543, 'ko', '퀘스트 이벤트 초기화', '', 'L2CastleChamberlainInstance.java'),
(543, 'tw', '競爭準備中', '', 'L2CastleChamberlainInstance.java'),

(544, 'cn', '竞争期间', '', 'L2CastleChamberlainInstance.java'),
(544, 'en', 'Competition (Quest Event)', '', 'L2CastleChamberlainInstance.java'),
(544, 'ko', 'Competition (Quest Event)', '', 'L2CastleChamberlainInstance.java'),
(544, 'tw', '競爭期間', '', 'L2CastleChamberlainInstance.java'),

(545, 'cn', '结果统计中', '', 'L2CastleChamberlainInstance.java'),
(545, 'en', 'Quest Event Results', '', 'L2CastleChamberlainInstance.java'),
(545, 'ko', '퀘스트 이벤트 결과', '', 'L2CastleChamberlainInstance.java'),
(545, 'tw', '結果統計中', '', 'L2CastleChamberlainInstance.java'),

(546, 'cn', '封印有效期间', '', 'L2CastleChamberlainInstance.java'),
(546, 'en', 'Seal Validation', '', 'L2CastleChamberlainInstance.java'),
(546, 'ko', '봉인 유효기간', '', 'L2CastleChamberlainInstance.java'),
(546, 'tw', '封印有效期間', '', 'L2CastleChamberlainInstance.java'),

(547, 'cn', '不归属任何阵营', '', 'L2CastleChamberlainInstance.java'),
(547, 'en', 'Not in Possession', '', 'L2CastleChamberlainInstance.java'),
(547, 'ko', 'Not in Possession', '', 'L2CastleChamberlainInstance.java'),
(547, 'tw', '不歸屬任何陣營', '', 'L2CastleChamberlainInstance.java'),

(548, 'cn', '黎明的君主们', '', 'L2CastleChamberlainInstance.java'),
(548, 'en', 'Lords of Dawn', '', 'L2CastleChamberlainInstance.java'),
(548, 'ko', '여명의 사제', '', 'L2CastleChamberlainInstance.java'),
(548, 'tw', '黎明的君主們', '', 'L2CastleChamberlainInstance.java'),

(549, 'cn', '黄昏的革命军', '', 'L2CastleChamberlainInstance.java'),
(549, 'en', 'Revolutionaries of Dusk', '', 'L2CastleChamberlainInstance.java'),
(549, 'ko', '황혼의 사제', '', 'L2CastleChamberlainInstance.java'),
(549, 'tw', '黃昏的革命軍', '', 'L2CastleChamberlainInstance.java'),

(550, 'cn', '目前税率：', '', 'L2CastleChamberlainInstance.java'),
(550, 'en', 'Current tax rate: ', '', 'L2CastleChamberlainInstance.java'),
(550, 'ko', 'Current tax rate: ', '', 'L2CastleChamberlainInstance.java'),
(550, 'tw', '目前稅率：', '', 'L2CastleChamberlainInstance.java'),

(551, 'cn', '调整税率：　', '', 'L2CastleChamberlainInstance.java'),
(551, 'en', 'Change tax rate to:', '', 'L2CastleChamberlainInstance.java'),
(551, 'ko', 'Change tax rate to:', '', 'L2CastleChamberlainInstance.java'),
(551, 'tw', '調整稅率：　', '', 'L2CastleChamberlainInstance.java'),

(552, 'cn', '调整', '', 'L2CastleChamberlainInstance.java'),
(552, 'en', 'Adjust', '', 'L2CastleChamberlainInstance.java'),
(552, 'ko', '조절', '', 'L2CastleChamberlainInstance.java'),
(552, 'tw', '調整', '', 'L2CastleChamberlainInstance.java'),

(553, 'cn', '此城堡并无主人，因此无法更改。', '', 'L2CastleChamberlainInstance.java'),
(553, 'en', 'This castle have no owner, you cannot change configuration', '', 'L2CastleChamberlainInstance.java'),
(553, 'ko', 'This castle have no owner, you cannot change configuration', '', 'L2CastleChamberlainInstance.java'),
(553, 'tw', '此城堡並無主人，因此無法更改。', '', 'L2CastleChamberlainInstance.java'),

(554, 'cn', '金币', '', 'L2CastleChamberlainInstance.java'),
(554, 'en', 'Adena', '', 'L2CastleChamberlainInstance.java'),
(554, 'ko', '아데나', '', 'L2CastleChamberlainInstance.java'),
(554, 'tw', '金幣', '', 'L2CastleChamberlainInstance.java'),

(555, 'cn', ' 天', '', 'L2CastleChamberlainInstance.java'),
(555, 'en', ' Day', '', 'L2CastleChamberlainInstance.java'),
(555, 'ko', ' 일', '', 'L2CastleChamberlainInstance.java'),
(555, 'tw', ' 天', '', 'L2CastleChamberlainInstance.java'),

(556, 'cn', '壁炉（HP 恢复设备）', '', 'L2CastleChamberlainInstance.java'),
(556, 'en', 'Fireplace (HP Recovery Device)', '', 'L2CastleChamberlainInstance.java'),
(556, 'ko', 'Fireplace (HP Recovery Device)', '', 'L2CastleChamberlainInstance.java'),
(556, 'tw', '壁爐（HP 恢復設備）', '', 'L2CastleChamberlainInstance.java'),

(557, 'cn', '城堡的血盟成员恢复 HP 时多增加 ', '', 'L2CastleChamberlainInstance.java'),
(557, 'en', 'Provides additional HP recovery for clan members in the castle.', '', 'L2CastleChamberlainInstance.java'),
(557, 'ko', 'Provides additional HP recovery for clan members in the castle.', '', 'L2CastleChamberlainInstance.java'),
(557, 'tw', '城堡的血盟成員恢復 HP 時多增加 ', '', 'L2CastleChamberlainInstance.java'),

(558, 'cn', '地毯（MP 恢复设备）', '', 'L2CastleChamberlainInstance.java'),
(558, 'en', 'Carpet (MP Recovery)', '', 'L2CastleChamberlainInstance.java'),
(558, 'ko', 'Carpet (MP 회복)', '', 'L2CastleChamberlainInstance.java'),
(558, 'tw', '地毯（MP 恢復設備）', '', 'L2CastleChamberlainInstance.java'),

(559, 'cn', '城堡的血盟成员恢复 MP 时多增加 ', '', 'L2CastleChamberlainInstance.java'),
(559, 'en', 'Provides additional MP recovery for clan members in the castle.', '', 'L2CastleChamberlainInstance.java'),
(559, 'ko', 'Provides additional MP recovery for clan members in the castle.', '', 'L2CastleChamberlainInstance.java'),
(559, 'tw', '城堡的血盟成員恢復 MP 時多增加 ', '', 'L2CastleChamberlainInstance.java'),

(560, 'cn', '吊灯（EXP 恢复设备）', '', 'L2CastleChamberlainInstance.java'),
(560, 'en', 'Chandelier (EXP Recovery Device)', '', 'L2CastleChamberlainInstance.java'),
(560, 'ko', 'Chandelier (EXP Recovery Device)', '', 'L2CastleChamberlainInstance.java'),
(560, 'tw', '吊燈（EXP 恢復設備）', '', 'L2CastleChamberlainInstance.java'),

(561, 'cn', '城堡的血盟成员复活时 EXP 多增加 ', '', 'L2CastleChamberlainInstance.java'),
(561, 'en', 'Restores the Exp of any clan member who is resurrected in the castle.', '', 'L2CastleChamberlainInstance.java'),
(561, 'ko', 'Restores the Exp of any clan member who is resurrected in the castle.', '', 'L2CastleChamberlainInstance.java'),
(561, 'tw', '城堡的血盟成員復活時 EXP 多增加 ', '', 'L2CastleChamberlainInstance.java'),

(562, 'cn', '收取下一次的费用：', '', 'L2CastleChamberlainInstance.java'),
(562, 'en', 'Withdraw the fee for the next time at ', '', 'L2CastleChamberlainInstance.java'),
(562, 'ko', 'Withdraw the fee for the next time at ', '', 'L2CastleChamberlainInstance.java'),
(562, 'tw', '收取下一次的費用：', '', 'L2CastleChamberlainInstance.java'),

(563, 'cn', '取消', '', 'L2CastleChamberlainInstance.java'),
(563, 'en', 'Deactivate', '', 'L2CastleChamberlainInstance.java'),
(563, 'ko', 'Deactivate', '', 'L2CastleChamberlainInstance.java'),
(563, 'tw', '取消', '', 'L2CastleChamberlainInstance.java'),

(564, 'cn', '无', '', 'L2CastleChamberlainInstance.java'),
(564, 'en', 'none', '', 'L2CastleChamberlainInstance.java'),
(564, 'ko', 'none', '', 'L2CastleChamberlainInstance.java'),
(564, 'tw', '無', '', 'L2CastleChamberlainInstance.java'),

(565, 'cn', '佩章（辅助魔法）', '', 'L2CastleChamberlainInstance.java'),
(565, 'en', 'Insignia (Supplementary Magic)', '', 'L2CastleChamberlainInstance.java'),
(565, 'ko', 'Insignia (Supplementary Magic)', '', 'L2CastleChamberlainInstance.java'),
(565, 'tw', '佩章（輔助魔法）', '', 'L2CastleChamberlainInstance.java'),

(566, 'cn', '施展辅助魔法', '', 'L2CastleChamberlainInstance.java'),
(566, 'en', 'Enables the use of supplementary magic.', '', 'L2CastleChamberlainInstance.java'),
(566, 'ko', 'Enables the use of supplementary magic.', '', 'L2CastleChamberlainInstance.java'),
(566, 'tw', '施展輔助魔法', '', 'L2CastleChamberlainInstance.java'),

(567, 'cn', '镜子（传送设备）', '', 'L2CastleChamberlainInstance.java'),
(567, 'en', 'Mirror (Teleportation Device)', '', 'L2CastleChamberlainInstance.java'),
(567, 'ko', 'Mirror (Teleportation Device)', '', 'L2CastleChamberlainInstance.java'),
(567, 'tw', '鏡子（傳送設備）', '', 'L2CastleChamberlainInstance.java'),

(568, 'cn', '传送城堡的血盟成员到', '', 'L2CastleChamberlainInstance.java'),
(568, 'en', 'Teleports clan members in a castle to the target ', '', 'L2CastleChamberlainInstance.java'),
(568, 'ko', 'Teleports clan members in a castle to the target ', '', 'L2CastleChamberlainInstance.java'),
(568, 'tw', '傳送城堡的血盟成員到', '', 'L2CastleChamberlainInstance.java'),

(569, 'cn', '阶段', '', 'L2CastleChamberlainInstance.java'),
(569, 'en', 'Stage ', '', 'L2CastleChamberlainInstance.java'),
(569, 'ko', '단계 ', '', 'L2CastleChamberlainInstance.java'),
(569, 'tw', '階段', '', 'L2CastleChamberlainInstance.java'),

(570, 'cn', '的位置', '', 'L2CastleChamberlainInstance.java'),
(570, 'en', ' staging area', '', 'L2CastleChamberlainInstance.java'),
(570, 'ko', ' staging area', '', 'L2CastleChamberlainInstance.java'),
(570, 'tw', '的位置', '', 'L2CastleChamberlainInstance.java'),

(571, 'cn', '等级', '', 'L2CastleChamberlainInstance.java'),
(571, 'en', 'Level ', '', 'L2CastleChamberlainInstance.java'),
(571, 'ko', '레벨 ', '', 'L2CastleChamberlainInstance.java'),
(571, 'tw', '等級', '', 'L2CastleChamberlainInstance.java'),

(572, 'cn', '技能等级错误，请回报给管理者！', '', 'L2CastleChamberlainInstance.java'),
(572, 'en', 'Invalid skill level, contact your admin!', '', 'L2CastleChamberlainInstance.java'),
(572, 'ko', '잘못된 스킬 레벨, 지엠에게 문의!', '', 'L2CastleChamberlainInstance.java'),
(572, 'tw', '技能等級錯誤，請回報給管理者！', '', 'L2CastleChamberlainInstance.java'),

(575, 'cn', '无法传送到盟主现在的位置。', '', 'L2CastleMagicianInstance.java'),
(575, 'en', 'Couldn\'t teleport to clan leader. The requirements was not meet.', '', 'L2CastleMagicianInstance.java'),
(575, 'ko', 'Couldn\'t teleport to clan leader. The requirements was not meet.', '', 'L2CastleMagicianInstance.java'),
(575, 'tw', '無法傳送到盟主現在的位置。', '', 'L2CastleMagicianInstance.java'),

(576, 'cn', '你目前正在参加 TvT 活动，因此无法传送。', '', 'L2CastleMagicianInstance.java'),
(576, 'en', 'You on TvT Event, teleporting disabled.', '', 'L2CastleMagicianInstance.java'),
(576, 'ko', 'You on TvT Event, teleporting disabled.', '', 'L2CastleMagicianInstance.java'),
(576, 'tw', '你目前正在參加 TvT 活動，因此無法傳送。', '', 'L2CastleMagicianInstance.java'),

(582, 'cn', '这是陷阱！', '', 'L2ChestInstance.java'),
(582, 'en', 'There was a trap!', '', 'L2ChestInstance.java'),
(582, 'ko', 'There was a trap!', '', 'L2ChestInstance.java'),
(582, 'tw', '這是陷阱！', '', 'L2ChestInstance.java'),

(585, 'cn', '此根据地并无主人，因此无法更改。', '', 'L2ClanHallManagerInstance.java'),
(585, 'en', 'This clan Hall have no owner, you cannot change configuration', '', 'L2ClanHallManagerInstance.java'),
(585, 'ko', 'This clan Hall have no owner, you cannot change configuration', '', 'L2ClanHallManagerInstance.java'),
(585, 'tw', '此根據地並無主人，因此無法更改。', '', 'L2ClanHallManagerInstance.java'),

(586, 'cn', '金币', '', 'L2ClanHallManagerInstance.java'),
(586, 'en', 'Adena', '', 'L2ClanHallManagerInstance.java'),
(586, 'ko', '아데나', '', 'L2ClanHallManagerInstance.java'),
(586, 'tw', '金幣', '', 'L2ClanHallManagerInstance.java'),

(587, 'cn', ' 天', '', 'L2ClanHallManagerInstance.java'),
(587, 'en', ' Day', '', 'L2ClanHallManagerInstance.java'),
(587, 'ko', ' 일', '', 'L2ClanHallManagerInstance.java'),
(587, 'tw', ' 天', '', 'L2ClanHallManagerInstance.java'),

(588, 'cn', '壁炉（HP 恢复设备）', '', 'L2ClanHallManagerInstance.java'),
(588, 'en', 'Fireplace (HP Recovery Device)', '', 'L2ClanHallManagerInstance.java'),
(588, 'ko', 'Fireplace (HP Recovery Device)', '', 'L2ClanHallManagerInstance.java'),
(588, 'tw', '壁爐（HP 恢復設備）', '', 'L2ClanHallManagerInstance.java'),

(589, 'cn', '血盟成员恢复 HP 时多增加 ', '', 'L2ClanHallManagerInstance.java'),
(589, 'en', 'Provides additional HP recovery for clan members in the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(589, 'ko', 'Provides additional HP recovery for clan members in the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(589, 'tw', '血盟成員恢復 HP 時多增加 ', '', 'L2ClanHallManagerInstance.java'),

(590, 'cn', '地毯（MP 恢复设备）', '', 'L2ClanHallManagerInstance.java'),
(590, 'en', 'Carpet (MP Recovery)', '', 'L2ClanHallManagerInstance.java'),
(590, 'ko', 'Carpet (MP 회복)', '', 'L2ClanHallManagerInstance.java'),
(590, 'tw', '地毯（MP 恢復設備）', '', 'L2ClanHallManagerInstance.java'),

(591, 'cn', '血盟成员恢复 MP 时多增加 ', '', 'L2ClanHallManagerInstance.java'),
(591, 'en', 'Provides additional MP recovery for clan members in the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(591, 'ko', 'Provides additional MP recovery for clan members in the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(591, 'tw', '血盟成員恢復 MP 時多增加 ', '', 'L2ClanHallManagerInstance.java'),

(592, 'cn', '吊灯（EXP 恢复设备）', '', 'L2ClanHallManagerInstance.java'),
(592, 'en', 'Chandelier (EXP Recovery Device)', '', 'L2ClanHallManagerInstance.java'),
(592, 'ko', 'Chandelier (EXP Recovery Device)', '', 'L2ClanHallManagerInstance.java'),
(592, 'tw', '吊燈（EXP 恢復設備）', '', 'L2ClanHallManagerInstance.java'),

(593, 'cn', '血盟成员复活时 EXP 多增加 ', '', 'L2ClanHallManagerInstance.java'),
(593, 'en', 'Restores the Exp of any clan member who is resurrected in the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(593, 'ko', 'Restores the Exp of any clan member who is resurrected in the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(593, 'tw', '血盟成員復活時 EXP 多增加 ', '', 'L2ClanHallManagerInstance.java'),

(594, 'cn', '收取下一次的费用：', '', 'L2ClanHallManagerInstance.java'),
(594, 'en', 'Withdraw the fee for the next time at ', '', 'L2ClanHallManagerInstance.java'),
(594, 'ko', 'Withdraw the fee for the next time at ', '', 'L2ClanHallManagerInstance.java'),
(594, 'tw', '收取下一次的費用：', '', 'L2ClanHallManagerInstance.java'),

(595, 'cn', '取消', '', 'L2ClanHallManagerInstance.java'),
(595, 'en', 'Deactivate', '', 'L2ClanHallManagerInstance.java'),
(595, 'ko', 'Deactivate', '', 'L2ClanHallManagerInstance.java'),
(595, 'tw', '取消', '', 'L2ClanHallManagerInstance.java'),

(596, 'cn', '无', '', 'L2ClanHallManagerInstance.java'),
(596, 'en', 'none', '', 'L2ClanHallManagerInstance.java'),
(596, 'ko', 'none', '', 'L2ClanHallManagerInstance.java'),
(596, 'tw', '無', '', 'L2ClanHallManagerInstance.java'),

(597, 'cn', '魔法设备（物品生产设备）', '', 'L2ClanHallManagerInstance.java'),
(597, 'en', 'Magic Equipment (Item Production Facilities)', '', 'L2ClanHallManagerInstance.java'),
(597, 'ko', 'Magic Equipment (Item Production Facilities)', '', 'L2ClanHallManagerInstance.java'),
(597, 'tw', '魔法設備（物品生產設備）', '', 'L2ClanHallManagerInstance.java'),

(598, 'cn', '允许在固定的时间内购买特别的物品', '', 'L2ClanHallManagerInstance.java'),
(598, 'en', 'Allow the purchase of special items at fixed intervals.', '', 'L2ClanHallManagerInstance.java'),
(598, 'ko', 'Allow the purchase of special items at fixed intervals.', '', 'L2ClanHallManagerInstance.java'),
(598, 'tw', '允許在固定的時間內購買特別的物品', '', 'L2ClanHallManagerInstance.java'),

(599, 'cn', '佩章（辅助魔法）', '', 'L2ClanHallManagerInstance.java'),
(599, 'en', 'Insignia (Supplementary Magic)', '', 'L2ClanHallManagerInstance.java'),
(599, 'ko', 'Insignia (Supplementary Magic)', '', 'L2ClanHallManagerInstance.java'),
(599, 'tw', '佩章（輔助魔法）', '', 'L2ClanHallManagerInstance.java'),

(600, 'cn', '施展辅助魔法', '', 'L2ClanHallManagerInstance.java'),
(600, 'en', 'Enables the use of supplementary magic.', '', 'L2ClanHallManagerInstance.java'),
(600, 'ko', 'Enables the use of supplementary magic.', '', 'L2ClanHallManagerInstance.java'),
(600, 'tw', '施展輔助魔法', '', 'L2ClanHallManagerInstance.java'),

(601, 'cn', '镜子（传送设备）', '', 'L2ClanHallManagerInstance.java'),
(601, 'en', 'Mirror (Teleportation Device)', '', 'L2ClanHallManagerInstance.java'),
(601, 'ko', 'Mirror (Teleportation Device)', '', 'L2ClanHallManagerInstance.java'),
(601, 'tw', '鏡子（傳送設備）', '', 'L2ClanHallManagerInstance.java'),

(602, 'cn', '传送血盟成员到', '', 'L2ClanHallManagerInstance.java'),
(602, 'en', 'Teleports clan members in a clan hall to the target ', '', 'L2ClanHallManagerInstance.java'),
(602, 'ko', 'Teleports clan members in a clan hall to the target ', '', 'L2ClanHallManagerInstance.java'),
(602, 'tw', '傳送血盟成員到', '', 'L2ClanHallManagerInstance.java'),

(603, 'cn', '阶段', '', 'L2ClanHallManagerInstance.java'),
(603, 'en', 'Stage ', '', 'L2ClanHallManagerInstance.java'),
(603, 'ko', '단계 ', '', 'L2ClanHallManagerInstance.java'),
(603, 'tw', '階段', '', 'L2ClanHallManagerInstance.java'),

(604, 'cn', '的位置', '', 'L2ClanHallManagerInstance.java'),
(604, 'en', ' staging area', '', 'L2ClanHallManagerInstance.java'),
(604, 'ko', ' staging area', '', 'L2ClanHallManagerInstance.java'),
(604, 'tw', '的位置', '', 'L2ClanHallManagerInstance.java'),

(605, 'cn', '等级', '', 'L2ClanHallManagerInstance.java'),
(605, 'en', 'Level ', '', 'L2ClanHallManagerInstance.java'),
(605, 'ko', '레벨 ', '', 'L2ClanHallManagerInstance.java'),
(605, 'tw', '等級', '', 'L2ClanHallManagerInstance.java'),

(606, 'cn', '窗帘（装饰）', '', 'L2ClanHallManagerInstance.java'),
(606, 'en', 'Curtains (Decoration)', '', 'L2ClanHallManagerInstance.java'),
(606, 'ko', 'Curtains (Decoration)', '', 'L2ClanHallManagerInstance.java'),
(606, 'tw', '窗簾（裝飾）', '', 'L2ClanHallManagerInstance.java'),

(607, 'cn', '装饰根据地', '', 'L2ClanHallManagerInstance.java'),
(607, 'en', 'These curtains can be used to decorate the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(607, 'ko', 'These curtains can be used to decorate the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(607, 'tw', '裝飾根據地', '', 'L2ClanHallManagerInstance.java'),

(608, 'cn', '阳台（装饰）', '', 'L2ClanHallManagerInstance.java'),
(608, 'en', 'Front Platform (Decoration)', '', 'L2ClanHallManagerInstance.java'),
(608, 'ko', 'Front Platform (Decoration)', '', 'L2ClanHallManagerInstance.java'),
(608, 'tw', '陽台（裝飾）', '', 'L2ClanHallManagerInstance.java'),

(609, 'cn', '装饰根据地', '', 'L2ClanHallManagerInstance.java'),
(609, 'en', 'Used to decorate the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(609, 'ko', 'Used to decorate the clan hall.', '', 'L2ClanHallManagerInstance.java'),
(609, 'tw', '裝飾根據地', '', 'L2ClanHallManagerInstance.java'),

(610, 'cn', '装备诅咒武器时无法获得外部的辅助魔法', '', 'L2ClanHallManagerInstance.java'),
(610, 'en', 'The wielder of a cursed weapon cannot receive outside heals or buffs', '', 'L2ClanHallManagerInstance.java'),
(610, 'ko', 'The wielder of a cursed weapon cannot receive outside heals or buffs', '', 'L2ClanHallManagerInstance.java'),
(610, 'tw', '裝備詛咒武器時無法獲得外部的輔助魔法', '', 'L2ClanHallManagerInstance.java'),

(611, 'cn', '技能等级错误，请回报给管理者！', '', 'L2ClanHallManagerInstance.java'),
(611, 'en', 'Invalid skill level, contact your admin!', '', 'L2ClanHallManagerInstance.java'),
(611, 'ko', '잘못된 스킬 레벨, 지엠에게 문의!', '', 'L2ClanHallManagerInstance.java'),
(611, 'tw', '技能等級錯誤，請回報給管理者！', '', 'L2ClanHallManagerInstance.java'),

(617, 'cn', '请你达到等级「20」以后再来找我吧。<br>', '', 'L2ClassMasterInstance.java'),
(617, 'en', 'Come back here when you reached level 20 to change your class.<br>', '', 'L2ClassMasterInstance.java'),
(617, 'ko', 'Come back here when you reached level 20 to change your class.<br>', '', 'L2ClassMasterInstance.java'),
(617, 'tw', '請你達到等級「20」以後再來找我吧。<br>', '', 'L2ClassMasterInstance.java'),

(618, 'cn', '请你完成一次转职后再来找我吧。<br>', '', 'L2ClassMasterInstance.java'),
(618, 'en', 'Come back after your first occupation change.<br>', '', 'L2ClassMasterInstance.java'),
(618, 'ko', 'Come back after your first occupation change.<br>', '', 'L2ClassMasterInstance.java'),
(618, 'tw', '請你完成一次轉職後再來找我吧。<br>', '', 'L2ClassMasterInstance.java'),

(619, 'cn', '请你完成二次转职后再来找我吧。<br>', '', 'L2ClassMasterInstance.java'),
(619, 'en', 'Come back after your second occupation change.<br>', '', 'L2ClassMasterInstance.java'),
(619, 'ko', 'Come back after your second occupation change.<br>', '', 'L2ClassMasterInstance.java'),
(619, 'tw', '請你完成二次轉職後再來找我吧。<br>', '', 'L2ClassMasterInstance.java'),

(620, 'cn', '请你达到等级「40」以后再来找我吧。<br>', '', 'L2ClassMasterInstance.java'),
(620, 'en', 'Come back here when you reached level 40 to change your class.<br>', '', 'L2ClassMasterInstance.java'),
(620, 'ko', 'Come back here when you reached level 40 to change your class.<br>', '', 'L2ClassMasterInstance.java'),
(620, 'tw', '請你達到等級「40」以後再來找我吧。<br>', '', 'L2ClassMasterInstance.java'),

(621, 'cn', '我无法帮你转职。<br>', '', 'L2ClassMasterInstance.java'),
(621, 'en', 'I can\'t change your occupation.<br>', '', 'L2ClassMasterInstance.java'),
(621, 'ko', 'I can\'t change your occupation.<br>', '', 'L2ClassMasterInstance.java'),
(621, 'tw', '我無法幫你轉職。<br>', '', 'L2ClassMasterInstance.java'),

(622, 'cn', '请你达到等级「76」以后再来找我吧。<br>', '', 'L2ClassMasterInstance.java'),
(622, 'en', 'Come back here when you reached level 76 to change your class.<br>', '', 'L2ClassMasterInstance.java'),
(622, 'ko', 'Come back here when you reached level 76 to change your class.<br>', '', 'L2ClassMasterInstance.java'),
(622, 'tw', '請你達到等級「76」以後再來找我吧。<br>', '', 'L2ClassMasterInstance.java'),

(623, 'cn', '很抱歉，已经没有可以让你转职的职业了。<br>', '', 'L2ClassMasterInstance.java'),
(623, 'en', 'There is no class change available for you anymore.<br>', '', 'L2ClassMasterInstance.java'),
(623, 'ko', 'There is no class change available for you anymore.<br>', '', 'L2ClassMasterInstance.java'),
(623, 'tw', '很抱歉，已經沒有可以讓你轉職的職業了。<br>', '', 'L2ClassMasterInstance.java'),

(624, 'cn', '无', '', 'L2ClassMasterInstance.java'),
(624, 'en', 'none', '', 'L2ClassMasterInstance.java'),
(624, 'ko', 'none', '', 'L2ClassMasterInstance.java'),
(624, 'tw', '無', '', 'L2ClassMasterInstance.java'),

(638, 'cn', '黄昏的革命军', '', 'L2FestivalGuideInstance.java'),
(638, 'en', 'Children of Dusk', '', 'L2FestivalGuideInstance.java'),
(638, 'ko', 'Children of Dusk', '', 'L2FestivalGuideInstance.java'),
(638, 'tw', '黃昏的革命軍', '', 'L2FestivalGuideInstance.java'),

(639, 'cn', '黎明的君主们', '', 'L2FestivalGuideInstance.java'),
(639, 'en', 'Children of Dawn', '', 'L2FestivalGuideInstance.java'),
(639, 'ko', 'Children of Dawn', '', 'L2FestivalGuideInstance.java'),
(639, 'tw', '黎明的君主們', '', 'L2FestivalGuideInstance.java'),

(640, 'cn', '无', '', 'L2FestivalGuideInstance.java'),
(640, 'en', 'none', '', 'L2FestivalGuideInstance.java'),
(640, 'ko', 'none', '', 'L2FestivalGuideInstance.java'),
(640, 'tw', '無', '', 'L2FestivalGuideInstance.java'),

(653, 'cn', '无法接受要求，', '', 'L2FortEnvoyInstance.java'),
(653, 'en', 'Contact is currently not possible, ', '', 'L2FortEnvoyInstance.java'),
(653, 'ko', 'Contact is currently not possible, ', '', 'L2FortEnvoyInstance.java'),
(653, 'tw', '無法接受要求，', '', 'L2FortEnvoyInstance.java'),

(654, 'cn', '目前不属于血盟。', '', 'L2FortEnvoyInstance.java'),
(654, 'en', ' Castle isn\'t currently owned by clan.', '', 'L2FortEnvoyInstance.java'),
(654, 'ko', ' Castle isn\'t currently owned by clan.', '', 'L2FortEnvoyInstance.java'),
(654, 'tw', '目前不屬於血盟。', '', 'L2FortEnvoyInstance.java'),

(657, 'cn', '此要塞并无主人，因此无法更改。', '', 'L2FortManagerInstance.java'),
(657, 'en', 'This fortress have no owner, you cannot change configuration', '', 'L2FortManagerInstance.java'),
(657, 'ko', 'This fortress have no owner, you cannot change configuration', '', 'L2FortManagerInstance.java'),
(657, 'tw', '此要塞並無主人，因此無法更改。', '', 'L2FortManagerInstance.java'),

(658, 'cn', '金币', '', 'L2FortManagerInstance.java'),
(658, 'en', 'Adena', '', 'L2FortManagerInstance.java'),
(658, 'ko', '아데나', '', 'L2FortManagerInstance.java'),
(658, 'tw', '金幣', '', 'L2FortManagerInstance.java'),

(659, 'cn', ' 天', '', 'L2FortManagerInstance.java'),
(659, 'en', ' Day', '', 'L2FortManagerInstance.java'),
(659, 'ko', ' 일', '', 'L2FortManagerInstance.java'),
(659, 'tw', ' 天', '', 'L2FortManagerInstance.java'),

(660, 'cn', '壁炉（HP 恢复设备）', '', 'L2FortManagerInstance.java'),
(660, 'en', 'Fireplace (HP Recovery Device)', '', 'L2FortManagerInstance.java'),
(660, 'ko', 'Fireplace (HP Recovery Device)', '', 'L2FortManagerInstance.java'),
(660, 'tw', '壁爐（HP 恢復設備）', '', 'L2FortManagerInstance.java'),

(661, 'cn', '要塞的血盟成员恢复 HP 时多增加 ', '', 'L2FortManagerInstance.java'),
(661, 'en', 'Provides additional HP recovery for clan members in the fortress.', '', 'L2FortManagerInstance.java'),
(661, 'ko', 'Provides additional HP recovery for clan members in the fortress.', '', 'L2FortManagerInstance.java'),
(661, 'tw', '要塞的血盟成員恢復 HP 時多增加 ', '', 'L2FortManagerInstance.java'),

(662, 'cn', '地毯（MP 恢复设备）', '', 'L2FortManagerInstance.java'),
(662, 'en', 'Carpet (MP Recovery)', '', 'L2FortManagerInstance.java'),
(662, 'ko', 'Carpet (MP 회복)', '', 'L2FortManagerInstance.java'),
(662, 'tw', '地毯（MP 恢復設備）', '', 'L2FortManagerInstance.java'),

(663, 'cn', '要塞的血盟成员恢复 MP 时多增加 ', '', 'L2FortManagerInstance.java'),
(663, 'en', 'Provides additional MP recovery for clan members in the fortress.', '', 'L2FortManagerInstance.java'),
(663, 'ko', 'Provides additional MP recovery for clan members in the fortress.', '', 'L2FortManagerInstance.java'),
(663, 'tw', '要塞的血盟成員恢復 MP 時多增加 ', '', 'L2FortManagerInstance.java'),

(664, 'cn', '吊灯（EXP 恢复设备）', '', 'L2FortManagerInstance.java'),
(664, 'en', 'Chandelier (EXP Recovery Device)', '', 'L2FortManagerInstance.java'),
(664, 'ko', 'Chandelier (EXP Recovery Device)', '', 'L2FortManagerInstance.java'),
(664, 'tw', '吊燈（EXP 恢復設備）', '', 'L2FortManagerInstance.java'),

(665, 'cn', '要塞的血盟成员复活时 EXP 多增加 ', '', 'L2FortManagerInstance.java'),
(665, 'en', 'Restores the Exp of any clan member who is resurrected in the fortress.', '', 'L2FortManagerInstance.java'),
(665, 'ko', 'Restores the Exp of any clan member who is resurrected in the fortress.', '', 'L2FortManagerInstance.java'),
(665, 'tw', '要塞的血盟成員復活時 EXP 多增加 ', '', 'L2FortManagerInstance.java'),

(666, 'cn', '时，将会把下回使用费用汇出', '', 'L2FortManagerInstance.java'),
(666, 'en', 'Withdraw the fee for the next time at ', '', 'L2FortManagerInstance.java'),
(666, 'ko', 'Withdraw the fee for the next time at ', '', 'L2FortManagerInstance.java'),
(666, 'tw', '時，將會把下回使用費用匯出', '', 'L2FortManagerInstance.java'),

(667, 'cn', '非活性化', '', 'L2FortManagerInstance.java'),
(667, 'en', 'Deactivate', '', 'L2FortManagerInstance.java'),
(667, 'ko', 'Deactivate', '', 'L2FortManagerInstance.java'),
(667, 'tw', '非活性化', '', 'L2FortManagerInstance.java'),

(668, 'cn', '无', '', 'L2FortManagerInstance.java'),
(668, 'en', 'none', '', 'L2FortManagerInstance.java'),
(668, 'ko', 'none', '', 'L2FortManagerInstance.java'),
(668, 'tw', '無', '', 'L2FortManagerInstance.java'),

(669, 'cn', '佩章（辅助魔法）', '', 'L2FortManagerInstance.java'),
(669, 'en', 'Insignia (Supplementary Magic)', '', 'L2FortManagerInstance.java'),
(669, 'ko', 'Insignia (Supplementary Magic)', '', 'L2FortManagerInstance.java'),
(669, 'tw', '佩章（輔助魔法）', '', 'L2FortManagerInstance.java'),

(670, 'cn', '施展辅助魔法', '', 'L2FortManagerInstance.java'),
(670, 'en', 'Enables the use of supplementary magic.', '', 'L2FortManagerInstance.java'),
(670, 'ko', 'Enables the use of supplementary magic.', '', 'L2FortManagerInstance.java'),
(670, 'tw', '施展輔助魔法', '', 'L2FortManagerInstance.java'),

(671, 'cn', '镜子（传送设备）', '', 'L2FortManagerInstance.java'),
(671, 'en', 'Mirror (Teleportation Device)', '', 'L2FortManagerInstance.java'),
(671, 'ko', 'Mirror (Teleportation Device)', '', 'L2FortManagerInstance.java'),
(671, 'tw', '鏡子（傳送設備）', '', 'L2FortManagerInstance.java'),

(672, 'cn', '傳送要塞的血盟成員到', '', 'L2FortManagerInstance.java'),
(672, 'en', 'Teleports clan members in a fort to the target ', '', 'L2FortManagerInstance.java'),
(672, 'ko', 'Teleports clan members in a fort to the target ', '', 'L2FortManagerInstance.java'),
(672, 'tw', '傳送要塞的血盟成員到', '', 'L2FortManagerInstance.java'),

(673, 'cn', '阶段', '', 'L2FortManagerInstance.java'),
(673, 'en', 'Stage ', '', 'L2FortManagerInstance.java'),
(673, 'ko', '단계 ', '', 'L2FortManagerInstance.java'),
(673, 'tw', '階段', '', 'L2FortManagerInstance.java'),

(674, 'cn', '的位置', '', 'L2FortManagerInstance.java'),
(674, 'en', ' staging area', '', 'L2FortManagerInstance.java'),
(674, 'ko', ' staging area', '', 'L2FortManagerInstance.java'),
(674, 'tw', '的位置', '', 'L2FortManagerInstance.java'),

(675, 'cn', '', '第;阶段', 'L2FortManagerInstance.java'),
(675, 'en', '', 'Level;', 'L2FortManagerInstance.java'),
(675, 'ko', '', '레벨;', 'L2FortManagerInstance.java'),
(675, 'tw', '', '第;階段', 'L2FortManagerInstance.java'),

(676, 'cn', '技能等级错误，请回报给管理者！', '', 'L2FortManagerInstance.java'),
(676, 'en', 'Invalid skill level, contact your admin!', '', 'L2FortManagerInstance.java'),
(676, 'ko', '잘못된 스킬 레벨, 지엠에게 문의!', '', 'L2FortManagerInstance.java'),
(676, 'tw', '技能等級錯誤，請回報給管理者！', '', 'L2FortManagerInstance.java'),

(677, 'cn', '', '「;」', 'L2FortManagerInstance.java'),
(677, 'en', '', '「;」', 'L2FortManagerInstance.java'),
(677, 'ko', '', '「;」', 'L2FortManagerInstance.java'),
(677, 'tw', '', '「;」', 'L2FortManagerInstance.java'),

(679, 'cn', '我无法教你任何东西。', '', 'L2NpcInstance.java'),
(679, 'en', 'I cannot teach you. My class list is empty.', '', 'L2NpcInstance.java'),
(679, 'ko', 'I cannot teach you. My class list is empty.', '', 'L2NpcInstance.java'),
(679, 'tw', '我無法教你任何東西。', '', 'L2NpcInstance.java'),

(680, 'cn', '请告知管理者修正。', '', 'L2NpcInstance.java'),
(680, 'en', ' Ask admin to fix it. Need add my npcid and classes to skill_learn.sql.', '', 'L2NpcInstance.java'),
(680, 'ko', ' Ask admin to fix it. Need add my npcid and classes to skill_learn.sql.', '', 'L2NpcInstance.java'),
(680, 'tw', '請告知管理者修正。', '', 'L2NpcInstance.java'),

(681, 'cn', 'NPC ID：', '', 'L2NpcInstance.java'),
(681, 'en', 'NpcId:', '', 'L2NpcInstance.java'),
(681, 'ko', 'NPC ID:', '', 'L2NpcInstance.java'),
(681, 'tw', 'NPC ID：', '', 'L2NpcInstance.java'),

(682, 'cn', '，你的职业：', '', 'L2NpcInstance.java'),
(682, 'en', ', Your classId:', '', 'L2NpcInstance.java'),
(682, 'ko', ', Your classId:', '', 'L2NpcInstance.java'),
(682, 'tw', '，你的職業：', '', 'L2NpcInstance.java'),

(689, 'cn', '禁止聊天', '', 'L2PcInstance.java'),
(689, 'en', 'chat banned', '', 'L2PcInstance.java'),
(689, 'ko', '채팅 금지되었습니다', '', 'L2PcInstance.java'),
(689, 'tw', '禁止聊天', '', 'L2PcInstance.java'),

(690, 'cn', '监禁', '', 'L2PcInstance.java'),
(690, 'en', 'jailed', '', 'L2PcInstance.java'),
(690, 'ko', '수감되었습니다', '', 'L2PcInstance.java'),
(690, 'tw', '監禁', '', 'L2PcInstance.java'),

(691, 'cn', '封锁', '', 'L2PcInstance.java'),
(691, 'en', 'banned', '', 'L2PcInstance.java'),
(691, 'ko', 'banned', '', 'L2PcInstance.java'),
(691, 'tw', '封鎖', '', 'L2PcInstance.java'),

(692, 'cn', '封锁帐号', '', 'L2PcInstance.java'),
(692, 'en', 'banned', '', 'L2PcInstance.java'),
(692, 'ko', 'banned', '', 'L2PcInstance.java'),
(692, 'tw', '封鎖帳號', '', 'L2PcInstance.java'),

(693, 'cn', '', '习得 ; 种新技能！', 'L2PcInstance.java'),
(693, 'en', '', 'You have learned ; new skills.', 'L2PcInstance.java'),
(693, 'ko', '', ';개 새로운 스킬을 습득했습니다.', 'L2PcInstance.java'),
(693, 'tw', '', '習得 ; 種新技能！', 'L2PcInstance.java'),

(694, 'cn', '坐下时无法使用技能！', '', 'L2PcInstance.java'),
(694, 'en', 'Cannot sit while casting', '', 'L2PcInstance.java'),
(694, 'ko', '캐스팅하는 동안 앉을 수 없습니다', '', 'L2PcInstance.java'),
(694, 'tw', '坐下時無法使用技能！', '', 'L2PcInstance.java'),

(695, 'cn', '一股未知的黑暗力量让脚发抖起来，导致无法站起。', '', 'L2PcInstance.java'),
(695, 'en', 'A dark force beyond your mortal understanding makes your knees to shake when you try to stand up ...', '', 'L2PcInstance.java'),
(695, 'ko', 'A dark force beyond your mortal understanding makes your knees to shake when you try to stand up ...', '', 'L2PcInstance.java'),
(695, 'tw', '一股未知的黑暗力量讓腳發抖起來，導致無法站起。', '', 'L2PcInstance.java'),

(696, 'cn', '请求结婚被《接受》了！', '', 'L2PcInstance.java'),
(696, 'en', 'Request to Engage has been >ACCEPTED<', '', 'L2PcInstance.java'),
(696, 'ko', 'Request to Engage has been >허용<', '', 'L2PcInstance.java'),
(696, 'tw', '請求結婚被《接受》了！', '', 'L2PcInstance.java'),

(697, 'cn', '请求结婚被《拒绝》了！', '', 'L2PcInstance.java'),
(697, 'en', 'Request to Engage has been >DENIED<!', '', 'L2PcInstance.java'),
(697, 'ko', 'Request to Engage has been >거부<!', '', 'L2PcInstance.java'),
(697, 'tw', '請求結婚被《拒絕》了！', '', 'L2PcInstance.java'),

(698, 'cn', '决斗错误。', '', 'L2PcInstance.java'),
(698, 'en', 'You cannot do this while duelling.', '', 'L2PcInstance.java'),
(698, 'ko', 'You cannot do this while duelling.', '', 'L2PcInstance.java'),
(698, 'tw', '決鬥錯誤。', '', 'L2PcInstance.java'),

(699, 'cn', '只能在城堡周围使用座龙攻城强袭。', '', 'L2PcInstance.java'),
(699, 'en', 'You must be on castle ground to use strider siege assault', '', 'L2PcInstance.java'),
(699, 'ko', 'You must be on castle ground to use strider siege assault', '', 'L2PcInstance.java'),
(699, 'tw', '只能在城堡周圍使用座龍攻城強襲。', '', 'L2PcInstance.java'),

(700, 'cn', '只能在攻城战使用座龙攻城强袭。', '', 'L2PcInstance.java'),
(700, 'en', 'You can only use strider siege assault during a siege.', '', 'L2PcInstance.java'),
(700, 'ko', 'You can only use strider siege assault during a siege.', '', 'L2PcInstance.java'),
(700, 'tw', '只能在攻城戰使用座龍攻城強襲。', '', 'L2PcInstance.java'),

(701, 'cn', '只能向城门和围墙使用座龙攻城强袭。', '', 'L2PcInstance.java'),
(701, 'en', 'You can only use strider siege assault on doors and walls.', '', 'L2PcInstance.java'),
(701, 'ko', 'You can only use strider siege assault on doors and walls.', '', 'L2PcInstance.java'),
(701, 'tw', '只能向城門和圍牆使用座龍攻城強襲。', '', 'L2PcInstance.java'),

(702, 'cn', '必须骑乘在座龙上才能使用座龙攻城强袭。', '', 'L2PcInstance.java'),
(702, 'en', 'You can only use strider siege assault when on strider.', '', 'L2PcInstance.java'),
(702, 'ko', 'You can only use strider siege assault when on strider.', '', 'L2PcInstance.java'),
(702, 'tw', '必須騎乘在座龍上才能使用座龍攻城強襲。', '', 'L2PcInstance.java'),

(703, 'cn', '只能在要塞周围使用座龙攻城强袭。', '', 'L2PcInstance.java'),
(703, 'en', 'You must be on fort ground to use strider siege assault', '', 'L2PcInstance.java'),
(703, 'ko', 'You must be on fort ground to use strider siege assault', '', 'L2PcInstance.java'),
(703, 'tw', '只能在要塞周圍使用座龍攻城強襲。', '', 'L2PcInstance.java'),

(704, 'cn', '只能在要塞战使用座龙攻城强袭。', '', 'L2PcInstance.java'),
(704, 'en', 'You can only use strider siege assault during a siege.', '', 'L2PcInstance.java'),
(704, 'ko', 'You can only use strider siege assault during a siege.', '', 'L2PcInstance.java'),
(704, 'tw', '只能在要塞戰使用座龍攻城強襲。', '', 'L2PcInstance.java'),

(705, 'cn', '目前为封印有效期间，将强制传送至最近的村庄。', '', 'L2PcInstance.java'),
(705, 'en', 'You have been teleported to the nearest town due to the beginning of the Seal Validation period.', '', 'L2PcInstance.java'),
(705, 'ko', 'You have been teleported to the nearest town due to the beginning of the Seal Validation period.', '', 'L2PcInstance.java'),
(705, 'tw', '目前為封印有效期間，將強制傳送至最近的村莊。', '', 'L2PcInstance.java'),

(706, 'cn', '因为没有参与任何封印，将强制传送至最近的村庄。', '', 'L2PcInstance.java'),
(706, 'en', 'You have been teleported to the nearest town because you have not signed for any cabal.', '', 'L2PcInstance.java'),
(706, 'ko', 'You have been teleported to the nearest town because you have not signed for any cabal.', '', 'L2PcInstance.java'),
(706, 'tw', '因為沒有參與任何封印，將強制傳送至最近的村莊。', '', 'L2PcInstance.java'),

(707, 'cn', '目前为无敌状态。', '', 'L2PcInstance.java'),
(707, 'en', 'Entering world in Invulnerable mode.', '', 'L2PcInstance.java'),
(707, 'ko', '현재 무적모드입니다.', '', 'L2PcInstance.java'),
(707, 'tw', '目前為無敵狀態。', '', 'L2PcInstance.java'),

(708, 'cn', '目前为隐形状态。', '', 'L2PcInstance.java'),
(708, 'en', 'Entering world in Invisible mode.', '', 'L2PcInstance.java'),
(708, 'ko', '현재 투명모드입니다.', '', 'L2PcInstance.java'),
(708, 'tw', '目前為隱形狀態。', '', 'L2PcInstance.java'),

(709, 'cn', '目前为拒绝密语状态。', '', 'L2PcInstance.java'),
(709, 'en', 'Entering world in Message Refusal mode.', '', 'L2PcInstance.java'),
(709, 'ko', '현재 귓속말 차단 상태입니다.', '', 'L2PcInstance.java'),
(709, 'tw', '目前為拒絕密語狀態。', '', 'L2PcInstance.java'),

(710, 'cn', '钓鱼错误。', '', 'L2PcInstance.java'),
(710, 'en', 'Error - Fishes are not definied', '', 'L2PcInstance.java'),
(710, 'ko', 'Error - Fishes are not definied', '', 'L2PcInstance.java'),
(710, 'tw', '釣魚錯誤。', '', 'L2PcInstance.java'),

(711, 'cn', '你已被释放，请记得遵守游戏规则，切勿再犯。', '', 'L2PcInstance.java'),
(711, 'en', 'You are free for now, respect server rules!', '', 'L2PcInstance.java'),
(711, 'ko', 'You are free for now, respect server rules!', '', 'L2PcInstance.java'),
(711, 'tw', '你已被釋放，請記得遵守遊戲規則，切勿再犯。', '', 'L2PcInstance.java'),

(712, 'cn', '', '禁止聊天 ; 分钟。', 'L2PcInstance.java'),
(712, 'en', '', 'You are chat banned for ; minutes.', 'L2PcInstance.java'),
(712, 'ko', '', 'You are chat banned for ; minutes.', 'L2PcInstance.java'),
(712, 'tw', '', '禁止聊天 ; 分鐘。', 'L2PcInstance.java'),

(713, 'cn', '', '监禁 ; 分钟。', 'L2PcInstance.java'),
(713, 'en', '', 'You are in jail for ; minutes.', 'L2PcInstance.java'),
(713, 'ko', '', 'You are in jail for ; minutes.', 'L2PcInstance.java'),
(713, 'tw', '', '監禁 ; 分鐘。', 'L2PcInstance.java'),

(714, 'cn', '被管理者监禁。', '', 'L2PcInstance.java'),
(714, 'en', 'You have been put in jail by an admin.', '', 'L2PcInstance.java'),
(714, 'ko', 'You have been put in jail by an admin.', '', 'L2PcInstance.java'),
(714, 'tw', '被管理者監禁。', '', 'L2PcInstance.java'),

(715, 'cn', '', '你的;时间还有 ; 分钟。', 'L2PcInstance.java'),
(715, 'en', '', 'You are still ; for ; minutes.', 'L2PcInstance.java'),
(715, 'ko', '', 'You are still ; for ; minutes.', 'L2PcInstance.java'),
(715, 'tw', '', '你的;時間還有 ; 分鐘。', 'L2PcInstance.java'),

(716, 'cn', '传送保护- 从现在起可以刺激有先制攻击性的怪物。', '', 'L2PcInstance.java'),
(716, 'en', 'Teleport spawn protection ended.', '', 'L2PcInstance.java'),
(716, 'ko', 'Teleport spawn protection ended.', '', 'L2PcInstance.java'),
(716, 'tw', '傳送保護 - 從現在起可以刺激有先制攻擊性的怪物。', '', 'L2PcInstance.java'),

(730, 'cn', '宠物出租', '', 'L2PetManagerInstance.java'),
(730, 'en', 'Rent Pet', '', 'L2PetManagerInstance.java'),
(730, 'ko', '펫 대여', '', 'L2PetManagerInstance.java'),
(730, 'tw', '寵物出租', '', 'L2PetManagerInstance.java'),

(733, 'cn', '救命啊！！', '', 'L2SepulcherMonsterInstance.java'),
(733, 'en', 'forgive me!!', '', 'L2SepulcherMonsterInstance.java'),
(733, 'ko', 'forgive me!!', '', 'L2SepulcherMonsterInstance.java'),
(733, 'tw', '救命啊！！', '', 'L2SepulcherMonsterInstance.java'),

(734, 'cn', '非常感谢你们救我。', '', 'L2SepulcherMonsterInstance.java'),
(734, 'en', 'Many thanks for rescue me.', '', 'L2SepulcherMonsterInstance.java'),
(734, 'ko', 'Many thanks for rescue me.', '', 'L2SepulcherMonsterInstance.java'),
(734, 'tw', '非常感謝你們救我。', '', 'L2SepulcherMonsterInstance.java'),

(737, 'cn', '因为离开了攻城战区域，因此取消召唤。', '', 'L2SiegeSummonInstance.java'),
(737, 'en', 'Summon was unsummoned because it exited siege zone', '', 'L2SiegeSummonInstance.java'),
(737, 'ko', 'Summon was unsummoned because it exited siege zone', '', 'L2SiegeSummonInstance.java'),
(737, 'tw', '因為離開了攻城戰區域，因此取消召喚。', '', 'L2SiegeSummonInstance.java'),

(740, 'cn', '蓝色', '', 'L2SignsPriestInstance.java'),
(740, 'en', 'Blue', '', 'L2SignsPriestInstance.java'),
(740, 'ko', 'Blue', '', 'L2SignsPriestInstance.java'),
(740, 'tw', '藍色', '', 'L2SignsPriestInstance.java'),

(741, 'cn', '蓝色', '', 'L2SignsPriestInstance.java'),
(741, 'en', 'blue', '', 'L2SignsPriestInstance.java'),
(741, 'ko', 'blue', '', 'L2SignsPriestInstance.java'),
(741, 'tw', '藍色', '', 'L2SignsPriestInstance.java'),

(742, 'cn', '绿色', '', 'L2SignsPriestInstance.java'),
(742, 'en', 'Green', '', 'L2SignsPriestInstance.java'),
(742, 'ko', 'Green', '', 'L2SignsPriestInstance.java'),
(742, 'tw', '綠色', '', 'L2SignsPriestInstance.java'),

(743, 'cn', '绿色', '', 'L2SignsPriestInstance.java'),
(743, 'en', 'green', '', 'L2SignsPriestInstance.java'),
(743, 'ko', 'green', '', 'L2SignsPriestInstance.java'),
(743, 'tw', '綠色', '', 'L2SignsPriestInstance.java'),

(744, 'cn', '红色', '', 'L2SignsPriestInstance.java'),
(744, 'en', 'Red', '', 'L2SignsPriestInstance.java'),
(744, 'ko', 'Red', '', 'L2SignsPriestInstance.java'),
(744, 'tw', '紅色', '', 'L2SignsPriestInstance.java'),

(745, 'cn', '红色', '', 'L2SignsPriestInstance.java'),
(745, 'en', 'red', '', 'L2SignsPriestInstance.java'),
(745, 'ko', 'red', '', 'L2SignsPriestInstance.java'),
(745, 'tw', '紅色', '', 'L2SignsPriestInstance.java'),

(746, 'cn', '黎明的祭司：', '', 'L2SignsPriestInstance.java'),
(746, 'en', 'Priest of Dawn:', '', 'L2SignsPriestInstance.java'),
(746, 'ko', '여명의 사제:', '', 'L2SignsPriestInstance.java'),
(746, 'tw', '黎明的祭司：', '', 'L2SignsPriestInstance.java'),

(747, 'cn', '[ 封印状态 ]', '', 'L2SignsPriestInstance.java'),
(747, 'en', '[ Seal Status ]', '', 'L2SignsPriestInstance.java'),
(747, 'ko', '[ 봉인 상태 ]', '', 'L2SignsPriestInstance.java'),
(747, 'tw', '[ 封印狀態 ]', '', 'L2SignsPriestInstance.java'),

(748, 'cn', '黄昏的祭司：', '', 'L2SignsPriestInstance.java'),
(748, 'en', 'Dusk Priestess:', '', 'L2SignsPriestInstance.java'),
(748, 'ko', '황혼의 사제:', '', 'L2SignsPriestInstance.java'),
(748, 'tw', '黃昏的祭司：', '', 'L2SignsPriestInstance.java'),

(749, 'cn', '[ 封印状态 ]', '', 'L2SignsPriestInstance.java'),
(749, 'en', '[ Status of the Seals ]', '', 'L2SignsPriestInstance.java'),
(749, 'ko', '[ 봉인 상태 ]', '', 'L2SignsPriestInstance.java'),
(749, 'tw', '[ 封印狀態 ]', '', 'L2SignsPriestInstance.java'),

(750, 'cn', '：无', '', 'L2SignsPriestInstance.java'),
(750, 'en', ': Nothingness', '', 'L2SignsPriestInstance.java'),
(750, 'ko', ': Nothingness', '', 'L2SignsPriestInstance.java'),
(750, 'tw', '：無', '', 'L2SignsPriestInstance.java'),

(751, 'cn', '返回', '', 'L2SignsPriestInstance.java'),
(751, 'en', 'Go back.', '', 'L2SignsPriestInstance.java'),
(751, 'ko', 'Go back.', '', 'L2SignsPriestInstance.java'),
(751, 'tw', '返回', '', 'L2SignsPriestInstance.java'),

(754, 'cn', '快离开，这里不欢迎你。', '', 'L2TeleporterInstance.java'),
(754, 'en', 'Go away, you\'re not welcome here.', '', 'L2TeleporterInstance.java'),
(754, 'ko', 'Go away, you\'re not welcome here.', '', 'L2TeleporterInstance.java'),
(754, 'tw', '快離開，這裡不歡迎你。', '', 'L2TeleporterInstance.java'),

(758, 'cn', '无法追加副职业。', '', 'L2VillageMasterInstance.java'),
(758, 'en', 'There are no sub classes available at this time.', '', 'L2VillageMasterInstance.java'),
(758, 'ko', 'There are no sub classes available at this time.', '', 'L2VillageMasterInstance.java'),
(758, 'tw', '無法追加副職業。', '', 'L2VillageMasterInstance.java'),

(759, 'cn', '副职业', '', 'L2VillageMasterInstance.java'),
(759, 'en', 'Sub-class ', '', 'L2VillageMasterInstance.java'),
(759, 'ko', 'Sub-class ', '', 'L2VillageMasterInstance.java'),
(759, 'tw', '副職業', '', 'L2VillageMasterInstance.java'),

(760, 'cn', '无法追加副职业。', '', 'L2VillageMasterInstance.java'),
(760, 'en', 'There are no sub classes available at this time.', '', 'L2VillageMasterInstance.java'),
(760, 'ko', 'There are no sub classes available at this time.', '', 'L2VillageMasterInstance.java'),
(760, 'tw', '無法追加副職業。', '', 'L2VillageMasterInstance.java'),

(761, 'cn', '为追加副职业，必须先恢复原本的主职业。', '', 'L2VillageMasterInstance.java'),
(761, 'en', 'The sub class could not be added, you have been reverted to your base class.', '', 'L2VillageMasterInstance.java'),
(761, 'ko', 'The sub class could not be added, you have been reverted to your base class.', '', 'L2VillageMasterInstance.java'),
(761, 'tw', '為追加副職業，必須先恢復原本的主職業。', '', 'L2VillageMasterInstance.java'),

(762, 'cn', '请先停止飞行。', '', 'L2VillageMasterInstance.java'),
(762, 'en', 'Please, stop flying', '', 'L2VillageMasterInstance.java'),
(762, 'ko', 'Please, stop flying', '', 'L2VillageMasterInstance.java'),
(762, 'tw', '請先停止飛行。', '', 'L2VillageMasterInstance.java'),

(765, 'cn', '恭喜你们结婚了！', '', 'L2WeddingManagerInstance.java'),
(765, 'en', 'Congratulations you are married!', '', 'L2WeddingManagerInstance.java'),
(765, 'ko', 'Congratulations you are married!', '', 'L2WeddingManagerInstance.java'),
(765, 'tw', '恭喜你們結婚了！', '', 'L2WeddingManagerInstance.java'),

(766, 'cn', '', '恭喜「;」和「;」！他们结婚了。', 'L2WeddingManagerInstance.java'),
(766, 'en', '', 'Congratulations to ; and ;! They have been married.', 'L2WeddingManagerInstance.java'),
(766, 'ko', '', 'Congratulations to ; and ;! They have been married.', 'L2WeddingManagerInstance.java'),
(766, 'tw', '', '恭喜「;」和「;」！他們結婚了。', 'L2WeddingManagerInstance.java'),

(767, 'cn', '你拒绝！', '', 'L2WeddingManagerInstance.java'),
(767, 'en', 'You declined', '', 'L2WeddingManagerInstance.java'),
(767, 'ko', 'You declined', '', 'L2WeddingManagerInstance.java'),
(767, 'tw', '你拒絕！', '', 'L2WeddingManagerInstance.java'),

(768, 'cn', '你的伴侣拒绝！', '', 'L2WeddingManagerInstance.java'),
(768, 'en', 'Your partner declined', '', 'L2WeddingManagerInstance.java'),
(768, 'ko', 'Your partner declined', '', 'L2WeddingManagerInstance.java'),
(768, 'tw', '你的伴侶拒絕！', '', 'L2WeddingManagerInstance.java'),

(1004, 'cn', '返回', '', 'Loto.java'),
(1004, 'en', 'Return', '', 'Loto.java'),
(1004, 'ko', 'Return', '', 'Loto.java'),
(1004, 'tw', '返回', '', 'Loto.java'),

(1005, 'cn', '选择上面的号码。', '', 'Loto.java'),
(1005, 'en', 'The winner selected the numbers above.', '', 'Loto.java'),
(1005, 'ko', 'The winner selected the numbers above.', '', 'Loto.java'),
(1005, 'tw', '選擇上面的號碼。', '', 'Loto.java'),

(1006, 'cn', ' 活动号码', '', 'Loto.java'),
(1006, 'en', ' Event Number ', '', 'Loto.java'),
(1006, 'ko', ' Event Number ', '', 'Loto.java'),
(1006, 'tw', ' 活動號碼', '', 'Loto.java'),

(1007, 'cn', '- 第1奖', '', 'Loto.java'),
(1007, 'en', '- 1st Prize', '', 'Loto.java'),
(1007, 'ko', '- 1st Prize', '', 'Loto.java'),
(1007, 'tw', '- 第1獎', '', 'Loto.java'),

(1008, 'cn', '- 第2奖', '', 'Loto.java'),
(1008, 'en', '- 2nd Prize', '', 'Loto.java'),
(1008, 'ko', '- 2nd Prize', '', 'Loto.java'),
(1008, 'tw', '- 第2獎', '', 'Loto.java'),

(1009, 'cn', '- 第3奖', '', 'Loto.java'),
(1009, 'en', '- 3rd Prize', '', 'Loto.java'),
(1009, 'ko', '- 3rd Prize', '', 'Loto.java'),
(1009, 'tw', '- 第3獎', '', 'Loto.java'),

(1010, 'cn', '- 第4奖', '', 'Loto.java'),
(1010, 'en', '- 4th Prize', '', 'Loto.java'),
(1010, 'ko', '- 4th Prize', '', 'Loto.java'),
(1010, 'tw', '- 第4獎', '', 'Loto.java'),

(1011, 'cn', '~', '', 'Loto.java'),
(1011, 'en', 'a.', '', 'Loto.java'),
(1011, 'ko', 'a.', '', 'Loto.java'),
(1011, 'tw', '~', '', 'Loto.java'),

(1012, 'cn', '没有中奖的彩券。', '', 'Loto.java'),
(1012, 'en', 'There is no winning lottery ticket...', '', 'Loto.java'),
(1012, 'ko', 'There is no winning lottery ticket...', '', 'Loto.java'),
(1012, 'tw', '沒有中獎的彩券。', '', 'Loto.java'),

(1014, 'cn', '', '第 ; 竞技场', 'OlympiadObservation.java'),
(1014, 'en', '', 'Arena ;', 'OlympiadObservation.java'),
(1014, 'ko', '', 'Arena ;', 'OlympiadObservation.java'),
(1014, 'tw', '', '第 ; 競技場', 'OlympiadObservation.java'),

(1016, 'cn', '﹝进行中﹞', '', 'QuestLink.java'),
(1016, 'en', ' (In Progress)', '', 'QuestLink.java'),
(1016, 'ko', ' (In Progress)', '', 'QuestLink.java'),
(1016, 'tw', '﹝進行中﹞', '', 'QuestLink.java'),

(1017, 'cn', '﹝完成﹞', '', 'QuestLink.java'),
(1017, 'en', ' (Done)', '', 'QuestLink.java'),
(1017, 'ko', ' (Done)', '', 'QuestLink.java'),
(1017, 'tw', '﹝完成﹞', '', 'QuestLink.java'),

(1022, 'cn', '黑色审判者：', '', 'RemoveDeathPenalty.java'),
(1022, 'en', 'Black Judge:', '', 'RemoveDeathPenalty.java'),
(1022, 'ko', 'Black Judge:', '', 'RemoveDeathPenalty.java'),
(1022, 'tw', '黑色審判者：', '', 'RemoveDeathPenalty.java'),

(1023, 'cn', '金钱不足。', '', 'RemoveDeathPenalty.java'),
(1023, 'en', 'The wound you have received from death\'s touch is too deep to be healed for the money you have to give me. Find more money if you wish death\'s mark to be fully removed from you.', '', 'RemoveDeathPenalty.java'),
(1023, 'ko', 'The wound you have received from death\'s touch is too deep to be healed for the money you have to give me. Find more money if you wish death\'s mark to be fully removed from you.', '', 'RemoveDeathPenalty.java'),
(1023, 'tw', '金錢不足。', '', 'RemoveDeathPenalty.java'),

(1024, 'cn', '你已经没有因死亡所留下的后遗症了。', '', 'RemoveDeathPenalty.java'),
(1024, 'en', 'You have no more death wounds that require healing.', '', 'RemoveDeathPenalty.java'),
(1024, 'ko', 'You have no more death wounds that require healing.', '', 'RemoveDeathPenalty.java'),
(1024, 'tw', '你已經沒有因死亡所留下的後遺症了。', '', 'RemoveDeathPenalty.java'),

(1025, 'cn', '来，出去战斗吧。为这世界，还有为你自己的飞黄腾达...', '', 'RemoveDeathPenalty.java'),
(1025, 'en', 'Go forth and fight, both for this world and your own glory.', '', 'RemoveDeathPenalty.java'),
(1025, 'ko', 'Go forth and fight, both for this world and your own glory.', '', 'RemoveDeathPenalty.java'),
(1025, 'tw', '來，出去戰鬥吧。為這世界，還有為你自己的飛黃騰達...', '', 'RemoveDeathPenalty.java'),

(1029, 'cn', '宠物管理员：', '', 'RentPet.java'),
(1029, 'en', 'Pet Manager:', '', 'RentPet.java'),
(1029, 'ko', 'Pet Manager:', '', 'RentPet.java'),
(1029, 'tw', '寵物管理員：', '', 'RentPet.java'),

(1030, 'cn', '你可以租借飞龙或座龙。', '', 'RentPet.java'),
(1030, 'en', 'You can rent a wyvern or strider for adena.', '', 'RentPet.java'),
(1030, 'ko', 'You can rent a wyvern or strider for adena.', '', 'RentPet.java'),
(1030, 'tw', '你可以租借飛龍或座龍。', '', 'RentPet.java'),

(1031, 'cn', '价格如下：', '', 'RentPet.java'),
(1031, 'en', 'My prices:', '', 'RentPet.java'),
(1031, 'ko', 'My prices:', '', 'RentPet.java'),
(1031, 'tw', '價格如下：', '', 'RentPet.java'),

(1032, 'cn', '骑乘', '', 'RentPet.java'),
(1032, 'en', 'Ride', '', 'RentPet.java'),
(1032, 'ko', 'Ride', '', 'RentPet.java'),
(1032, 'tw', '騎乘', '', 'RentPet.java'),

(1033, 'cn', '飞龙', '', 'RentPet.java'),
(1033, 'en', 'Wyvern', '', 'RentPet.java'),
(1033, 'ko', '와이번', '', 'RentPet.java'),
(1033, 'tw', '飛龍', '', 'RentPet.java'),

(1034, 'cn', '座龙', '', 'RentPet.java'),
(1034, 'en', 'Strider', '', 'RentPet.java'),
(1034, 'ko', '스트라이더', '', 'RentPet.java'),
(1034, 'tw', '座龍', '', 'RentPet.java'),

(1035, 'cn', '30 秒/1800 金币', '', 'RentPet.java'),
(1035, 'en', '30 sec/1800 adena', '', 'RentPet.java'),
(1035, 'ko', '30 초/1800 아데나', '', 'RentPet.java'),
(1035, 'tw', '30 秒/1800 金幣', '', 'RentPet.java'),

(1036, 'cn', '30 秒/900 金币', '', 'RentPet.java'),
(1036, 'en', '30 sec/900 adena', '', 'RentPet.java'),
(1036, 'ko', '30 초/900 아데나', '', 'RentPet.java'),
(1036, 'tw', '30 秒/900 金幣', '', 'RentPet.java'),

(1037, 'cn', '1 分/7200 金币', '', 'RentPet.java'),
(1037, 'en', '1 min/7200 adena', '', 'RentPet.java'),
(1037, 'ko', '1 분/7200 아데나', '', 'RentPet.java'),
(1037, 'tw', '1 分/7200 金幣', '', 'RentPet.java'),

(1038, 'cn', '1 分/3600 金币', '', 'RentPet.java'),
(1038, 'en', '1 min/3600 adena', '', 'RentPet.java'),
(1038, 'ko', '1 분/3600 아데나', '', 'RentPet.java'),
(1038, 'tw', '1 分/3600 金幣', '', 'RentPet.java'),

(1039, 'cn', '10 分/720000 金币', '', 'RentPet.java'),
(1039, 'en', '10 min/720000 adena', '', 'RentPet.java'),
(1039, 'ko', '10 분/720000 아데나', '', 'RentPet.java'),
(1039, 'tw', '10 分/720000 金幣', '', 'RentPet.java'),

(1040, 'cn', '10 分/360000 金币', '', 'RentPet.java'),
(1040, 'en', '10 min/360000 adena', '', 'RentPet.java'),
(1040, 'ko', '10 분/360000 아데나', '', 'RentPet.java'),
(1040, 'tw', '10 分/360000 金幣', '', 'RentPet.java'),

(1041, 'cn', '30 分/6480000 金币', '', 'RentPet.java'),
(1041, 'en', '30 min/6480000 adena', '', 'RentPet.java'),
(1041, 'ko', '30 분/6480000 아데나', '', 'RentPet.java'),
(1041, 'tw', '30 分/6480000 金幣', '', 'RentPet.java'),

(1042, 'cn', '30 分/3240000 金币', '', 'RentPet.java'),
(1042, 'en', '30 min/3240000 adena', '', 'RentPet.java'),
(1042, 'ko', '30 분/3240000 아데나', '', 'RentPet.java'),
(1042, 'tw', '30 分/3240000 金幣', '', 'RentPet.java'),

(1049, 'cn', '金钱不足。', 'SuperNPC', 'custom'),
(1049, 'en', 'You do not have enough adena.', 'SuperNPC', 'custom'),
(1049, 'ko', 'You do not have enough adena.', 'SuperNPC', 'custom'),
(1049, 'tw', '金錢不足。', 'SuperNPC', 'custom'),

(1050, 'cn', '无法在攻城战时骑乘飞龙。', '', 'RideWyvern.java'),
(1050, 'en', 'You cannot ride wyvern during siege.', '', 'RideWyvern.java'),
(1050, 'ko', 'You cannot ride wyvern during siege.', '', 'RideWyvern.java'),
(1050, 'tw', '無法在攻城戰時騎乘飛龍。', '', 'RideWyvern.java'),

(1051, 'cn', '黄昏的革命军取得胜利时无法骑乘飞龙。', '', 'RideWyvern.java'),
(1051, 'en', 'You cannot ride wyvern while Seal of Strife controlled by Dusk.', '', 'RideWyvern.java'),
(1051, 'ko', 'You cannot ride wyvern while Seal of Strife controlled by Dusk.', '', 'RideWyvern.java'),
(1051, 'tw', '黃昏的革命軍取得勝利時無法騎乘飛龍。', '', 'RideWyvern.java'),

(1052, 'cn', '已有宠物。', '', 'RideWyvern.java'),
(1052, 'en', 'You already have a pet.', '', 'RideWyvern.java'),
(1052, 'ko', 'You already have a pet.', '', 'RideWyvern.java'),
(1052, 'tw', '已有寵物。', '', 'RideWyvern.java'),

(1053, 'cn', '请先召唤座龙。', '', 'RideWyvern.java'),
(1053, 'en', 'Summon your Strider first.', '', 'RideWyvern.java'),
(1053, 'ko', 'Summon your Strider first.', '', 'RideWyvern.java'),
(1053, 'tw', '請先召喚座龍。', '', 'RideWyvern.java'),

(1054, 'cn', '座龙尚未达到需求的等级。', '', 'RideWyvern.java'),
(1054, 'en', 'Your Strider Has not reached the required level.', '', 'RideWyvern.java'),
(1054, 'ko', 'Your Strider Has not reached the required level.', '', 'RideWyvern.java'),
(1054, 'tw', '座龍尚未達到需求的等級。', '', 'RideWyvern.java'),

(1055, 'cn', '飞龙召唤成功！', '', 'RideWyvern.java'),
(1055, 'en', 'The Wyvern has been summoned successfully!', '', 'RideWyvern.java'),
(1055, 'ko', 'The Wyvern has been summoned successfully!', '', 'RideWyvern.java'),
(1055, 'tw', '飛龍召喚成功！', '', 'RideWyvern.java'),

(1056, 'cn', '需要 25 个结晶-B级。', '', 'RideWyvern.java'),
(1056, 'en', 'You need 25 Crystals: B Grade.', '', 'RideWyvern.java'),
(1056, 'ko', 'You need 25 Crystals: B Grade.', '', 'RideWyvern.java'),
(1056, 'tw', '需要 25 個結晶-B級。', '', 'RideWyvern.java'),

(1057, 'cn', '收回你的宠物。', '', 'RideWyvern.java'),
(1057, 'en', 'Unsummon your pet.', '', 'RideWyvern.java'),
(1057, 'ko', 'Unsummon your pet.', '', 'RideWyvern.java'),
(1057, 'tw', '收回你的寵物。', '', 'RideWyvern.java'),

(1061, 'cn', '学习技能：', '', 'SkillList.java'),
(1061, 'en', 'Skill learning:', '', 'SkillList.java'),
(1061, 'ko', '스킬 학습:', '', 'SkillList.java'),
(1061, 'tw', '學習技能︰', '', 'SkillList.java'),

(1062, 'cn', '战士', '', 'SkillList.java'),
(1062, 'en', 'fighter', '', 'SkillList.java'),
(1062, 'ko', '전사', '', 'SkillList.java'),
(1062, 'tw', '戰士', '', 'SkillList.java'),

(1063, 'cn', '法师', '', 'SkillList.java'),
(1063, 'en', 'mage', '', 'SkillList.java'),
(1063, 'ko', '마법사', '', 'SkillList.java'),
(1063, 'tw', '法師', '', 'SkillList.java'),

(1064, 'cn', '本身职业技能是最容易学习的，', '', 'SkillList.java'),
(1064, 'en', 'Skills of your class are the easiest to learn.', '', 'SkillList.java'),
(1064, 'ko', 'Skills of your class are the easiest to learn.', '', 'SkillList.java'),
(1064, 'tw', '本身職業技能是最容易學習的，', '', 'SkillList.java'),

(1065, 'cn', '相同种族的其他职业技能则会有点困难，', '', 'SkillList.java'),
(1065, 'en', 'Skills of another class of your race are a little harder.', '', 'SkillList.java'),
(1065, 'ko', 'Skills of another class of your race are a little harder.', '', 'SkillList.java'),
(1065, 'tw', '相同種族的其他職業技能則會有點困難，', '', 'SkillList.java'),

(1066, 'cn', '其他种族的技能将会更难学习，', '', 'SkillList.java'),
(1066, 'en', 'Skills for classes of another race are extremely difficult.', '', 'SkillList.java'),
(1066, 'ko', 'Skills for classes of another race are extremely difficult.', '', 'SkillList.java'),
(1066, 'tw', '其他種族的技能將會更難學習，', '', 'SkillList.java'),

(1067, 'cn', '当然，你也可以学习「', '', 'SkillList.java'),
(1067, 'en', 'But the hardest of all to learn are the  ', '', 'SkillList.java'),
(1067, 'ko', 'But the hardest of all to learn are the  ', '', 'SkillList.java'),
(1067, 'tw', '當然，你也可以學習「', '', 'SkillList.java'),

(1068, 'cn', '」的技能，但它们是最难学习的！', '', 'SkillList.java'),
(1068, 'en', 'skills!', '', 'SkillList.java'),
(1068, 'ko', 'skills!', '', 'SkillList.java'),
(1068, 'tw', '」的技能，但它們是最難學習的！', '', 'SkillList.java'),

(1069, 'cn', '', '学习「;」的职业技能', 'SkillList.java'),
(1069, 'en', '', 'Learn ;\'s class Skills', 'SkillList.java'),
(1069, 'ko', '', 'Learn ;\'s class Skills', 'SkillList.java'),
(1069, 'tw', '', '學習「;」的職業技能', 'SkillList.java'),

(1070, 'cn', '已无技能可学习。', '', 'SkillList.java'),
(1070, 'en', 'No Skills.', '', 'SkillList.java'),
(1070, 'ko', 'No Skills.', '', 'SkillList.java'),
(1070, 'tw', '已無技能可學習。', '', 'SkillList.java'),

(1074, 'cn', '初学者向导：', '', 'SupportBlessing.java'),
(1074, 'en', 'Newbie Guide:', '', 'SupportBlessing.java'),
(1074, 'ko', 'Newbie Guide:', '', 'SupportBlessing.java'),
(1074, 'tw', '初學者嚮導：', '', 'SupportBlessing.java'),

(1075, 'cn', '您不具备接受守护的祝福此项保护的资格。', '', 'SupportBlessing.java'),
(1075, 'en', 'I\'m sorry, but you are not eligible to receive the protection blessing.', '', 'SupportBlessing.java'),
(1075, 'ko', 'I\'m sorry, but you are not eligible to receive the protection blessing.', '', 'SupportBlessing.java'),
(1075, 'tw', '您不具備接受守護的祝福此項保護的資格。', '', 'SupportBlessing.java'),

(1076, 'cn', '守护的祝福是只有给予', '', 'SupportBlessing.java'),
(1076, 'en', 'It can only be bestowed on ', '', 'SupportBlessing.java'),
(1076, 'ko', 'It can only be bestowed on ', '', 'SupportBlessing.java'),
(1076, 'tw', '守護的祝福是只有給予', '', 'SupportBlessing.java'),

(1077, 'cn', '未经过二次转职且等级39以下之角色的特殊庇护。', '', 'SupportBlessing.java'),
(1077, 'en', 'characters below level 39 who have not made a seccond transfer.', '', 'SupportBlessing.java'),
(1077, 'ko', 'characters below level 39 who have not made a seccond transfer.', '', 'SupportBlessing.java'),
(1077, 'tw', '未經過二次轉職且等級39以下之角色的特殊庇護。', '', 'SupportBlessing.java'),

(1081, 'cn', '使魔专用辅助魔法仅限用于使魔身上。若是没有使魔，就无法对使魔施展魔法。', '', 'SupportMagic.java'),
(1081, 'en', 'Only servitors can receive this Support Magic. If you do not have a servitor, you cannot access these spells.', '', 'SupportMagic.java'),
(1081, 'ko', 'Only servitors can receive this Support Magic. If you do not have a servitor, you cannot access these spells.', '', 'SupportMagic.java'),
(1081, 'tw', '使魔專用輔助魔法僅限用於使魔身上。若是沒有使魔，就無法對使魔施展魔法。', '', 'SupportMagic.java'),

(1082, 'cn', '初学者向导：', '', 'SupportMagic.java'),
(1082, 'en', 'Newbie Guide:', '', 'SupportMagic.java'),
(1082, 'ko', 'Newbie Guide:', '', 'SupportMagic.java'),
(1082, 'tw', '初學者嚮導：', '', 'SupportMagic.java'),

(1083, 'cn', '辅助魔法只限于', '', 'SupportMagic.java'),
(1083, 'en', 'Only a ', '', 'SupportMagic.java'),
(1083, 'ko', 'Only a ', '', 'SupportMagic.java'),
(1083, 'tw', '輔助魔法只限於', '', 'SupportMagic.java'),

(1084, 'cn', '等级', '', 'SupportMagic.java'),
(1084, 'en', 'novice character of level ', '', 'SupportMagic.java'),
(1084, 'ko', 'novice character of level ', '', 'SupportMagic.java'),
(1084, 'tw', '等級', '', 'SupportMagic.java'),

(1085, 'cn', '以下的角色', '', 'SupportMagic.java'),
(1085, 'en', ' or less', '', 'SupportMagic.java'),
(1085, 'ko', ' or less', '', 'SupportMagic.java'),
(1085, 'tw', '以下的角色', '', 'SupportMagic.java'),

(1086, 'cn', '可接受。', '', 'SupportMagic.java'),
(1086, 'en', ' can receive my support magic.', '', 'SupportMagic.java'),
(1086, 'ko', ' can receive my support magic.', '', 'SupportMagic.java'),
(1086, 'tw', '可接受。', '', 'SupportMagic.java'),

(1087, 'cn', '初学者向导：<br>目前尚未有任何对您必要的辅助魔法。请您在达到等级', '', 'SupportMagic.java'),
(1087, 'en', 'Come back here when you have reached level ', '', 'SupportMagic.java'),
(1087, 'ko', 'Come back here when you have reached level ', '', 'SupportMagic.java'),
(1087, 'tw', '初學者嚮導：<br>目前尚未有任何對您必要的輔助魔法。請您在達到等級', '', 'SupportMagic.java'),

(1088, 'cn', '之后再来。', '', 'SupportMagic.java'),
(1088, 'en', '. I will give you support magic then.', '', 'SupportMagic.java'),
(1088, 'ko', '. I will give you support magic then.', '', 'SupportMagic.java'),
(1088, 'tw', '之後再來吧。', '', 'SupportMagic.java'),

(1092, 'cn', '艾尔摩王国', '', 'TerritoryStatus.java'),
(1092, 'en', 'The Kingdom of Elmore', '', 'TerritoryStatus.java'),
(1092, 'ko', '엘모어 왕국', '', 'TerritoryStatus.java'),
(1092, 'tw', '艾爾摩王國', '', 'TerritoryStatus.java'),

(1093, 'cn', '亚丁王国', '', 'TerritoryStatus.java'),
(1093, 'en', 'The Kingdom of Aden', '', 'TerritoryStatus.java'),
(1093, 'ko', '아덴 왕국', '', 'TerritoryStatus.java'),
(1093, 'tw', '亞丁王國', '', 'TerritoryStatus.java'),

(1097, 'cn', '操作失败，英雄只能在全域频道每10秒发话一次。', '', 'ChatHeroVoice.java'),
(1097, 'en', 'Action failed. Heroes are only able to speak in the global channel once every 10 seconds.', '', 'ChatHeroVoice.java'),
(1097, 'ko', 'Action failed. Heroes are only able to speak in the global channel once every 10 seconds.', '', 'ChatHeroVoice.java'),
(1097, 'tw', '操作失敗，英雄只能在全域頻道每10秒發話一次。', '', 'ChatHeroVoice.java'),

(1101, 'cn', '请勿连续发言。', '', 'ChatShout.java'),
(1101, 'en', 'Do not spam shout channel.', '', 'ChatShout.java'),
(1101, 'ko', 'Do not spam shout channel.', '', 'ChatShout.java'),
(1101, 'tw', '請勿連續發言。', '', 'ChatShout.java'),

(1105, 'cn', '玩家监禁中。', '', 'ChatTell.java'),
(1105, 'en', 'Player is in jail.', '', 'ChatTell.java'),
(1105, 'ko', 'Player is in jail.', '', 'ChatTell.java'),
(1105, 'tw', '玩家監禁中。', '', 'ChatTell.java'),

(1106, 'cn', '玩家目前为离线交易模式。', '', 'ChatTell.java'),
(1106, 'en', 'Player is in offline mode.', '', 'ChatTell.java'),
(1106, 'ko', 'Player is in offline mode.', '', 'ChatTell.java'),
(1106, 'tw', '玩家目前為離線交易模式。', '', 'ChatTell.java'),

(1110, 'cn', '请勿连续发言。', '', 'ChatTrade.java'),
(1110, 'en', 'Do not spam trade channel.', '', 'ChatTrade.java'),
(1110, 'ko', 'Do not spam trade channel.', '', 'ChatTrade.java'),
(1110, 'tw', '請勿連續發言。', '', 'ChatTrade.java'),

(1114, 'cn', '黄昏的革命军取得胜利时无法骑乘飞龙。', '', 'Book.java'),
(1114, 'en', 'You cannot ride wyvern while Seal of Strife controlled by Dusk.', '', 'Book.java'),
(1114, 'ko', 'You cannot ride wyvern while Seal of Strife controlled by Dusk.', '', 'Book.java'),
(1114, 'tw', '黃昏的革命軍取得勝利時無法騎乘飛龍。', '', 'Book.java'),

(1118, 'cn', '创造「', '', 'ChristmasTree.java'),
(1118, 'en', 'Created ', '', 'ChristmasTree.java'),
(1118, 'ko', 'Created ', '', 'ChristmasTree.java'),
(1118, 'tw', '創造「', '', 'ChristmasTree.java'),

(1119, 'cn', '」在', '', 'ChristmasTree.java'),
(1119, 'en', ' at', '', 'ChristmasTree.java'),
(1119, 'ko', ' at', '', 'ChristmasTree.java'),
(1119, 'tw', '」在', '', 'ChristmasTree.java'),

(1123, 'cn', '现在无法使用钥匙。', '', 'PaganKeys.java'),
(1123, 'en', 'You cannot use the key now.', '', 'PaganKeys.java'),
(1123, 'ko', 'You cannot use the key now.', '', 'PaganKeys.java'),
(1123, 'tw', '現在無法使用鑰匙。', '', 'PaganKeys.java'),

(1124, 'cn', '钥匙无法开启这扇门。', '', 'PaganKeys.java'),
(1124, 'en', 'Incorrect Door.', '', 'PaganKeys.java'),
(1124, 'ko', 'Incorrect Door.', '', 'PaganKeys.java'),
(1124, 'tw', '鑰匙無法開啟這扇門。', '', 'PaganKeys.java'),

(1128, 'cn', '无法在黑暗的祭典使用。', '', 'ScrollOfResurrection.java'),
(1128, 'en', 'You may not resurrect participants in a festival.', '', 'ScrollOfResurrection.java'),
(1128, 'ko', 'You may not resurrect participants in a festival.', '', 'ScrollOfResurrection.java'),
(1128, 'tw', '無法在黑暗的祭典使用。', '', 'ScrollOfResurrection.java'),

(1129, 'cn', '卷轴错误。', '', 'ScrollOfResurrection.java'),
(1129, 'en', 'You do not have the correct scroll', '', 'ScrollOfResurrection.java'),
(1129, 'ko', 'You do not have the correct scroll', '', 'ScrollOfResurrection.java'),
(1129, 'tw', '卷軸錯誤。', '', 'ScrollOfResurrection.java'),

(1141, 'cn', '没有开放钓鱼系统。', '', 'Fishing.java'),
(1141, 'en', 'Fishing server is currently offline', '', 'Fishing.java'),
(1141, 'ko', 'Fishing server is currently offline', '', 'Fishing.java'),
(1141, 'tw', '沒有開放釣魚系統。', '', 'Fishing.java'),

(1149, 'cn', '攻击失败。', '', 'StrSiegeAssault.java'),
(1149, 'en', ' failed.', '', 'StrSiegeAssault.java'),
(1149, 'ko', ' failed.', '', 'StrSiegeAssault.java'),
(1149, 'tw', '攻擊失敗。', '', 'StrSiegeAssault.java'),

(1153, 'cn', '惩罚', '', 'ClanPenalty.java'),
(1153, 'en', 'Penalty', '', 'ClanPenalty.java'),
(1153, 'ko', 'Penalty', '', 'ClanPenalty.java'),
(1153, 'tw', '懲罰', '', 'ClanPenalty.java'),

(1154, 'cn', '取消日', '', 'ClanPenalty.java'),
(1154, 'en', 'Expiration Date', '', 'ClanPenalty.java'),
(1154, 'ko', 'Expiration Date', '', 'ClanPenalty.java'),
(1154, 'tw', '取消日', '', 'ClanPenalty.java'),

(1155, 'cn', '无法加入血盟。', '', 'ClanPenalty.java'),
(1155, 'en', 'Unable to join a clan.', '', 'ClanPenalty.java'),
(1155, 'ko', 'Unable to join a clan.', '', 'ClanPenalty.java'),
(1155, 'tw', '無法加入血盟。', '', 'ClanPenalty.java'),

(1156, 'cn', '无法创立血盟。', '', 'ClanPenalty.java'),
(1156, 'en', 'Unable to create a clan.', '', 'ClanPenalty.java'),
(1156, 'ko', 'Unable to create a clan.', '', 'ClanPenalty.java'),
(1156, 'tw', '無法創立血盟。', '', 'ClanPenalty.java'),

(1157, 'cn', '无法邀请血盟成员。', '', 'ClanPenalty.java'),
(1157, 'en', 'Unable to invite a clan member.', '', 'ClanPenalty.java'),
(1157, 'ko', 'Unable to invite a clan member.', '', 'ClanPenalty.java'),
(1157, 'tw', '無法邀請血盟成員。', '', 'ClanPenalty.java'),

(1158, 'cn', '没有惩罚。', '', 'ClanPenalty.java'),
(1158, 'en', 'No penalty is imposed.', '', 'ClanPenalty.java'),
(1158, 'ko', 'No penalty is imposed.', '', 'ClanPenalty.java'),
(1158, 'tw', '沒有懲罰。', '', 'ClanPenalty.java'),

(1162, 'cn', '无法在黑暗的祭典使用「/脱逃」指令。', '', 'Escape.java'),
(1162, 'en', 'You may not use an escape command in a festival.', '', 'Escape.java'),
(1162, 'ko', 'You may not use an escape command in a festival.', '', 'Escape.java'),
(1162, 'tw', '無法在黑暗的祭典使用「/脫逃」指令。', '', 'Escape.java'),

(1163, 'cn', '无法在 GM 谘询处使用脱逃。', '', 'Escape.java'),
(1163, 'en', 'You can not escape from jail.', '', 'Escape.java'),
(1163, 'ko', 'You can not escape from jail.', '', 'Escape.java'),
(1163, 'tw', '無法在 GM 諮詢處使用脫逃。', '', 'Escape.java'),

(1164, 'cn', '无法在 Boss 区域使用「/脱逃」指令。', '', 'Escape.java'),
(1164, 'en', 'You may not use an escape command in a Boss Zone.', '', 'Escape.java'),
(1164, 'ko', 'You may not use an escape command in a Boss Zone.', '', 'Escape.java'),
(1164, 'tw', '無法在 Boss 區域使用「/脫逃」指令。', '', 'Escape.java'),

(1165, 'cn', '使用脱逃：估计「1」秒。', '', 'Escape.java'),
(1165, 'en', 'You use Escape: 1 seconds.', '', 'Escape.java'),
(1165, 'ko', 'You use Escape: 1 seconds.', '', 'Escape.java'),
(1165, 'tw', '使用脫逃：估計「1」秒。', '', 'Escape.java'),

(1166, 'cn', '', '使用脱逃：估计「;」分钟。;」秒。', 'Escape.java'),
(1166, 'en', '', 'You use Escape: ; minutes.; Seconds.', 'Escape.java'),
(1166, 'ko', '', 'You use Escape: ; minutes.; Seconds.', 'Escape.java'),
(1166, 'tw', '', '使用脫逃：估計「;」分鐘。;」秒。', 'Escape.java'),

(1171, 'cn', '队员：', '', 'PartyInfo.java'),
(1171, 'en', 'Members: ', '', 'PartyInfo.java'),
(1171, 'ko', 'Members: ', '', 'PartyInfo.java'),
(1171, 'tw', '隊員：', '', 'PartyInfo.java'),

(1175, 'cn', '服务端时间：', '', 'Time.java'),
(1175, 'en', 'Server time is ', '', 'Time.java'),
(1175, 'ko', 'Server time is ', '', 'Time.java'),
(1175, 'tw', '伺服器時間：', '', 'Time.java'),

(1179, 'cn', '.deposit ($1 金币 = $2 金块) / .withdraw ($3 金块 = $4 金币)', '', 'Banking.java'),
(1179, 'en', '.deposit ($1 Adena = $2 Goldbar) / .withdraw ($3 Goldbar = $4 Adena)', '', 'Banking.java'),
(1179, 'ko', '.deposit ($1 Adena = $2 Goldbar) / .withdraw ($3 Goldbar = $4 Adena)', '', 'Banking.java'),
(1179, 'tw', '.deposit ($1 金幣 = $2 金塊) / .withdraw ($3 金塊 = $4 金幣)', '', 'Banking.java'),

(1180, 'cn', '谢谢，您现在拥有 $1 个金块，和 $2 金币。', '', 'Banking.java'),
(1180, 'en', 'Thank you, you now have $1 Goldbar(s), and $2 less adena.', '', 'Banking.java'),
(1180, 'ko', 'Thank you, you now have $1 Goldbar(s), and $2 less adena.', '', 'Banking.java'),
(1180, 'tw', '謝謝，您現在擁有 $1 個金塊，和 $2 金幣。', '', 'Banking.java'),

(1181, 'cn', '您没有足够的金币来交换金块，必须要有 $1 金币。', '', 'Banking.java'),
(1181, 'en', 'You do not have enough Adena to convert to Goldbar(s), you need $1 Adena.', '', 'Banking.java'),
(1181, 'ko', 'You do not have enough Adena to convert to Goldbar(s), you need $1 Adena.', '', 'Banking.java'),
(1181, 'tw', '您沒有足夠的金幣來交換金塊，必須要有 $1 金幣。', '', 'Banking.java'),

(1182, 'cn', '谢谢，您现在拥有 $1 金币，和 $2 个金块。', '', 'Banking.java'),
(1182, 'en', 'Thank you, you now have $1 Adena, and $2 less Goldbar(s).', '', 'Banking.java'),
(1182, 'ko', 'Thank you, you now have $1 Adena, and $2 less Goldbar(s).', '', 'Banking.java'),
(1182, 'tw', '謝謝，您現在擁有 $1 金幣，和 $2 個金塊。', '', 'Banking.java'),

(1183, 'cn', '您没有任何金块可以用来交换 $1 金币。', '', 'Banking.java'),
(1183, 'en', 'You do not have any Goldbars to turn into $1 Adena.', '', 'Banking.java'),
(1183, 'ko', 'You do not have any Goldbars to turn into $1 Adena.', '', 'Banking.java'),
(1183, 'tw', '您沒有任何金塊可以用來交換 $1 金幣。', '', 'Banking.java'),

(1187, 'cn', '使用方法：.banchat 名字 [分钟]', '', 'ChatAdmin.java'),
(1187, 'en', 'Usage: .banchat name [minutes]', '', 'ChatAdmin.java'),
(1187, 'ko', '사용법: .banchat name [minutes]', '', 'ChatAdmin.java'),
(1187, 'tw', '使用方法：.banchat 名字 [分鐘]', '', 'ChatAdmin.java'),

(1188, 'cn', '封锁时间错误！', '', 'ChatAdmin.java'),
(1188, 'en', 'Wrong ban length !', '', 'ChatAdmin.java'),
(1188, 'ko', 'Wrong ban length !', '', 'ChatAdmin.java'),
(1188, 'tw', '封鎖時間錯誤！', '', 'ChatAdmin.java'),

(1189, 'cn', '玩家不在线上！', '', 'ChatAdmin.java'),
(1189, 'en', 'Player not online !', '', 'ChatAdmin.java'),
(1189, 'ko', 'Player not online !', '', 'ChatAdmin.java'),
(1189, 'tw', '玩家不在線上！', '', 'ChatAdmin.java'),

(1190, 'cn', '玩家已被封锁！', '', 'ChatAdmin.java'),
(1190, 'en', 'Player is already punished !', '', 'ChatAdmin.java'),
(1190, 'ko', 'Player is already punished !', '', 'ChatAdmin.java'),
(1190, 'tw', '玩家已被封鎖！', '', 'ChatAdmin.java'),

(1191, 'cn', '不能封锁自己！', '', 'ChatAdmin.java'),
(1191, 'en', 'You can\'t ban yourself !', '', 'ChatAdmin.java'),
(1191, 'ko', 'You can\'t ban yourself !', '', 'ChatAdmin.java'),
(1191, 'tw', '不能封鎖自己！', '', 'ChatAdmin.java'),

(1192, 'cn', '不能封锁管理者！', '', 'ChatAdmin.java'),
(1192, 'en', 'You can\'t ban GM !', '', 'ChatAdmin.java'),
(1192, 'ko', 'You can\'t ban GM !', '', 'ChatAdmin.java'),
(1192, 'tw', '不能封鎖管理者！', '', 'ChatAdmin.java'),

(1193, 'cn', '不能封锁管理者！', '', 'ChatAdmin.java'),
(1193, 'en', 'You can\'t ban moderator !', '', 'ChatAdmin.java'),
(1193, 'ko', 'You can\'t ban moderator !', '', 'ChatAdmin.java'),
(1193, 'tw', '不能封鎖管理者！', '', 'ChatAdmin.java'),

(1194, 'cn', '执行禁言的管理者：', '', 'ChatAdmin.java'),
(1194, 'en', 'Chat banned by moderator ', '', 'ChatAdmin.java'),
(1194, 'ko', 'Chat banned by moderator ', '', 'ChatAdmin.java'),
(1194, 'tw', '執行禁言的管理者：', '', 'ChatAdmin.java'),

(1195, 'cn', '', '玩家「;」禁言「;」分钟。;」永远禁言。;」解除禁言。', 'ChatAdmin.java'),
(1195, 'en', '', 'Player ; chat banned for ; minutes.; chat banned forever.; chat unbanned.', 'ChatAdmin.java'),
(1195, 'ko', '', 'Player ; chat banned for ; minutes.; chat banned forever.; chat unbanned.', 'ChatAdmin.java'),
(1195, 'tw', '', '玩家「;」禁言「;」分鐘。;」永遠禁言。;」解除禁言。', 'ChatAdmin.java'),

(1196, 'cn', '没有发现该玩家！', '', 'ChatAdmin.java'),
(1196, 'en', 'Player not found !', '', 'ChatAdmin.java'),
(1196, 'ko', 'Player not found !', '', 'ChatAdmin.java'),
(1196, 'tw', '沒有發現該玩家！', '', 'ChatAdmin.java'),

(1197, 'cn', '使用方法：.unbanchat 名字', '', 'ChatAdmin.java'),
(1197, 'en', 'Usage: .unbanchat name', '', 'ChatAdmin.java'),
(1197, 'ko', '사용법: .unbanchat name', '', 'ChatAdmin.java'),
(1197, 'tw', '使用方法：.unbanchat 名字', '', 'ChatAdmin.java'),

(1198, 'cn', '玩家不在线上！', '', 'ChatAdmin.java'),
(1198, 'en', 'Player not online !', '', 'ChatAdmin.java'),
(1198, 'ko', 'Player not online !', '', 'ChatAdmin.java'),
(1198, 'tw', '玩家不在線上！', '', 'ChatAdmin.java'),

(1199, 'cn', '玩家并未被禁言！', '', 'ChatAdmin.java'),
(1199, 'en', 'Player is not chat banned !', '', 'ChatAdmin.java'),
(1199, 'ko', 'Player is not chat banned !', '', 'ChatAdmin.java'),
(1199, 'tw', '玩家並未被禁言！', '', 'ChatAdmin.java'),

(1200, 'cn', '解除禁言的管理者：', '', 'ChatAdmin.java'),
(1200, 'en', 'Chat unbanned by moderator ', '', 'ChatAdmin.java'),
(1200, 'ko', 'Chat unbanned by moderator ', '', 'ChatAdmin.java'),
(1200, 'tw', '解除禁言的管理者：', '', 'ChatAdmin.java'),

(1204, 'cn', '「$2」将你的血盟等级更改为「$1」。', '', 'set.java'),
(1204, 'en', 'Your clan privileges have been set to $1 by $2.', '', 'set.java'),
(1204, 'ko', 'Your clan privileges have been set to $1 by $2.', '', 'set.java'),
(1204, 'tw', '「$2」將你的血盟等級更改為「$1」。', '', 'set.java'),

(1208, 'cn', 'L2JTW 活动引擎', '', 'stats.java'),
(1208, 'en', 'L2J EVENT ENGINE', '', 'stats.java'),
(1208, 'ko', 'L2J EVENT ENGINE', '', 'stats.java'),
(1208, 'tw', 'L2JTW 活動引擎', '', 'stats.java'),

(1209, 'cn', '统计玩家', '', 'stats.java'),
(1209, 'en', 'Statistics for player ', '', 'stats.java'),
(1209, 'ko', 'Statistics for player ', '', 'stats.java'),
(1209, 'tw', '統計玩家', '', 'stats.java'),

(1210, 'cn', '总共击倒', '', 'stats.java'),
(1210, 'en', 'Total kills ', '', 'stats.java'),
(1210, 'ko', 'Total kills ', '', 'stats.java'),
(1210, 'tw', '總共擊倒', '', 'stats.java'),

(1211, 'cn', '详细列出：', '', 'stats.java'),
(1211, 'en', 'Detailed list: ', '', 'stats.java'),
(1211, 'ko', 'Detailed list: ', '', 'stats.java'),
(1211, 'tw', '詳細列出：', '', 'stats.java'),

(1215, 'cn', '你们现在离婚了。', '', 'Wedding.java'),
(1215, 'en', 'You are now divorced.', '', 'Wedding.java'),
(1215, 'ko', 'You are now divorced.', '', 'Wedding.java'),
(1215, 'tw', '你們現在離婚了。', '', 'Wedding.java'),

(1216, 'cn', '你们不是夫妻了。', '', 'Wedding.java'),
(1216, 'en', 'You have broken up as a couple.', '', 'Wedding.java'),
(1216, 'ko', 'You have broken up as a couple.', '', 'Wedding.java'),
(1216, 'tw', '你們不是夫妻了。', '', 'Wedding.java'),

(1217, 'cn', '你的配偶决定与你离婚。', '', 'Wedding.java'),
(1217, 'en', 'Your spouse has decided to divorce you.', '', 'Wedding.java'),
(1217, 'ko', 'Your spouse has decided to divorce you.', '', 'Wedding.java'),
(1217, 'tw', '你的配偶決定與你離婚。', '', 'Wedding.java'),

(1218, 'cn', '你的伴侣决定与你取消婚约。', '', 'Wedding.java'),
(1218, 'en', 'Your fiance has decided to break the engagement with you.', '', 'Wedding.java'),
(1218, 'ko', 'Your fiance has decided to break the engagement with you.', '', 'Wedding.java'),
(1218, 'tw', '你的伴侶決定與你取消婚約。', '', 'Wedding.java'),

(1219, 'cn', '没有选择目标。', '', 'Wedding.java'),
(1219, 'en', 'You have no one targeted.', '', 'Wedding.java'),
(1219, 'ko', 'You have no one targeted.', '', 'Wedding.java'),
(1219, 'tw', '沒有選擇目標。', '', 'Wedding.java'),

(1220, 'cn', '你只能跟玩家订婚。', '', 'Wedding.java'),
(1220, 'en', 'You can only ask another player to engage you.', '', 'Wedding.java'),
(1220, 'ko', 'You can only ask another player to engage you.', '', 'Wedding.java'),
(1220, 'tw', '你只能跟玩家訂婚。', '', 'Wedding.java'),

(1221, 'cn', '你已经订婚了。', '', 'Wedding.java'),
(1221, 'en', 'You are already engaged.', '', 'Wedding.java'),
(1221, 'ko', 'You are already engaged.', '', 'Wedding.java'),
(1221, 'tw', '你已經訂婚了。', '', 'Wedding.java'),

(1222, 'cn', '目标错误。', '', 'Wedding.java'),
(1222, 'en', 'Is there something wrong with you, are you trying to go out with youself?', '', 'Wedding.java'),
(1222, 'ko', 'Is there something wrong with you, are you trying to go out with youself?', '', 'Wedding.java'),
(1222, 'tw', '目標錯誤。', '', 'Wedding.java'),

(1223, 'cn', '玩家已经结婚了。', '', 'Wedding.java'),
(1223, 'en', 'Player already married.', '', 'Wedding.java'),
(1223, 'ko', 'Player already married.', '', 'Wedding.java'),
(1223, 'tw', '玩家已經結婚了。', '', 'Wedding.java'),

(1224, 'cn', '玩家已经邀请其他人。', '', 'Wedding.java'),
(1224, 'en', 'Player already asked by someone else.', '', 'Wedding.java'),
(1224, 'ko', 'Player already asked by someone else.', '', 'Wedding.java'),
(1224, 'tw', '玩家已經邀請其他人。', '', 'Wedding.java'),

(1225, 'cn', '玩家已经与其他人订婚。', '', 'Wedding.java'),
(1225, 'en', 'Player already engaged with someone else.', '', 'Wedding.java'),
(1225, 'ko', 'Player already engaged with someone else.', '', 'Wedding.java'),
(1225, 'tw', '玩家已經與其他人訂婚。', '', 'Wedding.java'),

(1226, 'cn', '这个服务端不允许同性结婚！', '', 'Wedding.java'),
(1226, 'en', 'Gay marriage is not allowed on this server!', '', 'Wedding.java'),
(1226, 'ko', 'Gay marriage is not allowed on this server!', '', 'Wedding.java'),
(1226, 'tw', '這個伺服器不允許同性結婚！', '', 'Wedding.java'),

(1227, 'cn', '请求的对象必须在好友名单内。', '', 'Wedding.java'),
(1227, 'en', 'The player you want to ask is not on your friends list, you must first be on each others friends list before you choose to engage.', '', 'Wedding.java'),
(1227, 'ko', 'The player you want to ask is not on your friends list, you must first be on each others friends list before you choose to engage.', '', 'Wedding.java'),
(1227, 'tw', '請求的對象必須在好友名單內。', '', 'Wedding.java'),

(1228, 'cn', '', '「;」向你订婚，请问你愿意接受吗？', 'Wedding.java'),
(1228, 'en', '', '; is asking to engage you. Do you want to start a new relationship?', 'Wedding.java'),
(1228, 'ko', '', '; is asking to engage you. Do you want to start a new relationship?', 'Wedding.java'),
(1228, 'tw', '', '「;」向你訂婚，請問你願意接受嗎？', 'Wedding.java'),

(1229, 'cn', '你没有结婚。', '', 'Wedding.java'),
(1229, 'en', 'You\'re not married.', '', 'Wedding.java'),
(1229, 'ko', 'You\'re not married.', '', 'Wedding.java'),
(1229, 'tw', '你沒有結婚。', '', 'Wedding.java'),

(1230, 'cn', '资料库中找不到你伴侣的资料。', '', 'Wedding.java'),
(1230, 'en', 'Couldn\'t find your fiance in the Database - Inform a Gamemaster.', '', 'Wedding.java'),
(1230, 'ko', 'Couldn\'t find your fiance in the Database - Inform a Gamemaster.', '', 'Wedding.java'),
(1230, 'tw', '資料庫中找不到你伴侶的資料。', '', 'Wedding.java'),

(1231, 'cn', '你在 Boss 区域里面。', '', 'Wedding.java'),
(1231, 'en', 'You are inside a Boss Zone.', '', 'Wedding.java'),
(1231, 'ko', 'You are inside a Boss Zone.', '', 'Wedding.java'),
(1231, 'tw', '你在 Boss 區域裡面。', '', 'Wedding.java'),

(1232, 'cn', '无法在拥有斗争旗帜时进行传送。', '', 'Wedding.java'),
(1232, 'en', 'While you are holding a Combat Flag or Territory Ward you can\'t go to your love!', '', 'Wedding.java'),
(1232, 'ko', 'While you are holding a Combat Flag or Territory Ward you can\'t go to your love!', '', 'Wedding.java'),
(1232, 'tw', '無法在擁有鬥爭旗幟時進行傳送。', '', 'Wedding.java'),

(1233, 'cn', '你的伴侣不在线上。', '', 'Wedding.java'),
(1233, 'en', 'Your partner is not online.', '', 'Wedding.java'),
(1233, 'ko', '당신의 파트너는 온라인상태가 아닙니다.', '', 'Wedding.java'),
(1233, 'tw', '你的伴侶不在線上。', '', 'Wedding.java'),

(1234, 'cn', '你的伴侣是在另一个世界！', '', 'Wedding.java'),
(1234, 'en', 'Your partner is in another World!', '', 'Wedding.java'),
(1234, 'ko', 'Your partner is in another World!', '', 'Wedding.java'),
(1234, 'tw', '你的伴侶是在另一個世界！', '', 'Wedding.java'),

(1235, 'cn', '你的伴侣监禁中。', '', 'Wedding.java'),
(1235, 'en', 'Your partner is in Jail.', '', 'Wedding.java'),
(1235, 'ko', '당신의 파트너는 감옥에 있습니다.', '', 'Wedding.java'),
(1235, 'tw', '你的伴侶監禁中。', '', 'Wedding.java'),

(1236, 'cn', '你的伴侣在 Boss 区域里面。', '', 'Wedding.java'),
(1236, 'en', 'Your partner is inside a Boss Zone.', '', 'Wedding.java'),
(1236, 'ko', 'Your partner is inside a Boss Zone.', '', 'Wedding.java'),
(1236, 'tw', '你的伴侶在 Boss 區域裡面。', '', 'Wedding.java'),

(1237, 'cn', '你的伴侣在奥林匹亚竞赛中。', '', 'Wedding.java'),
(1237, 'en', 'Your partner is in the Olympiad now.', '', 'Wedding.java'),
(1237, 'ko', 'Your partner is in the Olympiad now.', '', 'Wedding.java'),
(1237, 'tw', '你的伴侶在奧林匹亞競賽中。', '', 'Wedding.java'),

(1238, 'cn', '你的伴侣在参与活动中。', '', 'Wedding.java'),
(1238, 'en', 'Your partner is in an event.', '', 'Wedding.java'),
(1238, 'ko', 'Your partner is in an event.', '', 'Wedding.java'),
(1238, 'tw', '你的伴侶在參與活動中。', '', 'Wedding.java'),

(1239, 'cn', '你的伴侣在决斗中。', '', 'Wedding.java'),
(1239, 'en', 'Your partner is in a duel.', '', 'Wedding.java'),
(1239, 'ko', 'Your partner is in a duel.', '', 'Wedding.java'),
(1239, 'tw', '你的伴侶在決鬥中。', '', 'Wedding.java'),

(1240, 'cn', '你的伴侣在黑暗的祭典。', '', 'Wedding.java'),
(1240, 'en', 'Your partner is in a festival.', '', 'Wedding.java'),
(1240, 'ko', 'Your partner is in a festival.', '', 'Wedding.java'),
(1240, 'tw', '你的伴侶在黑暗的祭典。', '', 'Wedding.java'),

(1241, 'cn', '你的伴侣在次元的裂痕。', '', 'Wedding.java'),
(1241, 'en', 'Your partner is in dimensional rift.', '', 'Wedding.java'),
(1241, 'ko', 'Your partner is in dimensional rift.', '', 'Wedding.java'),
(1241, 'tw', '你的伴侶在次元的裂痕。', '', 'Wedding.java'),

(1242, 'cn', '你的伴侣在观赏比赛中。', '', 'Wedding.java'),
(1242, 'en', 'Your partner is in the observation.', '', 'Wedding.java'),
(1242, 'ko', 'Your partner is in the observation.', '', 'Wedding.java'),
(1242, 'tw', '你的伴侶在觀賞比賽中。', '', 'Wedding.java'),

(1243, 'cn', '你的伴侣在攻城战中，所以无法前往。', '', 'Wedding.java'),
(1243, 'en', 'Your partner is in a siege, you cannot go to your partner', '', 'Wedding.java'),
(1243, 'ko', 'Your partner is in a siege, you cannot go to your partner', '', 'Wedding.java'),
(1243, 'tw', '你的伴侶在攻城戰中，所以無法前往。', '', 'Wedding.java'),

(1244, 'cn', '你的伴侣在七封印的地监，而你不是胜利阵营的一方！', '', 'Wedding.java'),
(1244, 'en', 'Your Partner is in a Seven Signs Dungeon and you are not in the winner Cabal!', '', 'Wedding.java'),
(1244, 'ko', 'Your Partner is in a Seven Signs Dungeon and you are not in the winner Cabal!', '', 'Wedding.java'),
(1244, 'tw', '你的伴侶在七封印的地監，而你不是勝利陣營的一方！', '', 'Wedding.java'),

(1245, 'cn', '你的伴侣在七封印的地监，而你没有加入任何一方！', '', 'Wedding.java'),
(1245, 'en', 'Your Partner is in a Seven Signs Dungeon and you are not registered!', '', 'Wedding.java'),
(1245, 'ko', 'Your Partner is in a Seven Signs Dungeon and you are not registered!', '', 'Wedding.java'),
(1245, 'tw', '你的伴侶在七封印的地監，而你沒有加入任何一方！', '', 'Wedding.java'),

(1246, 'cn', '你的伴侣在参与活动中。', '', 'Wedding.java'),
(1246, 'en', 'Your partner is in an event.', '', 'Wedding.java'),
(1246, 'ko', 'Your partner is in an event.', '', 'Wedding.java'),
(1246, 'tw', '你的伴侶在參與活動中。', '', 'Wedding.java'),

(1247, 'cn', '您的伴侣目前身在无法召唤的地区。', '', 'Wedding.java'),
(1247, 'en', 'Your partner is in area which blocks summoning.', '', 'Wedding.java'),
(1247, 'ko', 'Your partner is in area which blocks summoning.', '', 'Wedding.java'),
(1247, 'tw', '您的伴侶目前身在無法召喚的地區。', '', 'Wedding.java'),

(1248, 'cn', '你在监禁中！', '', 'Wedding.java'),
(1248, 'en', 'You are in Jail!', '', 'Wedding.java'),
(1248, 'ko', 'You are in Jail!', '', 'Wedding.java'),
(1248, 'tw', '你在監禁中！', '', 'Wedding.java'),

(1249, 'cn', '你在奥林匹亚竞赛中。', '', 'Wedding.java'),
(1249, 'en', 'You are in the Olympiad now.', '', 'Wedding.java'),
(1249, 'ko', 'You are in the Olympiad now.', '', 'Wedding.java'),
(1249, 'tw', '你在奧林匹亞競賽中。', '', 'Wedding.java'),

(1250, 'cn', '你在参加活动中。', '', 'Wedding.java'),
(1250, 'en', 'You are in an event.', '', 'Wedding.java'),
(1250, 'ko', 'You are in an event.', '', 'Wedding.java'),
(1250, 'tw', '你在參加活動中。', '', 'Wedding.java'),

(1251, 'cn', '你在决斗中！', '', 'Wedding.java'),
(1251, 'en', 'You are in a duel!', '', 'Wedding.java'),
(1251, 'ko', 'You are in a duel!', '', 'Wedding.java'),
(1251, 'tw', '你在決鬥中！', '', 'Wedding.java'),

(1252, 'cn', '你在观赏比赛中。', '', 'Wedding.java'),
(1252, 'en', 'You are in the observation.', '', 'Wedding.java'),
(1252, 'ko', 'You are in the observation.', '', 'Wedding.java'),
(1252, 'tw', '你在觀賞比賽中。', '', 'Wedding.java'),

(1253, 'cn', '你在攻城战中，所以无法前往。', '', 'Wedding.java'),
(1253, 'en', 'You are in a siege, you cannot go to your partner.', '', 'Wedding.java'),
(1253, 'ko', 'You are in a siege, you cannot go to your partner.', '', 'Wedding.java'),
(1253, 'tw', '你在攻城戰中，所以無法前往。', '', 'Wedding.java'),

(1254, 'cn', '你在黑暗的祭典。', '', 'Wedding.java'),
(1254, 'en', 'You are in a festival.', '', 'Wedding.java'),
(1254, 'ko', 'You are in a festival.', '', 'Wedding.java'),
(1254, 'tw', '你在黑暗的祭典。', '', 'Wedding.java'),

(1255, 'cn', '你在次元的裂痕。', '', 'Wedding.java'),
(1255, 'en', 'You are in the dimensional rift.', '', 'Wedding.java'),
(1255, 'ko', 'You are in the dimensional rift.', '', 'Wedding.java'),
(1255, 'tw', '你在次元的裂痕。', '', 'Wedding.java'),

(1256, 'cn', '你目前身在无法召唤的地区。', '', 'Wedding.java'),
(1256, 'en', 'You are in area which blocks summoning.', '', 'Wedding.java'),
(1256, 'ko', 'You are in area which blocks summoning.', '', 'Wedding.java'),
(1256, 'tw', '你目前身在無法召喚的地區。', '', 'Wedding.java'),

(1257, 'cn', '持有受诅咒的武器，无法进行传送。', '', 'Wedding.java'),
(1257, 'en', 'While you are holding a Cursed Weapon you can\'t go to your love!', '', 'Wedding.java'),
(1257, 'ko', 'While you are holding a Cursed Weapon you can\'t go to your love!', '', 'Wedding.java'),
(1257, 'tw', '持有受詛咒的武器，無法進行傳送。', '', 'Wedding.java'),

(1258, 'cn', '你的伴侣持有受诅咒的武器，无法进行传送。', '', 'Wedding.java'),
(1258, 'en', 'Your partner is holding a Cursed Weapon and you can\'t go to your love!', '', 'Wedding.java'),
(1258, 'ko', 'Your partner is holding a Cursed Weapon and you can\'t go to your love!', '', 'Wedding.java'),
(1258, 'tw', '你的伴侶持有受詛咒的武器，無法進行傳送。', '', 'Wedding.java'),

(1259, 'cn', '', '「;」分钟后，将传送到你的伴侣身边。', 'Wedding.java'),
(1259, 'en', '', 'After ; min. you will be teleported to your partner.', 'Wedding.java'),
(1259, 'ko', '', 'After ; min. you will be teleported to your partner.', 'Wedding.java'),
(1259, 'tw', '', '「;」分鐘後，將傳送到你的伴侶身邊。', 'Wedding.java'),

(1260, 'cn', '你的伴侣在攻城战中，所以无法前往。', '', 'Wedding.java'),
(1260, 'en', 'Your partner is in siege, you can\'t go to your partner.', '', 'Wedding.java'),
(1260, 'ko', 'Your partner is in siege, you can\'t go to your partner.', '', 'Wedding.java'),
(1260, 'tw', '你的伴侶在攻城戰中，所以無法前往。', '', 'Wedding.java'),

(1261, 'cn', '你在 Boss 区域里面。', '', 'Wedding.java'),
(1261, 'en', 'You are inside a Boss Zone.', '', 'Wedding.java'),
(1261, 'ko', 'You are inside a Boss Zone.', '', 'Wedding.java'),
(1261, 'tw', '你在 Boss 區域裡面。', '', 'Wedding.java'),

(1320, 'cn', '最大 HP', '', 'L2NpcActionShift.java'),
(1320, 'en', 'Max.HP', '', 'L2NpcActionShift.java'),
(1320, 'ko', 'Max.HP', '', 'L2NpcActionShift.java'),
(1320, 'tw', '最大 HP', '', 'L2NpcActionShift.java'),

(1321, 'cn', '最大 MP', '', 'L2NpcActionShift.java'),
(1321, 'en', 'Max.MP', '', 'L2NpcActionShift.java'),
(1321, 'ko', 'Max.MP', '', 'L2NpcActionShift.java'),
(1321, 'tw', '最大 MP', '', 'L2NpcActionShift.java'),

(1322, 'cn', '物攻', '', 'L2NpcActionShift.java'),
(1322, 'en', 'P.Atk.', '', 'L2NpcActionShift.java'),
(1322, 'ko', 'P.Atk.', '', 'L2NpcActionShift.java'),
(1322, 'tw', '物攻', '', 'L2NpcActionShift.java'),

(1323, 'cn', '魔攻', '', 'L2NpcActionShift.java'),
(1323, 'en', 'M.Atk.', '', 'L2NpcActionShift.java'),
(1323, 'ko', 'M.Atk.', '', 'L2NpcActionShift.java'),
(1323, 'tw', '魔攻', '', 'L2NpcActionShift.java'),

(1324, 'cn', '物防', '', 'L2NpcActionShift.java'),
(1324, 'en', 'P.Def.', '', 'L2NpcActionShift.java'),
(1324, 'ko', 'P.Def.', '', 'L2NpcActionShift.java'),
(1324, 'tw', '物防', '', 'L2NpcActionShift.java'),

(1325, 'cn', '魔防', '', 'L2NpcActionShift.java'),
(1325, 'en', 'M.Def.', '', 'L2NpcActionShift.java'),
(1325, 'ko', 'M.Def.', '', 'L2NpcActionShift.java'),
(1325, 'tw', '魔防', '', 'L2NpcActionShift.java'),

(1326, 'cn', '命中', '', 'L2NpcActionShift.java'),
(1326, 'en', 'Accuracy', '', 'L2NpcActionShift.java'),
(1326, 'ko', 'Accuracy', '', 'L2NpcActionShift.java'),
(1326, 'tw', '命中', '', 'L2NpcActionShift.java'),

(1327, 'cn', '回避', '', 'L2NpcActionShift.java'),
(1327, 'en', 'Evasion', '', 'L2NpcActionShift.java'),
(1327, 'ko', 'Evasion', '', 'L2NpcActionShift.java'),
(1327, 'tw', '迴避', '', 'L2NpcActionShift.java'),

(1328, 'cn', '致命', '', 'L2NpcActionShift.java'),
(1328, 'en', 'Critical', '', 'L2NpcActionShift.java'),
(1328, 'ko', 'Critical', '', 'L2NpcActionShift.java'),
(1328, 'tw', '致命', '', 'L2NpcActionShift.java'),

(1329, 'cn', '速度', '', 'L2NpcActionShift.java'),
(1329, 'en', 'Speed', '', 'L2NpcActionShift.java'),
(1329, 'ko', 'Speed', '', 'L2NpcActionShift.java'),
(1329, 'tw', '速度', '', 'L2NpcActionShift.java'),

(1330, 'cn', '攻速', '', 'L2NpcActionShift.java'),
(1330, 'en', 'Atk.Speed', '', 'L2NpcActionShift.java'),
(1330, 'ko', 'Atk.Speed', '', 'L2NpcActionShift.java'),
(1330, 'tw', '攻速', '', 'L2NpcActionShift.java'),

(1331, 'cn', '施法', '', 'L2NpcActionShift.java'),
(1331, 'en', 'Cast.Speed', '', 'L2NpcActionShift.java'),
(1331, 'ko', 'Cast.Speed', '', 'L2NpcActionShift.java'),
(1331, 'tw', '施法', '', 'L2NpcActionShift.java'),

(1338, 'cn', '[战斗状态]', '', 'L2NpcActionShift.java'),
(1338, 'en', '[Combat Stats]', '', 'L2NpcActionShift.java'),
(1338, 'ko', '[Combat Stats]', '', 'L2NpcActionShift.java'),
(1338, 'tw', '[戰鬥狀態]', '', 'L2NpcActionShift.java'),

(1339, 'cn', '种族', '', 'L2NpcActionShift.java'),
(1339, 'en', 'Race', '', 'L2NpcActionShift.java'),
(1339, 'ko', 'Race', '', 'L2NpcActionShift.java'),
(1339, 'tw', '種族', '', 'L2NpcActionShift.java'),

(1340, 'cn', '[基本能力]', '', 'L2NpcActionShift.java'),
(1340, 'en', '[Basic Stats]', '', 'L2NpcActionShift.java'),
(1340, 'ko', '[Basic Stats]', '', 'L2NpcActionShift.java'),
(1340, 'tw', '[基本能力]', '', 'L2NpcActionShift.java'),

(1341, 'cn', '[掉落资讯]', '', 'L2NpcActionShift.java'),
(1341, 'en', '[Drop Info]', '', 'L2NpcActionShift.java'),
(1341, 'ko', '[Drop Info]', '', 'L2NpcActionShift.java'),
(1341, 'tw', '[掉落資訊]', '', 'L2NpcActionShift.java'),

(1342, 'cn', '机率：', '', 'L2NpcActionShift.java'),
(1342, 'en', 'Rates legend: ', '', 'L2NpcActionShift.java'),
(1342, 'ko', 'Rates legend: ', '', 'L2NpcActionShift.java'),
(1342, 'tw', '機率：', '', 'L2NpcActionShift.java'),

(1343, 'cn', '低于 30%', '', 'L2NpcActionShift.java'),
(1343, 'en', 'less than 30%', '', 'L2NpcActionShift.java'),
(1343, 'ko', 'less than 30%', '', 'L2NpcActionShift.java'),
(1343, 'tw', '低於 30%', '', 'L2NpcActionShift.java'),

(1344, 'cn', '', '任务;回收;掉落', 'L2NpcActionShift.java'),
(1344, 'en', '', 'Quest;Sweep;Drop', 'L2NpcActionShift.java'),
(1344, 'ko', '', 'Quest;Sweep;Drop', 'L2NpcActionShift.java'),
(1344, 'tw', '', '任務;回收;掉落', 'L2NpcActionShift.java'),

(1355, 'cn', '决斗场看板遗失：', '', 'L2StaticObjectInstanceAction.java'),
(1355, 'en', 'Signboard is missing:', '', 'L2StaticObjectInstanceAction.java'),
(1355, 'ko', 'Signboard is missing:', '', 'L2StaticObjectInstanceAction.java'),
(1355, 'tw', '決鬥場看板遺失：', '', 'L2StaticObjectInstanceAction.java'),

(1360, 'cn', '物件 ID：', '', 'L2StaticObjectInstanceActionShift.java'),
(1360, 'en', 'Object ID:  ', '', 'L2StaticObjectInstanceActionShift.java'),
(1360, 'ko', 'Object ID:  ', '', 'L2StaticObjectInstanceActionShift.java'),
(1360, 'tw', '物件 ID：', '', 'L2StaticObjectInstanceActionShift.java'),

(1361, 'cn', '静态物件 ID：', '', 'L2StaticObjectInstanceActionShift.java'),
(1361, 'en', 'Static Object ID: ', '', 'L2StaticObjectInstanceActionShift.java'),
(1361, 'ko', 'Static Object ID: ', '', 'L2StaticObjectInstanceActionShift.java'),
(1361, 'tw', '靜態物件 ID：', '', 'L2StaticObjectInstanceActionShift.java'),

(1362, 'cn', '模组索引：', '', 'L2StaticObjectInstanceActionShift.java'),
(1362, 'en', 'Mesh Index: ', '', 'L2StaticObjectInstanceActionShift.java'),
(1362, 'ko', 'Mesh Index: ', '', 'L2StaticObjectInstanceActionShift.java'),
(1362, 'tw', '模組索引：', '', 'L2StaticObjectInstanceActionShift.java'),

(1363, 'cn', '类型：', '', 'L2StaticObjectInstanceActionShift.java'),
(1363, 'en', 'Class: ', '', 'L2StaticObjectInstanceActionShift.java'),
(1363, 'ko', 'Class: ', '', 'L2StaticObjectInstanceActionShift.java'),
(1363, 'tw', '類型：', '', 'L2StaticObjectInstanceActionShift.java'),

(1370, 'cn', '加入 GM 列表。', '', 'AdminAdmin.java'),
(1370, 'en', 'Registered into gm list', '', 'AdminAdmin.java'),
(1370, 'ko', 'Registered into gm list', '', 'AdminAdmin.java'),
(1370, 'tw', '加入 GM 列表。', '', 'AdminAdmin.java'),

(1371, 'cn', '离开 GM 列表。', '', 'AdminAdmin.java'),
(1371, 'en', 'Removed from gm list', '', 'AdminAdmin.java'),
(1371, 'ko', 'Removed from gm list', '', 'AdminAdmin.java'),
(1371, 'tw', '離開 GM 列表。', '', 'AdminAdmin.java'),

(1372, 'cn', '奥林匹亚系统储存！', '', 'AdminAdmin.java'),
(1372, 'en', 'olympiad system saved.', '', 'AdminAdmin.java'),
(1372, 'ko', '올림피아드 시스템이 저장되었습니다.', '', 'AdminAdmin.java'),
(1372, 'tw', '奧林匹亞系統儲存！', '', 'AdminAdmin.java'),

(1373, 'cn', '设置英雄。', '', 'AdminAdmin.java'),
(1373, 'en', 'Heroes formed', '', 'AdminAdmin.java'),
(1373, 'ko', 'Heroes formed', '', 'AdminAdmin.java'),
(1373, 'tw', '設置英雄。', '', 'AdminAdmin.java'),

(1374, 'cn', '无重量模式启用。', '', 'AdminAdmin.java'),
(1374, 'en', 'Diet mode on', '', 'AdminAdmin.java'),
(1374, 'ko', '다이어트 모드가 켜졌습니다', '', 'AdminAdmin.java'),
(1374, 'tw', '無重量模式啟用。', '', 'AdminAdmin.java'),

(1375, 'cn', '无重量模式关闭。', '', 'AdminAdmin.java'),
(1375, 'en', 'Diet mode off', '', 'AdminAdmin.java'),
(1375, 'ko', '다이어트 모드가 꺼졌습니다', '', 'AdminAdmin.java'),
(1375, 'tw', '無重量模式關閉。', '', 'AdminAdmin.java'),

(1376, 'cn', '交易开启。', '', 'AdminAdmin.java'),
(1376, 'en', 'Trade refusal enabled', '', 'AdminAdmin.java'),
(1376, 'ko', '교환불가 아이템, 거래 가능 하도록 설정되었습니다', '', 'AdminAdmin.java'),
(1376, 'tw', '交易開啟。', '', 'AdminAdmin.java'),

(1377, 'cn', '交易关闭。', '', 'AdminAdmin.java'),
(1377, 'en', 'Trade refusal disabled', '', 'AdminAdmin.java'),
(1377, 'ko', '교환불가 아이템, 거래 불가능 하도록 설정되었습니다', '', 'AdminAdmin.java'),
(1377, 'tw', '交易關閉。', '', 'AdminAdmin.java'),

(1378, 'cn', 'MultiSell 重新载入。', '', 'AdminAdmin.java'),
(1378, 'en', 'All Multisells have been reloaded', '', 'AdminAdmin.java'),
(1378, 'ko', '전체 멀티셀이 갱신되었습니다', '', 'AdminAdmin.java'),
(1378, 'tw', 'MultiSell 重新載入。', '', 'AdminAdmin.java'),

(1379, 'cn', '传送重新载入。', '', 'AdminAdmin.java'),
(1379, 'en', 'Teleport Locations have been reloaded', '', 'AdminAdmin.java'),
(1379, 'ko', '텔레포트 위치가 갱신되었습니다', '', 'AdminAdmin.java'),
(1379, 'tw', '傳送重新載入。', '', 'AdminAdmin.java'),

(1380, 'cn', '技能重新载入。', '', 'AdminAdmin.java'),
(1380, 'en', 'All Skills have been reloaded', '', 'AdminAdmin.java'),
(1380, 'ko', '전체 스킬이 갱신되었습니다', '', 'AdminAdmin.java'),
(1380, 'tw', '技能重新載入。', '', 'AdminAdmin.java'),

(1381, 'cn', 'NPC 重新载入。', '', 'AdminAdmin.java'),
(1381, 'en', 'All NPCs have been reloaded', '', 'AdminAdmin.java'),
(1381, 'ko', '전체 NPC가 갱신되었습니다', '', 'AdminAdmin.java'),
(1381, 'tw', 'NPC 重新載入。', '', 'AdminAdmin.java'),

(1382, 'cn', '', '快取[HTML]：重新载入 ; MB ; 个档案。', 'AdminAdmin.java'),
(1382, 'en', '', 'Cache[HTML]: ; MB on ; file(s) loaded.', 'AdminAdmin.java'),
(1382, 'ko', '', '캐시[HTML]: ; MB ; 파일이 로드되었습니다.', 'AdminAdmin.java'),
(1382, 'tw', '', '快取[HTML]：重新載入 ; MB ; 個檔案。', 'AdminAdmin.java'),

(1383, 'cn', '物品重新载入。', '', 'AdminAdmin.java'),
(1383, 'en', 'Item Templates have been reloaded', '', 'AdminAdmin.java'),
(1383, 'ko', '아이템 템플릿이 갱신되었습니다', '', 'AdminAdmin.java'),
(1383, 'tw', '物品重新載入。', '', 'AdminAdmin.java'),

(1384, 'cn', '所有 config 设定重新载入。', '', 'AdminAdmin.java'),
(1384, 'en', 'All Config Settings have been reloaded', '', 'AdminAdmin.java'),
(1384, 'ko', '전체 환경설정이 갱신되었습니다', '', 'AdminAdmin.java'),
(1384, 'tw', '所有 config 設定重新載入。', '', 'AdminAdmin.java'),

(1385, 'cn', '即时地区重新载入。', '', 'AdminAdmin.java'),
(1385, 'en', 'All Instance Manager has been reloaded', '', 'AdminAdmin.java'),
(1385, 'ko', '전체 인스턴스 관리가 갱신되었습니다', '', 'AdminAdmin.java'),
(1385, 'tw', '即時地區重新載入。', '', 'AdminAdmin.java'),

(1386, 'cn', 'NPC Walker 重新载入。', '', 'AdminAdmin.java'),
(1386, 'en', 'NPC Walker Routes have been reloaded', '', 'AdminAdmin.java'),
(1386, 'ko', 'NPC Walker 경로가 갱신되었습니다', '', 'AdminAdmin.java'),
(1386, 'tw', 'NPC Walker 重新載入。', '', 'AdminAdmin.java'),

(1387, 'cn', '权限重新载入。', '', 'AdminAdmin.java'),
(1387, 'en', 'Access Rights have been reloaded', '', 'AdminAdmin.java'),
(1387, 'ko', '접근 권한이 갱신되었습니다', '', 'AdminAdmin.java'),
(1387, 'tw', '權限重新載入。', '', 'AdminAdmin.java'),

(1388, 'cn', '任务重新载入。', '', 'AdminAdmin.java'),
(1388, 'en', 'All Quests have been reloaded', '', 'AdminAdmin.java'),
(1388, 'ko', '전체 퀘스트가 갱신되었습니다', '', 'AdminAdmin.java'),
(1388, 'tw', '任務重新載入。', '', 'AdminAdmin.java'),

(1389, 'cn', '警告：此功能已经有几个已知的问题，因此我们「非常不建议」您在正式服务端上使用这项功能，只建议您使用在开发服务端。', '', 'AdminAdmin.java'),
(1389, 'en', 'WARNING: There are several known issues regarding this feature. Reloading server data during runtime is STRONGLY NOT RECOMMENDED for live servers, just for developing environments.', '', 'AdminAdmin.java'),
(1389, 'ko', '경고: There are several known issues regarding this feature. Reloading server data during runtime is STRONGLY NOT RECOMMENDED for live servers, just for developing environments.', '', 'AdminAdmin.java'),
(1389, 'tw', '警告：此功能已經有幾個已知的問題，因此我們「非常不建議」您在正式伺服器上使用這項功能，只建議您使用在開發伺服器。', '', 'AdminAdmin.java'),

(1390, 'cn', '', 'Config 参数「;」设定为：', 'AdminAdmin.java'),
(1390, 'en', '', 'Config parameter ; set to ', 'AdminAdmin.java'),
(1390, 'ko', '', 'Config parameter ; set to ', 'AdminAdmin.java'),
(1390, 'tw', '', 'Config 參數「;」設定為：', 'AdminAdmin.java'),

(1391, 'cn', '参数错误。', '', 'AdminAdmin.java'),
(1391, 'en', 'Invalid parameter!', '', 'AdminAdmin.java'),
(1391, 'ko', '잘못된 파라미터!', '', 'AdminAdmin.java'),
(1391, 'tw', '參數錯誤。', '', 'AdminAdmin.java'),

(1392, 'cn', '', '参数「;」成功设定为：', 'AdminAdmin.java'),
(1392, 'en', '', 'parameter ; succesfully set to ', 'AdminAdmin.java'),
(1392, 'ko', '', '파라미터 ; 성공적으로 설정되었습니다 ', 'AdminAdmin.java'),
(1392, 'tw', '', '參數「;」成功設定為：', 'AdminAdmin.java'),

(1393, 'cn', '首页', '', 'AdminAdmin.java'),
(1393, 'en', 'Main', '', 'AdminAdmin.java'),
(1393, 'ko', '메인', '', 'AdminAdmin.java'),
(1393, 'tw', '首頁', '', 'AdminAdmin.java'),

(1394, 'cn', '服务端设定', '', 'AdminAdmin.java'),
(1394, 'en', 'Config Server Panel', '', 'AdminAdmin.java'),
(1394, 'ko', '서버 환경 제어', '', 'AdminAdmin.java'),
(1394, 'tw', '伺服器設定', '', 'AdminAdmin.java'),

(1395, 'cn', '返回', '', 'AdminAdmin.java'),
(1395, 'en', 'Back', '', 'AdminAdmin.java'),
(1395, 'ko', '이전', '', 'AdminAdmin.java'),
(1395, 'tw', '返回', '', 'AdminAdmin.java'),

(1396, 'cn', '掉落：', '', 'AdminAdmin.java'),
(1396, 'en', 'Drop:', '', 'AdminAdmin.java'),
(1396, 'ko', '드랍:', '', 'AdminAdmin.java'),
(1396, 'tw', '掉落：', '', 'AdminAdmin.java'),

(1397, 'cn', 'EXP 倍率', '', 'AdminAdmin.java'),
(1397, 'en', 'Rate EXP', '', 'AdminAdmin.java'),
(1397, 'ko', '배율 EXP', '', 'AdminAdmin.java'),
(1397, 'tw', 'EXP 倍率', '', 'AdminAdmin.java'),

(1398, 'cn', '设定', '', 'AdminAdmin.java'),
(1398, 'en', 'Set', '', 'AdminAdmin.java'),
(1398, 'ko', '설정', '', 'AdminAdmin.java'),
(1398, 'tw', '設定', '', 'AdminAdmin.java'),

(1399, 'cn', 'SP 倍率', '', 'AdminAdmin.java'),
(1399, 'en', 'Rate SP', '', 'AdminAdmin.java'),
(1399, 'ko', '배율 SP', '', 'AdminAdmin.java'),
(1399, 'tw', 'SP 倍率', '', 'AdminAdmin.java'),

(1400, 'cn', '掉落倍率', '', 'AdminAdmin.java'),
(1400, 'en', 'Rate Drop Spoil', '', 'AdminAdmin.java'),
(1400, 'ko', '스포일 드랍 배율', '', 'AdminAdmin.java'),
(1400, 'tw', '掉落倍率', '', 'AdminAdmin.java'),

(1401, 'cn', '强化：', '', 'AdminAdmin.java'),
(1401, 'en', 'Enchant:', '', 'AdminAdmin.java'),
(1401, 'ko', '강화:', '', 'AdminAdmin.java'),
(1401, 'tw', '強化：', '', 'AdminAdmin.java'),

(1402, 'cn', '武器强化', '', 'AdminAdmin.java'),
(1402, 'en', 'Enchant Weapon', '', 'AdminAdmin.java'),
(1402, 'ko', '무기 강화', '', 'AdminAdmin.java'),
(1402, 'tw', '武器強化', '', 'AdminAdmin.java'),

(1420, 'cn', '自动公告重新载入。', '', 'AdminAnnouncements.java'),
(1420, 'en', 'AutoAnnouncement Reloaded.', '', 'AdminAnnouncements.java'),
(1420, 'ko', '자동 공지가 갱신되었습니다.', '', 'AdminAnnouncements.java'),
(1420, 'tw', '自動公告重新載入。', '', 'AdminAnnouncements.java'),

(1421, 'cn', '参数错误，无法新增自动公告。', '', 'AdminAnnouncements.java'),
(1421, 'en', 'Not enough parameters for adding autoannounce!', '', 'AdminAnnouncements.java'),
(1421, 'ko', '자동공지 추가중 매개 변수가 잘못되었습니다!', '', 'AdminAnnouncements.java'),
(1421, 'tw', '參數錯誤，無法新增自動公告。', '', 'AdminAnnouncements.java'),

(1422, 'cn', '参数错误，无法删除自动公告。', '', 'AdminAnnouncements.java'),
(1422, 'en', 'Not enough parameters for deleting autoannounce!', '', 'AdminAnnouncements.java'),
(1422, 'ko', '자동공지 삭제중 매개 변수가 잘못되었습니다!', '', 'AdminAnnouncements.java'),
(1422, 'tw', '參數錯誤，無法刪除自動公告。', '', 'AdminAnnouncements.java'),

(1423, 'cn', '删除', '', 'AdminAnnouncements.java'),
(1423, 'en', 'Delete', '', 'AdminAnnouncements.java'),
(1423, 'ko', '삭제', '', 'AdminAnnouncements.java'),
(1423, 'tw', '刪除', '', 'AdminAnnouncements.java'),

(1430, 'cn', '', '封锁「;」的帐号。', 'AdminBan.java'),
(1430, 'en', '', 'Ban request sent for account ;', 'AdminBan.java'),
(1430, 'ko', '', 'Ban request sent for account ;', 'AdminBan.java'),
(1430, 'tw', '', '封鎖「;」的帳號。', 'AdminBan.java'),

(1431, 'cn', '', '锁定「;」帐号。', 'AdminBan.java'),
(1431, 'en', '', 'Account ; banned.', 'AdminBan.java'),
(1431, 'ko', '', '계정 ; 차단되었습니다.', 'AdminBan.java'),
(1431, 'tw', '', '封鎖「;」帳號。', 'AdminBan.java'),

(1432, 'cn', '被监禁中或已被封锁。', '', 'AdminBan.java'),
(1432, 'en', ' is already jailed or banned.', '', 'AdminBan.java'),
(1432, 'ko', ' 감옥에 수감중이거나, 차단되었습니다', '', 'AdminBan.java'),
(1432, 'tw', '被監禁中或已被封鎖。', '', 'AdminBan.java'),

(1433, 'cn', '', '约 ; 分钟。', 'AdminBan.java'),
(1433, 'en', '', ' for ; minutes', 'AdminBan.java'),
(1433, 'ko', '', ' 약 ; 분', 'AdminBan.java'),
(1433, 'tw', '', '約 ; 分鐘。', 'AdminBan.java'),

(1434, 'cn', '', '禁止聊天;。', 'AdminBan.java'),
(1434, 'en', '', ' is now chat banned;.', 'AdminBan.java'),
(1434, 'ko', '', ' 채팅금지;.', 'AdminBan.java'),
(1434, 'tw', '', '禁止聊天;。', 'AdminBan.java'),

(1435, 'cn', '解除禁止聊天。', '', 'AdminBan.java'),
(1435, 'en', ' \'s chat ban has now been lifted.', '', 'AdminBan.java'),
(1435, 'ko', '채팅 금지가 풀렸습니다.', '', 'AdminBan.java'),
(1435, 'tw', '解除禁止聊天。', '', 'AdminBan.java'),

(1436, 'cn', '没有被禁止聊天。', '', 'AdminBan.java'),
(1436, 'en', ' is not currently chat banned.', '', 'AdminBan.java'),
(1436, 'ko', ' is not currently chat banned.', '', 'AdminBan.java'),
(1436, 'tw', '沒有被禁止聊天。', '', 'AdminBan.java'),

(1437, 'cn', '目前在线上，所以没有被封锁。', '', 'AdminBan.java'),
(1437, 'en', ' is currently online so must not be banned.', '', 'AdminBan.java'),
(1437, 'ko', ' is currently online so must not be banned.', '', 'AdminBan.java'),
(1437, 'tw', '目前在線上，所以沒有被封鎖。', '', 'AdminBan.java'),

(1438, 'cn', '解除帐号封锁：', '', 'AdminBan.java'),
(1438, 'en', 'Unban request sent for account ', '', 'AdminBan.java'),
(1438, 'ko', 'Unban request sent for account ', '', 'AdminBan.java'),
(1438, 'tw', '解除帳號封鎖：', '', 'AdminBan.java'),

(1439, 'cn', '', '玩家「;」监禁;分钟。;永远！', 'AdminBan.java'),
(1439, 'en', '', 'Character ; jailed for ; minutes.;ever!', 'AdminBan.java'),
(1439, 'ko', '', 'Character ; jailed for ; minutes.;ever!', 'AdminBan.java'),
(1439, 'tw', '', '玩家「;」監禁;分鐘。;永遠！', 'AdminBan.java'),

(1440, 'cn', '', '玩家「;」从监狱释放。', 'AdminBan.java'),
(1440, 'en', '', 'Character ; removed from jail', 'AdminBan.java'),
(1440, 'ko', '', '캐릭터 ; 감옥에서 제거되었습니다', 'AdminBan.java'),
(1440, 'tw', '', '玩家「;」從監獄釋放。', 'AdminBan.java'),

(1441, 'cn', '该玩家不存在！', '', 'AdminBan.java'),
(1441, 'en', 'Character not found!', '', 'AdminBan.java'),
(1441, 'ko', '캐릭터를 찾을 수 없습니다!', '', 'AdminBan.java'),
(1441, 'tw', '該玩家不存在！', '', 'AdminBan.java'),

(1442, 'cn', '', '玩家「;」禁言;分钟。;永远！;」解除禁言。', 'AdminBan.java'),
(1442, 'en', '', 'Character ; chat-banned for ; minutes.;ever!;\'s chat-banned lifted', 'AdminBan.java'),
(1442, 'ko', '', 'Character ; chat-banned for ; minutes.;ever!;\'s chat-banned lifted', 'AdminBan.java'),
(1442, 'tw', '', '玩家「;」禁言;分鐘。;永遠！;」解除禁言。', 'AdminBan.java'),

(1443, 'cn', '', '玩家「;」从监狱释放。', 'AdminBan.java'),
(1443, 'en', '', 'Character ; removed from jail', 'AdminBan.java'),
(1443, 'ko', '', 'Character ; removed from jail', 'AdminBan.java'),
(1443, 'tw', '', '玩家「;」從監獄釋放。', 'AdminBan.java'),

(1444, 'cn', '你的角色已被封锁。', '', 'AdminBan.java'),
(1444, 'en', 'Your character has been banned. Goodbye.', '', 'AdminBan.java'),
(1444, 'ko', 'Your character has been banned. Goodbye.', '', 'AdminBan.java'),
(1444, 'tw', '你的角色已被封鎖。', '', 'AdminBan.java'),

(1445, 'cn', '', '封锁玩家「;」。', 'AdminBan.java'),
(1445, 'en', '', 'The character ; has now been banned.', 'AdminBan.java'),
(1445, 'ko', '', 'The character ; has now been banned.', 'AdminBan.java'),
(1445, 'tw', '', '封鎖玩家「;」。', 'AdminBan.java'),

(1446, 'cn', '该玩家不存在或权限等级没有改变。', '', 'AdminBan.java'),
(1446, 'en', 'Character not found or access level unaltered.', '', 'AdminBan.java'),
(1446, 'ko', 'Character not found or access level unaltered.', '', 'AdminBan.java'),
(1446, 'tw', '該玩家不存在或權限等級沒有改變。', '', 'AdminBan.java'),

(1447, 'cn', '的权限等级更改为：', '', 'AdminBan.java'),
(1447, 'en', ' now has an access level of ', '', 'AdminBan.java'),
(1447, 'ko', ' now has an access level of ', '', 'AdminBan.java'),
(1447, 'tw', '的權限等級更改為：', '', 'AdminBan.java'),

(1451, 'cn', '', '玩家「;」不在线上。', 'AdminBuffs.java'),
(1451, 'en', '', 'The player ; is not online', 'AdminBuffs.java'),
(1451, 'ko', '', 'The player ; is not online', 'AdminBuffs.java'),
(1451, 'tw', '', '玩家「;」不在線上。', 'AdminBuffs.java'),

(1452, 'cn', '', '移除在范围「;」以内的效果。', 'AdminBuffs.java'),
(1452, 'en', '', 'All effects canceled within raidus ;', 'AdminBuffs.java'),
(1452, 'ko', '', 'All effects canceled within raidus ;', 'AdminBuffs.java'),
(1452, 'tw', '', '移除在範圍「;」以內的效果。', 'AdminBuffs.java'),

(1453, 'cn', '首页', '', 'AdminBuffs.java'),
(1453, 'en', 'Main', '', 'AdminBuffs.java'),
(1453, 'ko', '메인', '', 'AdminBuffs.java'),
(1453, 'tw', '首頁', '', 'AdminBuffs.java'),

(1454, 'cn', '效果：', '', 'AdminBuffs.java'),
(1454, 'en', 'Effects of ', '', 'AdminBuffs.java'),
(1454, 'ko', 'Effects of ', '', 'AdminBuffs.java'),
(1454, 'tw', '效果：', '', 'AdminBuffs.java'),

(1455, 'cn', '返回', '', 'AdminBuffs.java'),
(1455, 'en', 'Back', '', 'AdminBuffs.java'),
(1455, 'ko', '이전', '', 'AdminBuffs.java'),
(1455, 'tw', '返回', '', 'AdminBuffs.java'),

(1456, 'cn', '', '技能;剩餘;动作', 'AdminBuffs.java'),
(1456, 'en', '', 'Skill;Rem. Time;Action', 'AdminBuffs.java'),
(1456, 'ko', '', 'Skill;Rem. Time;Action', 'AdminBuffs.java'),
(1456, 'tw', '', '技能;剩餘;動作', 'AdminBuffs.java'),

(1457, 'cn', '移除', '', 'AdminBuffs.java'),
(1457, 'en', 'Remove', '', 'AdminBuffs.java'),
(1457, 'ko', '제거', '', 'AdminBuffs.java'),
(1457, 'tw', '移除', '', 'AdminBuffs.java'),

(1458, 'cn', '第', '页', 'AdminBuffs.java'),
(1458, 'en', 'Page ', ' ', 'AdminBuffs.java'),
(1458, 'ko', 'Page ', ' ', 'AdminBuffs.java'),
(1458, 'tw', '第', '頁', 'AdminBuffs.java'),

(1459, 'cn', '移除全部', '', 'AdminBuffs.java'),
(1459, 'en', 'Remove All', '', 'AdminBuffs.java'),
(1459, 'ko', 'Remove All', '', 'AdminBuffs.java'),
(1459, 'tw', '移除全部', '', 'AdminBuffs.java'),

(1460, 'cn', '', '移除「;」等级「;」于：', 'AdminBuffs.java'),
(1460, 'en', '', 'Removed ; level ; from ', 'AdminBuffs.java'),
(1460, 'ko', '', 'Removed ; level ; from ', 'AdminBuffs.java'),
(1460, 'tw', '', '移除「;」等級「;」於：', 'AdminBuffs.java'),

(1461, 'cn', '移除所有辅助效果于：', '', 'AdminBuffs.java'),
(1461, 'en', 'Removed all effects from ', '', 'AdminBuffs.java'),
(1461, 'ko', 'Removed all effects from ', '', 'AdminBuffs.java'),
(1461, 'tw', '移除所有輔助效果於：', '', 'AdminBuffs.java'),

(1465, 'cn', '', '快取[HTML]：重新载入 ; MB ; 个档案。', 'AdminCache.java'),
(1465, 'en', '', 'Cache[HTML]: ; MB on ; file(s) loaded.', 'AdminCache.java'),
(1465, 'ko', '', '캐시[HTML]: ; MB on ; file(s) loaded.', 'AdminCache.java'),
(1465, 'tw', '', '快取[HTML]：重新載入 ; MB ; 個檔案。', 'AdminCache.java'),

(1466, 'cn', '快取[HTML]：文件读取完成。', '', 'AdminCache.java'),
(1466, 'en', 'Cache[HTML]: file was loaded', '', 'AdminCache.java'),
(1466, 'ko', '캐시[HTML]: file was loaded', '', 'AdminCache.java'),
(1466, 'tw', '快取[HTML]：檔案讀取完成。', '', 'AdminCache.java'),

(1467, 'cn', '快取[HTML]：文件读取失败。', '', 'AdminCache.java'),
(1467, 'en', 'Cache[HTML]: file can\'t be loaded', '', 'AdminCache.java'),
(1467, 'ko', '캐시[HTML]: file can\'t be loaded', '', 'AdminCache.java'),
(1467, 'tw', '快取[HTML]：檔案讀取失敗。', '', 'AdminCache.java'),

(1468, 'cn', '', '快取[Crest]：重新载入 ; MB ; 个档案。', 'AdminCache.java'),
(1468, 'en', '', 'Cache[Crest]: ; megabytes on ; files loaded', 'AdminCache.java'),
(1468, 'ko', '', '캐시[Crest]: ; megabytes on ; files loaded', 'AdminCache.java'),
(1468, 'tw', '', '快取[Crest]：重新載入 ; MB ; 個檔案。', 'AdminCache.java'),

(1469, 'cn', '快取[Crest]：盟徽修正。', '', 'AdminCache.java'),
(1469, 'en', 'Cache[Crest]: crests fixed', '', 'AdminCache.java'),
(1469, 'ko', '캐시[Crest]: crests fixed', '', 'AdminCache.java'),
(1469, 'tw', '快取[Crest]：盟徽修正。', '', 'AdminCache.java'),

(1473, 'cn', '该玩家不存在或权限等级没有改变。', '', 'AdminChangeAccessLevel.java'),
(1473, 'en', 'Character not found or access level unaltered.', '', 'AdminChangeAccessLevel.java'),
(1473, 'ko', 'Character not found or access level unaltered.', '', 'AdminChangeAccessLevel.java'),
(1473, 'tw', '該玩家不存在或權限等級沒有改變。', '', 'AdminChangeAccessLevel.java'),

(1474, 'cn', '玩家的权限等级更改为：', '', 'AdminChangeAccessLevel.java'),
(1474, 'en', 'Character\'s access level is now set to ', '', 'AdminChangeAccessLevel.java'),
(1474, 'ko', 'Character\'s access level is now set to ', '', 'AdminChangeAccessLevel.java'),
(1474, 'tw', '玩家的權限等級更改為：', '', 'AdminChangeAccessLevel.java'),

(1475, 'cn', '你的权限等级更改为：', '', 'AdminChangeAccessLevel.java'),
(1475, 'en', 'Your access level has been changed to ', '', 'AdminChangeAccessLevel.java'),
(1475, 'ko', 'Your access level has been changed to ', '', 'AdminChangeAccessLevel.java'),
(1475, 'tw', '你的權限等級更改為：', '', 'AdminChangeAccessLevel.java'),

(1476, 'cn', '你的角色被封锁了。', '', 'AdminChangeAccessLevel.java'),
(1476, 'en', 'Your character has been banned. Bye.', '', 'AdminChangeAccessLevel.java'),
(1476, 'ko', 'Your character has been banned. Bye.', '', 'AdminChangeAccessLevel.java'),
(1476, 'tw', '你的角色被封鎖了。', '', 'AdminChangeAccessLevel.java'),

(1477, 'cn', '玩家的权限等级更改为「', '', 'AdminChangeAccessLevel.java'),
(1477, 'en', 'Character\'s access level is now set to ', '', 'AdminChangeAccessLevel.java'),
(1477, 'ko', 'Character\'s access level is now set to ', '', 'AdminChangeAccessLevel.java'),
(1477, 'tw', '玩家的權限等級更改為「', '', 'AdminChangeAccessLevel.java'),

(1478, 'cn', '」。重新登录后才有效果。', '', 'AdminChangeAccessLevel.java'),
(1478, 'en', '. Effects won\'t be noticeable until next session.', '', 'AdminChangeAccessLevel.java'),
(1478, 'ko', '. Effects won\'t be noticeable until next session.', '', 'AdminChangeAccessLevel.java'),
(1478, 'tw', '」。重新登入後才有效果。', '', 'AdminChangeAccessLevel.java'),

(1482, 'cn', '目标错误。', '', 'AdminCreateItem.java'),
(1482, 'en', 'Invalid target.', '', 'AdminCreateItem.java'),
(1482, 'ko', '대상이 잘못되었습니다.', '', 'AdminCreateItem.java'),
(1482, 'tw', '目標錯誤。', '', 'AdminCreateItem.java'),

(1483, 'cn', '这个物品不存在。', '', 'AdminCreateItem.java'),
(1483, 'en', 'This item doesn\'t exist.', '', 'AdminCreateItem.java'),
(1483, 'ko', 'This item doesn\'t exist.', '', 'AdminCreateItem.java'),
(1483, 'tw', '這個物品不存在。', '', 'AdminCreateItem.java'),

(1484, 'cn', '这个物品不是堆叠的 - 创造取消。', '', 'AdminCreateItem.java'),
(1484, 'en', 'This item does not stack - Creation aborted.', '', 'AdminCreateItem.java'),
(1484, 'ko', 'This item does not stack - Creation aborted.', '', 'AdminCreateItem.java'),
(1484, 'tw', '這個物品不是堆疊的 - 創造取消。', '', 'AdminCreateItem.java'),

(1485, 'cn', '', '管理员创造「;」个「;」给你。', 'AdminCreateItem.java'),
(1485, 'en', '', 'Admin spawned ; ; in your inventory.', 'AdminCreateItem.java'),
(1485, 'ko', '', 'Admin spawned ; ; in your inventory.', 'AdminCreateItem.java'),
(1485, 'tw', '', '管理員創造「;」個「;」給你。', 'AdminCreateItem.java'),

(1486, 'cn', '', '创造「;」个「;」(ID:;) 给「;」。', 'AdminCreateItem.java'),
(1486, 'en', '', 'You have spawned ; ;(;) in ; inventory.', 'AdminCreateItem.java'),
(1486, 'ko', '', 'You have spawned ; ;(;) in ; inventory.', 'AdminCreateItem.java'),
(1486, 'tw', '', '創造「;」個「;」(ID:;) 給「;」。', 'AdminCreateItem.java'),

(1487, 'cn', '', '金币;古代的金币;庆典金币;蓝色伊娃;金色殷海萨;银色席琳;血红色帕格立欧;梦幻岛代币', 'AdminCreateItem.java'),
(1487, 'en', '', 'adena;ancientadena;festivaladena;blueeva;goldeinhasad;silvershilen;bloodypaagrio', 'AdminCreateItem.java'),
(1487, 'ko', '', 'adena;ancientadena;festivaladena;blueeva;goldeinhasad;silvershilen;bloodypaagrio', 'AdminCreateItem.java'),
(1487, 'tw', '', '金幣;古代的金幣;慶典金幣;藍色伊娃;金色殷海薩;銀色席琳;血紅色帕格立歐;夢幻島代幣', 'AdminCreateItem.java'),

(1488, 'cn', ' 个玩家得到：', '', 'AdminCreateItem.java'),
(1488, 'en', ' players rewarded with ', '', 'AdminCreateItem.java'),
(1488, 'ko', ' players rewarded with ', '', 'AdminCreateItem.java'),
(1488, 'tw', ' 個玩家得到：', '', 'AdminCreateItem.java'),

(1491, 'cn', '====== 受诅咒的武器资讯 =====', '', 'AdminCursedWeapons.java'),
(1491, 'en', '====== Cursed Weapons: ======', '', 'AdminCursedWeapons.java'),
(1491, 'ko', '====== 저주받은 무기: ======', '', 'AdminCursedWeapons.java'),
(1491, 'tw', '====== 受詛咒的武器資訊 =====', '', 'AdminCursedWeapons.java'),

(1492, 'cn', '', '拥有人物：;无', 'AdminCursedWeapons.java'),
(1492, 'en', '', '  Player holding: ;null', 'AdminCursedWeapons.java'),
(1492, 'ko', '', '  Player holding: ;null', 'AdminCursedWeapons.java'),
(1492, 'tw', '', '擁有人物：;無', 'AdminCursedWeapons.java'),

(1493, 'cn', '性向指数：', '', 'AdminCursedWeapons.java'),
(1493, 'en', '    Player karma: ', '', 'AdminCursedWeapons.java'),
(1493, 'ko', '    Player karma: ', '', 'AdminCursedWeapons.java'),
(1493, 'tw', '性向指數：', '', 'AdminCursedWeapons.java'),

(1494, 'cn', '', '时间剩下：; 分钟。', 'AdminCursedWeapons.java'),
(1494, 'en', '', '    Time Remaining: ; min.', 'AdminCursedWeapons.java'),
(1494, 'ko', '', '    Time Remaining: ; min.', 'AdminCursedWeapons.java'),
(1494, 'tw', '', '時間剩下：; 分鐘。', 'AdminCursedWeapons.java'),

(1495, 'cn', '杀人数量：', '', 'AdminCursedWeapons.java'),
(1495, 'en', '    Kills : ', '', 'AdminCursedWeapons.java'),
(1495, 'ko', '    Kills : ', '', 'AdminCursedWeapons.java'),
(1495, 'tw', '殺人數量：', '', 'AdminCursedWeapons.java'),

(1496, 'cn', '掉落地面', '', 'AdminCursedWeapons.java'),
(1496, 'en', '  Lying on the ground.', '', 'AdminCursedWeapons.java'),
(1496, 'ko', '  Lying on the ground.', '', 'AdminCursedWeapons.java'),
(1496, 'tw', '掉落地面', '', 'AdminCursedWeapons.java'),

(1497, 'cn', '尚未出现。', '', 'AdminCursedWeapons.java'),
(1497, 'en', '  Don\'t exist in the world.', '', 'AdminCursedWeapons.java'),
(1497, 'ko', '  Don\'t exist in the world.', '', 'AdminCursedWeapons.java'),
(1497, 'tw', '尚未出現。', '', 'AdminCursedWeapons.java'),

(1498, 'cn', '名称：', '', 'AdminCursedWeapons.java'),
(1498, 'en', 'Name:', '', 'AdminCursedWeapons.java'),
(1498, 'ko', '이름:', '', 'AdminCursedWeapons.java'),
(1498, 'tw', '名稱：', '', 'AdminCursedWeapons.java'),

(1499, 'cn', '持有者：', '', 'AdminCursedWeapons.java'),
(1499, 'en', 'Weilder:', '', 'AdminCursedWeapons.java'),
(1499, 'ko', 'Weilder:', '', 'AdminCursedWeapons.java'),
(1499, 'tw', '持有者：', '', 'AdminCursedWeapons.java'),

(1500, 'cn', '无', '', 'AdminCursedWeapons.java'),
(1500, 'en', 'null', '', 'AdminCursedWeapons.java'),
(1500, 'ko', 'null', '', 'AdminCursedWeapons.java'),
(1500, 'tw', '無', '', 'AdminCursedWeapons.java'),

(1501, 'cn', '性向：', '', 'AdminCursedWeapons.java'),
(1501, 'en', 'Karma:', '', 'AdminCursedWeapons.java'),
(1501, 'ko', '카오:', '', 'AdminCursedWeapons.java'),
(1501, 'tw', '性向：', '', 'AdminCursedWeapons.java'),

(1502, 'cn', '杀人数量：', '', 'AdminCursedWeapons.java'),
(1502, 'en', 'Kills:', '', 'AdminCursedWeapons.java'),
(1502, 'ko', '킬수:', '', 'AdminCursedWeapons.java'),
(1502, 'tw', '殺人數量：', '', 'AdminCursedWeapons.java'),

(1503, 'cn', '剩余时间：', '', 'AdminCursedWeapons.java'),
(1503, 'en', 'Time remaining:', '', 'AdminCursedWeapons.java'),
(1503, 'ko', '남은 시간:', '', 'AdminCursedWeapons.java'),
(1503, 'tw', '剩餘時間：', '', 'AdminCursedWeapons.java'),

(1504, 'cn', ' 分钟', '', 'AdminCursedWeapons.java'),
(1504, 'en', ' min.', '', 'AdminCursedWeapons.java'),
(1504, 'ko', ' 분.', '', 'AdminCursedWeapons.java'),
(1504, 'tw', ' 分鐘', '', 'AdminCursedWeapons.java'),

(1505, 'cn', '移除', '', 'AdminCursedWeapons.java'),
(1505, 'en', 'Remove', '', 'AdminCursedWeapons.java'),
(1505, 'ko', '제거', '', 'AdminCursedWeapons.java'),
(1505, 'tw', '移除', '', 'AdminCursedWeapons.java'),

(1506, 'cn', '前往', '', 'AdminCursedWeapons.java'),
(1506, 'en', 'Go', '', 'AdminCursedWeapons.java'),
(1506, 'ko', 'Go', '', 'AdminCursedWeapons.java'),
(1506, 'tw', '前往', '', 'AdminCursedWeapons.java'),

(1507, 'cn', '位置：', '', 'AdminCursedWeapons.java'),
(1507, 'en', 'Position:', '', 'AdminCursedWeapons.java'),
(1507, 'ko', '위치:', '', 'AdminCursedWeapons.java'),
(1507, 'tw', '位置：', '', 'AdminCursedWeapons.java'),

(1508, 'cn', '掉落地上', '', 'AdminCursedWeapons.java'),
(1508, 'en', 'Lying on the ground', '', 'AdminCursedWeapons.java'),
(1508, 'ko', 'Lying on the ground', '', 'AdminCursedWeapons.java'),
(1508, 'tw', '掉落地上', '', 'AdminCursedWeapons.java'),

(1509, 'cn', '并不存在', '', 'AdminCursedWeapons.java'),
(1509, 'en', 'Doesn\'t exist.', '', 'AdminCursedWeapons.java'),
(1509, 'ko', 'Doesn\'t exist.', '', 'AdminCursedWeapons.java'),
(1509, 'tw', '並不存在', '', 'AdminCursedWeapons.java'),

(1510, 'cn', '交给目标', '', 'AdminCursedWeapons.java'),
(1510, 'en', 'Give to Target', '', 'AdminCursedWeapons.java'),
(1510, 'ko', 'Give to Target', '', 'AdminCursedWeapons.java'),
(1510, 'tw', '交給目標', '', 'AdminCursedWeapons.java'),

(1511, 'cn', '不是受诅咒的武器 ID。', '', 'AdminCursedWeapons.java'),
(1511, 'en', 'Unknown cursed weapon ID.', '', 'AdminCursedWeapons.java'),
(1511, 'ko', 'Unknown cursed weapon ID.', '', 'AdminCursedWeapons.java'),
(1511, 'tw', '不是受詛咒的武器 ID。', '', 'AdminCursedWeapons.java'),

(1512, 'cn', '这把受诅咒的武器已经出现。', '', 'AdminCursedWeapons.java'),
(1512, 'en', 'This cursed weapon is already active.', '', 'AdminCursedWeapons.java'),
(1512, 'ko', 'This cursed weapon is already active.', '', 'AdminCursedWeapons.java'),
(1512, 'tw', '這把受詛咒的武器已經出現。', '', 'AdminCursedWeapons.java'),

(1517, 'cn', '', '删除「;」(;)。', 'AdminDelete.java'),
(1517, 'en', '', 'Deleted ; from ;.', 'AdminDelete.java'),
(1517, 'ko', '', 'Deleted ; from ;.', 'AdminDelete.java'),
(1517, 'tw', '', '刪除「;」(;)。', 'AdminDelete.java'),

(1518, 'cn', '目标错误。', '', 'AdminDelete.java'),
(1518, 'en', 'Incorrect target.', '', 'AdminDelete.java'),
(1518, 'ko', 'Incorrect target.', '', 'AdminDelete.java'),
(1518, 'tw', '目標錯誤。', '', 'AdminDelete.java'),

(1522, 'cn', '无法对自己强制登出。', '', 'AdminDisconnect.java'),
(1522, 'en', 'You cannot logout your own character.', '', 'AdminDisconnect.java'),
(1522, 'ko', 'You cannot logout your own character.', '', 'AdminDisconnect.java'),
(1522, 'tw', '無法對自己強制登出。', '', 'AdminDisconnect.java'),

(1523, 'cn', '', '玩家「;」与服务端中断连线。', 'AdminDisconnect.java'),
(1523, 'en', '', 'Character ; disconnected from server.', 'AdminDisconnect.java'),
(1523, 'ko', '', 'Character ; disconnected from server.', 'AdminDisconnect.java'),
(1523, 'tw', '', '玩家「;」與伺服器中斷連線。', 'AdminDisconnect.java'),

(1527, 'cn', '目标错误。', '', 'AdminDoorControl.java'),
(1527, 'en', 'Incorrect target.', '', 'AdminDoorControl.java'),
(1527, 'ko', 'Incorrect target.', '', 'AdminDoorControl.java'),
(1527, 'tw', '目標錯誤。', '', 'AdminDoorControl.java'),

(1530, 'cn', '管理者变更你的声望为：', '', 'AdminEditChar.java'),
(1530, 'en', 'A GM changed your Reputation points to ', '', 'AdminEditChar.java'),
(1530, 'ko', 'A GM changed your Reputation points to ', '', 'AdminEditChar.java'),
(1530, 'tw', '管理者變更你的聲望為：', '', 'AdminEditChar.java'),

(1531, 'cn', '的声望更改为：', '', 'AdminEditChar.java'),
(1531, 'en', '\'s Fame changed to ', '', 'AdminEditChar.java'),
(1531, 'ko', '\'s Fame changed to ', '', 'AdminEditChar.java'),
(1531, 'tw', '的聲望更改為：', '', 'AdminEditChar.java'),

(1532, 'cn', '管理者更改你的推荐为：', '', 'AdminEditChar.java'),
(1532, 'en', 'A GM changed your Recommend points to ', '', 'AdminEditChar.java'),
(1532, 'ko', 'A GM changed your Recommend points to ', '', 'AdminEditChar.java'),
(1532, 'tw', '管理者更改你的推薦為：', '', 'AdminEditChar.java'),

(1533, 'cn', '的推荐更改为：', '', 'AdminEditChar.java'),
(1533, 'en', '\'s Recommend changed to ', '', 'AdminEditChar.java'),
(1533, 'ko', '\'s Recommend changed to ', '', 'AdminEditChar.java'),
(1533, 'tw', '的推薦更改為：', '', 'AdminEditChar.java'),

(1534, 'cn', '管理者更改你的职业为：', '', 'AdminEditChar.java'),
(1534, 'en', 'A GM changed your class to ', '', 'AdminEditChar.java'),
(1534, 'ko', 'A GM changed your class to ', '', 'AdminEditChar.java'),
(1534, 'tw', '管理者更改你的職業為：', '', 'AdminEditChar.java'),

(1535, 'cn', '的职业变更为：', '', 'AdminEditChar.java'),
(1535, 'en', ' is a ', '', 'AdminEditChar.java'),
(1535, 'ko', ' is a ', '', 'AdminEditChar.java'),
(1535, 'tw', '的職業變更為：', '', 'AdminEditChar.java'),

(1536, 'cn', '使用方法：//setclass <valid_new_classid>', '', 'AdminEditChar.java'),
(1536, 'en', 'Usage: //setclass <valid_new_classid>', '', 'AdminEditChar.java'),
(1536, 'ko', '사용법: //setclass <valid_new_classid>', '', 'AdminEditChar.java'),
(1536, 'tw', '使用方法：//setclass <valid_new_classid>', '', 'AdminEditChar.java'),

(1537, 'cn', '被管理者更改称号。', '', 'AdminEditChar.java'),
(1537, 'en', 'Your title has been changed by a GM', '', 'AdminEditChar.java'),
(1537, 'ko', 'Your title has been changed by a GM', '', 'AdminEditChar.java'),
(1537, 'tw', '被管理者更改稱號。', '', 'AdminEditChar.java'),

(1538, 'cn', '被管理者更改名字。', '', 'AdminEditChar.java'),
(1538, 'en', 'Your name has been changed by a GM.', '', 'AdminEditChar.java'),
(1538, 'ko', 'Your name has been changed by a GM.', '', 'AdminEditChar.java'),
(1538, 'tw', '被管理者更改名字。', '', 'AdminEditChar.java'),

(1539, 'cn', '被管理者更改性别。', '', 'AdminEditChar.java'),
(1539, 'en', 'Your gender has been changed by a GM', '', 'AdminEditChar.java'),
(1539, 'ko', 'Your gender has been changed by a GM', '', 'AdminEditChar.java'),
(1539, 'tw', '被管理者更改性別。', '', 'AdminEditChar.java'),

(1540, 'cn', '被管理者更改名字的颜色。', '', 'AdminEditChar.java'),
(1540, 'en', 'Your name color has been changed by a GM', '', 'AdminEditChar.java'),
(1540, 'ko', 'Your name color has been changed by a GM', '', 'AdminEditChar.java'),
(1540, 'tw', '被管理者更改名字的顏色。', '', 'AdminEditChar.java'),

(1541, 'cn', '被管理者更改称号的颜色。', '', 'AdminEditChar.java'),
(1541, 'en', 'Your title color has been changed by a GM', '', 'AdminEditChar.java'),
(1541, 'ko', 'Your title color has been changed by a GM', '', 'AdminEditChar.java'),
(1541, 'tw', '被管理者更改稱號的顏色。', '', 'AdminEditChar.java'),

(1542, 'cn', '', '移除玩家「;」的血盟惩罚。', 'AdminEditChar.java'),
(1542, 'en', '', 'Clan penalty successfully removed to character: ;', 'AdminEditChar.java'),
(1542, 'ko', '', 'Clan penalty successfully removed to character: ;', 'AdminEditChar.java'),
(1542, 'tw', '', '移除玩家「;」的血盟懲罰。', 'AdminEditChar.java'),

(1543, 'cn', '目标错误。', '', 'AdminEditChar.java'),
(1543, 'en', 'Invalid target.', '', 'AdminEditChar.java'),
(1543, 'ko', 'Invalid target.', '', 'AdminEditChar.java'),
(1543, 'tw', '目標錯誤。', '', 'AdminEditChar.java'),

(1544, 'cn', '目标必须是宠物或召唤。', '', 'AdminEditChar.java'),
(1544, 'en', 'Usable only with Pets/Summons', '', 'AdminEditChar.java'),
(1544, 'ko', 'Usable only with Pets/Summons', '', 'AdminEditChar.java'),
(1544, 'tw', '目標必須是寵物或召喚。', '', 'AdminEditChar.java'),

(1545, 'cn', '目标必须是宠物。', '', 'AdminEditChar.java'),
(1545, 'en', 'Usable only with Pets', '', 'AdminEditChar.java'),
(1545, 'ko', 'Usable only with Pets', '', 'AdminEditChar.java'),
(1545, 'tw', '目標必須是寵物。', '', 'AdminEditChar.java'),

(1546, 'cn', '不在队伍中。', '', 'AdminEditChar.java'),
(1546, 'en', 'Not in party.', '', 'AdminEditChar.java'),
(1546, 'ko', 'Not in party.', '', 'AdminEditChar.java'),
(1546, 'tw', '不在隊伍中。', '', 'AdminEditChar.java'),

(1547, 'cn', '第', '页', 'AdminEditChar.java'),
(1547, 'en', 'Page ', '', 'AdminEditChar.java'),
(1547, 'ko', 'Page ', '', 'AdminEditChar.java'),
(1547, 'tw', '第', '頁', 'AdminEditChar.java'),

(1548, 'cn', '', '更改「;」的性向，从 (;) 变 (;)。', 'AdminEditChar.java'),
(1548, 'en', '', 'Successfully Changed karma for ; from (;) to (;).', 'AdminEditChar.java'),
(1548, 'ko', '', 'Successfully Changed karma for ; from (;) to (;).', 'AdminEditChar.java'),
(1548, 'tw', '', '更改「;」的性向，從 (;) 變 (;)。', 'AdminEditChar.java'),

(1549, 'cn', '输入的数值必须大于 0。', '', 'AdminEditChar.java'),
(1549, 'en', 'You must enter a value for karma greater than or equal to 0.', '', 'AdminEditChar.java'),
(1549, 'ko', 'You must enter a value for karma greater than or equal to 0.', '', 'AdminEditChar.java'),
(1549, 'tw', '輸入的數值必須大於 0。', '', 'AdminEditChar.java'),

(1550, 'cn', '管理者更改你的状态为：', '', 'AdminEditChar.java'),
(1550, 'en', 'Admin has changed your stats.', '', 'AdminEditChar.java'),
(1550, 'ko', 'Admin has changed your stats.', '', 'AdminEditChar.java'),
(1550, 'tw', '管理者更改你的狀態為：', '', 'AdminEditChar.java'),

(1551, 'cn', '', '更改「;」的状态为：', 'AdminEditChar.java'),
(1551, 'en', '', 'Changed stats of ;.', 'AdminEditChar.java'),
(1551, 'ko', '', 'Changed stats of ;.', 'AdminEditChar.java'),
(1551, 'tw', '', '更改「;」的狀態為：', 'AdminEditChar.java'),

(1552, 'cn', '。请重新尝试。', '', 'AdminEditChar.java'),
(1552, 'en', 's. Please try again.', '', 'AdminEditChar.java'),
(1552, 'ko', 's. Please try again.', '', 'AdminEditChar.java'),
(1552, 'tw', '。請重新嘗試。', '', 'AdminEditChar.java'),

(1553, 'cn', '大于 20', '', 'AdminEditChar.java'),
(1553, 'en', ' more than 20', '', 'AdminEditChar.java'),
(1553, 'ko', ' more than 20', '', 'AdminEditChar.java'),
(1553, 'tw', '大於 20', '', 'AdminEditChar.java'),

(1554, 'cn', '。<br>请修改搜寻的关键字以方便查询所需的资料。', '', 'AdminEditChar.java'),
(1554, 'en', 's.<br>Please refine your search to see all of the results.', '', 'AdminEditChar.java'),
(1554, 'ko', 's.<br>Please refine your search to see all of the results.', '', 'AdminEditChar.java'),
(1554, 'tw', '。<br>請修改搜尋的關鍵字以方便查詢所需的資料。', '', 'AdminEditChar.java'),

(1555, 'cn', '。', '', 'AdminEditChar.java'),
(1555, 'en', '.', '', 'AdminEditChar.java'),
(1555, 'ko', '.', '', 'AdminEditChar.java'),
(1555, 'tw', '。', '', 'AdminEditChar.java'),

(1556, 'cn', '。', '', 'AdminEditChar.java'),
(1556, 'en', 's.', '', 'AdminEditChar.java'),
(1556, 'ko', 's.', '', 'AdminEditChar.java'),
(1556, 'tw', '。', '', 'AdminEditChar.java'),

(1557, 'cn', '。没有找到！', '', 'AdminEditChar.java'),
(1557, 'en', 's. Maybe they got d/c? :)', '', 'AdminEditChar.java'),
(1557, 'ko', 's. Maybe they got d/c? :)', '', 'AdminEditChar.java'),
(1557, 'tw', '。沒有找到！', '', 'AdminEditChar.java'),

(1558, 'cn', ' 超过 ', '', 'AdminEditChar.java'),
(1558, 'en', ' more than ', '', 'AdminEditChar.java'),
(1558, 'ko', ' more than ', '', 'AdminEditChar.java'),
(1558, 'tw', ' 超過 ', '', 'AdminEditChar.java'),

(1559, 'cn', '。<br>为了防止客户端出错，<br1>显示的资料限制为 20。', '', 'AdminEditChar.java'),
(1559, 'en', 's.<br>In order to avoid you a client crash I won\'t <br1>display results beyond the 20th character.', '', 'AdminEditChar.java'),
(1559, 'ko', 's.<br>In order to avoid you a client crash I won\'t <br1>display results beyond the 20th character.', '', 'AdminEditChar.java'),
(1559, 'tw', '。<br>為了防止客戶端出錯，<br1>顯示的資料限制為 20。', '', 'AdminEditChar.java'),

(1560, 'cn', '检视', '', 'AdminEditChar.java'),
(1560, 'en', 'view', '', 'AdminEditChar.java'),
(1560, 'ko', 'view', '', 'AdminEditChar.java'),
(1560, 'tw', '檢視', '', 'AdminEditChar.java'),

(1561, 'cn', '无', '', 'AdminEditChar.java'),
(1561, 'en', 'none', '', 'AdminEditChar.java'),
(1561, 'ko', 'none', '', 'AdminEditChar.java'),
(1561, 'tw', '無', '', 'AdminEditChar.java'),

(1562, 'cn', '管理者变更你的 PK 次数为：', '', 'AdminEditChar.java'),
(1562, 'en', 'A GM changed your PK count to ', '', 'AdminEditChar.java'),
(1562, 'ko', 'A GM changed your PK count to ', '', 'AdminEditChar.java'),
(1562, 'tw', '管理者變更你的 PK 次數為：', '', 'AdminEditChar.java'),

(1563, 'cn', '的 PK 次数更改为：', '', 'AdminEditChar.java'),
(1563, 'en', '\'s PK count changed to ', '', 'AdminEditChar.java'),
(1563, 'ko', '\'s PK count changed to ', '', 'AdminEditChar.java'),
(1563, 'tw', '的 PK 次數更改為：', '', 'AdminEditChar.java'),

(1564, 'cn', '管理者变更你的 PVP 次数为：', '', 'AdminEditChar.java'),
(1564, 'en', 'A GM changed your PVP count to ', '', 'AdminEditChar.java'),
(1564, 'ko', 'A GM changed your PVP count to ', '', 'AdminEditChar.java'),
(1564, 'tw', '管理者變更你的 PVP 次數為：', '', 'AdminEditChar.java'),

(1565, 'cn', '的 PVP 次数更改为：', '', 'AdminEditChar.java'),
(1565, 'en', '\'s PVP count changed to ', '', 'AdminEditChar.java'),
(1565, 'ko', '\'s PVP count changed to ', '', 'AdminEditChar.java'),
(1565, 'tw', '的 PVP 次數更改為：', '', 'AdminEditChar.java'),

(1575, 'cn', '', '更新「;」的价格于贩卖清单：', 'AdminEditNpc.java'),
(1575, 'en', '', 'Updated price for ; in Trade List ', 'AdminEditNpc.java'),
(1575, 'ko', '', 'Updated price for ; in Trade List ', 'AdminEditNpc.java'),
(1575, 'tw', '', '更新「;」的價格於販賣清單：', 'AdminEditNpc.java'),

(1576, 'cn', '商店物品修改', '', 'AdminEditNpc.java'),
(1576, 'en', 'Merchant Shop Item Edit', '', 'AdminEditNpc.java'),
(1576, 'ko', 'Merchant Shop Item Edit', '', 'AdminEditNpc.java'),
(1576, 'tw', '商店物品修改', '', 'AdminEditNpc.java'),

(1577, 'cn', '', '物品;价格', 'AdminEditNpc.java'),
(1577, 'en', '', 'Item;Price', 'AdminEditNpc.java'),
(1577, 'ko', '', 'Item;Price', 'AdminEditNpc.java'),
(1577, 'tw', '', '物品;價格', 'AdminEditNpc.java'),

(1578, 'cn', '', '储存;删除', 'AdminEditNpc.java'),
(1578, 'en', '', 'Save;Delete', 'AdminEditNpc.java'),
(1578, 'ko', '', 'Save;Delete', 'AdminEditNpc.java'),
(1578, 'tw', '', '儲存;刪除', 'AdminEditNpc.java'),

(1579, 'cn', '返回商店清单', '', 'AdminEditNpc.java'),
(1579, 'en', 'Back to Shop List', '', 'AdminEditNpc.java'),
(1579, 'ko', 'Back to Shop List', '', 'AdminEditNpc.java'),
(1579, 'tw', '返回商店清單', '', 'AdminEditNpc.java'),

(1580, 'cn', '', '删除「;」于贩卖清单：', 'AdminEditNpc.java'),
(1580, 'en', '', 'Deleted ; from Trade List ', 'AdminEditNpc.java'),
(1580, 'ko', '', 'Deleted ; from Trade List ', 'AdminEditNpc.java'),
(1580, 'tw', '', '刪除「;」於販賣清單：', 'AdminEditNpc.java'),

(1581, 'cn', '商店物品删除', '', 'AdminEditNpc.java'),
(1581, 'en', 'Merchant Shop Item Delete', '', 'AdminEditNpc.java'),
(1581, 'ko', 'Merchant Shop Item Delete', '', 'AdminEditNpc.java'),
(1581, 'tw', '商店物品刪除', '', 'AdminEditNpc.java'),

(1582, 'cn', '刪除於清單：', '', 'AdminEditNpc.java'),
(1582, 'en', 'Delete entry in trade list ', '', 'AdminEditNpc.java'),
(1582, 'ko', 'Delete entry in trade list ', '', 'AdminEditNpc.java'),
(1582, 'tw', '刪除於清單：', '', 'AdminEditNpc.java'),

(1583, 'cn', '无此贩卖清单！', '', 'AdminEditNpc.java'),
(1583, 'en', 'TradeList not found!', '', 'AdminEditNpc.java'),
(1583, 'ko', 'TradeList not found!', '', 'AdminEditNpc.java'),
(1583, 'tw', '無此販賣清單！', '', 'AdminEditNpc.java'),

(1584, 'cn', '', '增加「;」至贩卖清单：', 'AdminEditNpc.java'),
(1584, 'en', '', 'Added ; to Trade List ', 'AdminEditNpc.java'),
(1584, 'ko', '', 'Added ; to Trade List ', 'AdminEditNpc.java'),
(1584, 'tw', '', '增加「;」至販賣清單：', 'AdminEditNpc.java'),

(1585, 'cn', '', '无法增加「;」至贩卖清单「;」！', 'AdminEditNpc.java'),
(1585, 'en', '', 'Could not add ; to Trade List ;!', 'AdminEditNpc.java'),
(1585, 'ko', '', 'Could not add ; to Trade List ;!', 'AdminEditNpc.java'),
(1585, 'tw', '', '無法增加「;」至販賣清單「;」！', 'AdminEditNpc.java'),

(1586, 'cn', '商店物品增加', '', 'AdminEditNpc.java'),
(1586, 'en', 'Merchant Shop Item Add', '', 'AdminEditNpc.java'),
(1586, 'ko', 'Merchant Shop Item Add', '', 'AdminEditNpc.java'),
(1586, 'tw', '商店物品增加', '', 'AdminEditNpc.java'),

(1587, 'cn', '增加於清单', '', 'AdminEditNpc.java'),
(1587, 'en', 'Add a new entry in merchantList.', '', 'AdminEditNpc.java'),
(1587, 'ko', 'Add a new entry in merchantList.', '', 'AdminEditNpc.java'),
(1587, 'tw', '增加於清單', '', 'AdminEditNpc.java'),

(1588, 'cn', '', '物品ID;价格;增加', 'AdminEditNpc.java'),
(1588, 'en', '', 'ItemID;Price;Add', 'AdminEditNpc.java'),
(1588, 'ko', '', 'ItemID;Price;Add', 'AdminEditNpc.java'),
(1588, 'tw', '', '物品ID;價格;增加', 'AdminEditNpc.java'),

(1589, 'cn', '', '商店贩卖清单：;之;商店ID：', 'AdminEditNpc.java'),
(1589, 'en', '', 'Merchant Shop List Page: ; of ;Shop ID: ', 'AdminEditNpc.java'),
(1589, 'ko', '', 'Merchant Shop List Page: ; of ;Shop ID: ', 'AdminEditNpc.java'),
(1589, 'tw', '', '商店販賣清單：;之;商店ID：', 'AdminEditNpc.java'),

(1590, 'cn', '第', '页', 'AdminEditNpc.java'),
(1590, 'en', 'Page ', ' ', 'AdminEditNpc.java'),
(1590, 'ko', 'Page ', ' ', 'AdminEditNpc.java'),
(1590, 'tw', '第', '頁', 'AdminEditNpc.java'),

(1591, 'cn', '', '增加商店物品;关闭', 'AdminEditNpc.java'),
(1591, 'en', '', 'Add Shop Item;Close', 'AdminEditNpc.java'),
(1591, 'ko', '', 'Add Shop Item;Close', 'AdminEditNpc.java'),
(1591, 'tw', '', '增加商店物品;關閉', 'AdminEditNpc.java'),

(1592, 'cn', '未知的 NPC ID：', '', 'AdminEditNpc.java'),
(1592, 'en', 'Unknown npc template Id: ', '', 'AdminEditNpc.java'),
(1592, 'ko', 'Unknown npc template Id: ', '', 'AdminEditNpc.java'),
(1592, 'tw', '未知的 NPC ID：', '', 'AdminEditNpc.java'),

(1593, 'cn', '商店清单', '', 'AdminEditNpc.java'),
(1593, 'en', 'Merchant Shop Lists', '', 'AdminEditNpc.java'),
(1593, 'ko', 'Merchant Shop Lists', '', 'AdminEditNpc.java'),
(1593, 'tw', '商店清單', '', 'AdminEditNpc.java'),

(1594, 'cn', '', 'NPC：;价格设定：', 'AdminEditNpc.java'),
(1594, 'en', '', 'NPC: ;Price Config: ', 'AdminEditNpc.java'),
(1594, 'ko', '', 'NPC: ;Price Config: ', 'AdminEditNpc.java'),
(1594, 'tw', '', 'NPC：;價格設定：', 'AdminEditNpc.java'),

(1595, 'cn', '商店ID：', '', 'AdminEditNpc.java'),
(1595, 'en', 'Merchant List ID ', '', 'AdminEditNpc.java'),
(1595, 'ko', 'Merchant List ID ', '', 'AdminEditNpc.java'),
(1595, 'tw', '商店ID：', '', 'AdminEditNpc.java'),

(1596, 'cn', '没有发现档案：', '', 'AdminEditNpc.java'),
(1596, 'en', 'File not found: ', '', 'AdminEditNpc.java'),
(1596, 'ko', 'File not found: ', '', 'AdminEditNpc.java'),
(1596, 'tw', '沒有發現檔案：', '', 'AdminEditNpc.java'),

(1597, 'cn', '显示掉落清单', '', 'AdminEditNpc.java'),
(1597, 'en', 'Show droplist page ', '', 'AdminEditNpc.java'),
(1597, 'ko', 'Show droplist page ', '', 'AdminEditNpc.java'),
(1597, 'tw', '顯示掉落清單', '', 'AdminEditNpc.java'),

(1598, 'cn', '', '种类;物品;类型;删除', 'AdminEditNpc.java'),
(1598, 'en', '', 'cat.;item;type;del', 'AdminEditNpc.java'),
(1598, 'ko', '', 'cat.;item;type;del', 'AdminEditNpc.java'),
(1598, 'tw', '', '種類;物品;類型;刪除', 'AdminEditNpc.java'),

(1599, 'cn', '', 'Q;S;D;删除', 'AdminEditNpc.java'),
(1599, 'en', '', 'Q;S;D;del', 'AdminEditNpc.java'),
(1599, 'ko', '', 'Q;S;D;del', 'AdminEditNpc.java'),
(1599, 'tw', '', 'Q;S;D;刪除', 'AdminEditNpc.java'),

(1600, 'cn', '', '上一页;下一页', 'AdminEditNpc.java'),
(1600, 'en', '', 'Prev Page;Next Page;', 'AdminEditNpc.java'),
(1600, 'ko', '', 'Prev Page;Next Page;', 'AdminEditNpc.java'),
(1600, 'tw', '', '上一頁;下一頁', 'AdminEditNpc.java'),

(1601, 'cn', '', '增加掉落;关闭', 'AdminEditNpc.java'),
(1601, 'en', '', 'Add Drop Data;Close', 'AdminEditNpc.java'),
(1601, 'ko', '', 'Add Drop Data;Close', 'AdminEditNpc.java'),
(1601, 'tw', '', '增加掉落;關閉', 'AdminEditNpc.java'),

(1602, 'cn', '未知的物品 ID：', '', 'AdminEditNpc.java'),
(1602, 'en', 'Unknown item template id ', '', 'AdminEditNpc.java'),
(1602, 'ko', 'Unknown item template id ', '', 'AdminEditNpc.java'),
(1602, 'tw', '未知的物品 ID：', '', 'AdminEditNpc.java'),

(1603, 'cn', '修改掉落', '', 'AdminEditNpc.java'),
(1603, 'en', 'Edit drop data', '', 'AdminEditNpc.java'),
(1603, 'ko', 'Edit drop data', '', 'AdminEditNpc.java'),
(1603, 'tw', '修改掉落', '', 'AdminEditNpc.java'),

(1604, 'cn', '', '物品;种类;最小数量;最大数量;机率;储存', 'AdminEditNpc.java'),
(1604, 'en', '', 'Item;Category;Min count;Max count;Chance;Save', 'AdminEditNpc.java'),
(1604, 'ko', '', 'Item;Category;Min count;Max count;Chance;Save', 'AdminEditNpc.java'),
(1604, 'tw', '', '物品;種類;最小數量;最大數量;機率;儲存', 'AdminEditNpc.java'),

(1605, 'cn', '没有发现掉落资料。', '', 'AdminEditNpc.java'),
(1605, 'en', 'No drop data detail found.', '', 'AdminEditNpc.java'),
(1605, 'ko', 'No drop data detail found.', '', 'AdminEditNpc.java'),
(1605, 'tw', '沒有發現掉落資料。', '', 'AdminEditNpc.java'),

(1606, 'cn', '返回掉落清单', '', 'AdminEditNpc.java'),
(1606, 'en', 'Back to Droplist', '', 'AdminEditNpc.java'),
(1606, 'ko', 'Back to Droplist', '', 'AdminEditNpc.java'),
(1606, 'tw', '返回掉落清單', '', 'AdminEditNpc.java'),

(1607, 'cn', '', '物品ID;最小数量;最大数量;种类(回收=-1);机率;增加', 'AdminEditNpc.java'),
(1607, 'en', '', 'Item Id;Min count;Max count;Category (sweep=-1);Chance;Add', 'AdminEditNpc.java'),
(1607, 'ko', '', 'Item Id;Min count;Max count;Category (sweep=-1);Chance;Add', 'AdminEditNpc.java'),
(1607, 'tw', '', '物品ID;最小數量;最大數量;種類(回收=-1);機率;增加', 'AdminEditNpc.java'),

(1608, 'cn', '', '更新掉落资料至 NPC ID：; 物品 ID：; 种类：;。', 'AdminEditNpc.java'),
(1608, 'en', '', 'Updated drop data for npc id ; and item id ; in category ;.', 'AdminEditNpc.java'),
(1608, 'ko', '', 'Updated drop data for npc id ; and item id ; in category ;.', 'AdminEditNpc.java'),
(1608, 'tw', '', '更新掉落資料至 NPC ID：; 物品 ID：; 種類：;。', 'AdminEditNpc.java'),

(1609, 'cn', '', '增加掉落资料至 NPC ID：; 物品 ID：; 种类：;。', 'AdminEditNpc.java'),
(1609, 'en', '', 'Added drop data for npc id ; with item id ; in category ;.', 'AdminEditNpc.java'),
(1609, 'ko', '', 'Added drop data for npc id ; with item id ; in category ;.', 'AdminEditNpc.java'),
(1609, 'tw', '', '增加掉落資料至 NPC ID：; 物品 ID：; 種類：;。', 'AdminEditNpc.java'),

(1610, 'cn', '', '删除掉落;删除掉落;物品ID;种类;删除', 'AdminEditNpc.java'),
(1610, 'en', '', 'Drop Data Delete;Delete drop data.;Item ID;Category;Delete', 'AdminEditNpc.java'),
(1610, 'ko', '', 'Drop Data Delete;Delete drop data.;Item ID;Category;Delete', 'AdminEditNpc.java'),
(1610, 'tw', '', '刪除掉落;刪除掉落;物品ID;種類;刪除', 'AdminEditNpc.java'),

(1611, 'cn', '', '删除掉落资料从 NPC ID：; 物品 ID：; 种类：;。', 'AdminEditNpc.java'),
(1611, 'en', '', 'Deleted drop data for npc id ; and item id ; in category ;.', 'AdminEditNpc.java'),
(1611, 'ko', '', 'Deleted drop data for npc id ; and item id ; in category ;.', 'AdminEditNpc.java'),
(1611, 'tw', '', '刪除掉落資料從 NPC ID：; 物品 ID：; 種類：;。', 'AdminEditNpc.java'),

(1612, 'cn', '显示技能清单', '', 'AdminEditNpc.java'),
(1612, 'en', 'Show NPC Skill List', '', 'AdminEditNpc.java'),
(1612, 'ko', 'Show NPC Skill List', '', 'AdminEditNpc.java'),
(1612, 'tw', '顯示技能清單', '', 'AdminEditNpc.java'),

(1613, 'cn', '', ' 技能;技能名称 [ID-等级];删除', 'AdminEditNpc.java'),
(1613, 'en', '', ' skills;Skill name [skill id-skill lvl];Delete', 'AdminEditNpc.java'),
(1613, 'ko', '', ' skills;Skill name [skill id-skill lvl];Delete', 'AdminEditNpc.java'),
(1613, 'tw', '', ' 技能;技能名稱 [ID-等級];刪除', 'AdminEditNpc.java'),

(1614, 'cn', '', '增加技能;关闭', 'AdminEditNpc.java'),
(1614, 'en', '', 'Add Skill;Close', 'AdminEditNpc.java'),
(1614, 'ko', '', 'Add Skill;Close', 'AdminEditNpc.java'),
(1614, 'tw', '', '增加技能;關閉', 'AdminEditNpc.java'),

(1615, 'cn', '修改技能', '', 'AdminEditNpc.java'),
(1615, 'en', 'NPC Skill Edit', '', 'AdminEditNpc.java'),
(1615, 'ko', 'NPC Skill Edit', '', 'AdminEditNpc.java'),
(1615, 'tw', '修改技能', '', 'AdminEditNpc.java'),

(1616, 'cn', '', 'NPC：;技能：;等级：;储存;返回技能清单', 'AdminEditNpc.java'),
(1616, 'en', '', 'NPC: ;Skill: ;Skill Lvl: ;Save;Back to SkillList', 'AdminEditNpc.java'),
(1616, 'ko', '', 'NPC: ;Skill: ;Skill Lvl: ;Save;Back to SkillList', 'AdminEditNpc.java'),
(1616, 'tw', '', 'NPC：;技能：;等級：;儲存;返回技能清單', 'AdminEditNpc.java'),

(1617, 'cn', '无法增加技能：技能无此等级！', '', 'AdminEditNpc.java'),
(1617, 'en', 'Could not add npc skill: not existing skill id with that level!', '', 'AdminEditNpc.java'),
(1617, 'ko', 'Could not add npc skill: not existing skill id with that level!', '', 'AdminEditNpc.java'),
(1617, 'tw', '無法增加技能：技能無此等級！', '', 'AdminEditNpc.java'),

(1618, 'cn', '技能无此等级！等级并未改变。', '', 'AdminEditNpc.java'),
(1618, 'en', 'Skill id with requested level doesn\'t exist! Skill level not changed.', '', 'AdminEditNpc.java'),
(1618, 'ko', 'Skill id with requested level doesn\'t exist! Skill level not changed.', '', 'AdminEditNpc.java'),
(1618, 'tw', '技能無此等級！等級並未改變。', '', 'AdminEditNpc.java'),

(1619, 'cn', '', '更新技能 ID： ;给 NPC ID：; 至等级 ; 。', 'AdminEditNpc.java'),
(1619, 'en', '', 'Updated skill id ; for npc id ; to level ;.', 'AdminEditNpc.java'),
(1619, 'ko', '', 'Updated skill id ; for npc id ; to level ;.', 'AdminEditNpc.java'),
(1619, 'tw', '', '更新技能 ID： ;給 NPC ID：; 至等級 ; 。', 'AdminEditNpc.java'),

(1620, 'cn', '', '增加技能;NPC：;技能ID：;等级：;增加技能;返回技能清单', 'AdminEditNpc.java'),
(1620, 'en', '', 'NPC Skill Add;NPC: ;SkillId: ;Level: ;Add Skill;Back to SkillList', 'AdminEditNpc.java'),
(1620, 'ko', '', 'NPC 스킬추가;NPC: ;스킬ID: ;레벨: ;스킬추가;스킬 목록으로', 'AdminEditNpc.java'),
(1620, 'tw', '', '增加技能;NPC：;技能ID：;等級：;增加技能;返回技能清單', 'AdminEditNpc.java'),

(1621, 'cn', '', '增加技能;给 NPC ID：;。', 'AdminEditNpc.java'),
(1621, 'en', '', 'Added skill ; to npc id ;.', 'AdminEditNpc.java'),
(1621, 'ko', '', '스킬추가; NPC ID:;.', 'AdminEditNpc.java'),
(1621, 'tw', '', '增加技能;給 NPC ID：;。', 'AdminEditNpc.java'),

(1622, 'cn', '', '删除技能 ID：; 从 NPC ID：;。', 'AdminEditNpc.java'),
(1622, 'en', '', 'Deleted skill id ; from npc id ;.', 'AdminEditNpc.java'),
(1622, 'ko', '', '스킬삭제 ID:; NPC ID:;.', 'AdminEditNpc.java'),
(1622, 'tw', '', '刪除技能 ID：; 從 NPC ID：;。', 'AdminEditNpc.java'),

(1651, 'cn', '', '「;」出现所要求的动作。', 'AdminEffects.java'),
(1651, 'en', '', '; was affected by your request.', 'AdminEffects.java'),
(1651, 'ko', '', '; was affected by your request.', 'AdminEffects.java'),
(1651, 'tw', '', '「;」出現所要求的動作。', 'AdminEffects.java'),

(1652, 'cn', ' 范围内出现/消失所要求的效果。', '', 'AdminEffects.java'),
(1652, 'en', ' units radius affected by your request.', '', 'AdminEffects.java'),
(1652, 'ko', ' units radius affected by your request.', '', 'AdminEffects.java'),
(1652, 'tw', ' 範圍內出現/消失所要求的效果。', '', 'AdminEffects.java'),

(1653, 'cn', '', '「;」出现/消失所要求的异常效果。', 'AdminEffects.java'),
(1653, 'en', '', ';\'s abnormal status was affected by your request.', 'AdminEffects.java'),
(1653, 'ko', '', ';\'s abnormal status was affected by your request.', 'AdminEffects.java'),
(1653, 'tw', '', '「;」出現/消失所要求的異常效果。', 'AdminEffects.java'),

(1654, 'cn', '', '「;」出现/消失所要求的特殊效果。', 'AdminEffects.java'),
(1654, 'en', '', ';\'s special status was affected by your request.', 'AdminEffects.java'),
(1654, 'ko', '', ';\'s special status was affected by your request.', 'AdminEffects.java'),
(1654, 'tw', '', '「;」出現/消失所要求的特殊效果。', 'AdminEffects.java'),

(1655, 'cn', '', '出现技能效果：;。', 'AdminEffects.java'),
(1655, 'en', '', ' performs MSU ;/ by your request.', 'AdminEffects.java'),
(1655, 'ko', '', ' performs MSU ;/ by your request.', 'AdminEffects.java'),
(1655, 'tw', '', '出現技能效果：;。', 'AdminEffects.java'),

(1656, 'cn', '', '播放「;」。', 'AdminEffects.java'),
(1656, 'en', '', 'Playing ;.', 'AdminEffects.java'),
(1656, 'ko', '', 'Playing ;.', 'AdminEffects.java'),
(1656, 'tw', '', '播放「;」。', 'AdminEffects.java'),

(1660, 'cn', '无', '', 'AdminElement.java'),
(1660, 'en', 'None', '', 'AdminElement.java'),
(1660, 'ko', 'None', '', 'AdminElement.java'),
(1660, 'tw', '無', '', 'AdminElement.java'),

(1661, 'cn', '', '属性强化「;」的「;」，\n从「;」變「;」。', 'AdminElement.java'),
(1661, 'en', '', 'Changed elemental power of ;\'s ; from ; to ;.', 'AdminElement.java'),
(1661, 'ko', '', 'Changed elemental power of ;\'s ; from ; to ;.', 'AdminElement.java'),
(1661, 'tw', '', '屬性強化「;」的「;」，\n從「;」變「;」。', 'AdminElement.java'),

(1662, 'cn', '', '管理者「;」属性强化你的「;」，\n从「;」變「;」。', 'AdminElement.java'),
(1662, 'en', '', '; has changed the elemental power of your ; from ; to ;.', 'AdminElement.java'),
(1662, 'ko', '', '; has changed the elemental power of your ; from ; to ;.', 'AdminElement.java'),
(1662, 'tw', '', '管理者「;」屬性強化你的「;」，\n從「;」變「;」。', 'AdminElement.java'),

(1666, 'cn', '强化等级范围只限于 0-65535 之间。', '', 'AdminEnchant.java'),
(1666, 'en', 'You must set the enchant level to be between 0-65535.', '', 'AdminEnchant.java'),
(1666, 'ko', '0-65535사이에서 인챈트 레벨을 설정해야 합니다.', '', 'AdminEnchant.java'),
(1666, 'tw', '強化等級範圍只限於 0-65535 之間。', '', 'AdminEnchant.java'),

(1667, 'cn', '', '强化「;」的「;」，从 ; 变 ;。', 'AdminEnchant.java'),
(1667, 'en', '', 'Changed enchantment of ;\'s ; from ; to ;.', 'AdminEnchant.java'),
(1667, 'ko', '', 'Changed enchantment of ;\'s ; from ; to ;.', 'AdminEnchant.java'),
(1667, 'tw', '', '強化「;」的「;」，從 ; 變 ;。', 'AdminEnchant.java'),

(1668, 'cn', '', '管理者强化你的「;」，从 ; 变 ;。', 'AdminEnchant.java'),
(1668, 'en', '', 'Admin has changed the enchantment of your ; from ; to ;.', 'AdminEnchant.java'),
(1668, 'ko', '', 'Admin has changed the enchantment of your ; from ; to ;.', 'AdminEnchant.java'),
(1668, 'tw', '', '管理者強化你的「;」，從 ; 變 ;。', 'AdminEnchant.java'),

(1671, 'cn', '使用方法：//add_exp_sp exp sp', '', 'AdminExpSp.java'),
(1671, 'en', 'Usage: //add_exp_sp exp sp', '', 'AdminExpSp.java'),
(1671, 'ko', '사용법: //add_exp_sp exp sp', '', 'AdminExpSp.java'),
(1671, 'tw', '使用方法：//add_exp_sp exp sp', '', 'AdminExpSp.java'),

(1672, 'cn', '使用方法：//remove_exp_sp exp sp', '', 'AdminExpSp.java'),
(1672, 'en', 'Usage: //remove_exp_sp exp sp', '', 'AdminExpSp.java'),
(1672, 'ko', '사용법: //remove_exp_sp exp sp', '', 'AdminExpSp.java'),
(1672, 'tw', '使用方法：//remove_exp_sp exp sp', '', 'AdminExpSp.java'),

(1673, 'cn', '管理者增加你的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),
(1673, 'en', 'Admin is adding you $1 xp and $2 sp.', '', 'AdminExpSp.java'),
(1673, 'ko', 'Admin is adding you $1 xp and $2 sp.', '', 'AdminExpSp.java'),
(1673, 'tw', '管理者增加你的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),

(1674, 'cn', '增加「$3」的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),
(1674, 'en', 'Added $1 xp and $2 sp to $3.', '', 'AdminExpSp.java'),
(1674, 'ko', 'Added $1 xp and $2 sp to $3.', '', 'AdminExpSp.java'),
(1674, 'tw', '增加「$3」的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),

(1675, 'cn', '管理者减少你的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),
(1675, 'en', 'Admin is removing you $1 xp and $2 sp.', '', 'AdminExpSp.java'),
(1675, 'ko', 'Admin is removing you $1 xp and $2 sp.', '', 'AdminExpSp.java'),
(1675, 'tw', '管理者減少你的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),

(1676, 'cn', '减少「$3」的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),
(1676, 'en', 'Removed $1 xp and $2 sp from $3.', '', 'AdminExpSp.java'),
(1676, 'ko', 'Removed $1 xp and $2 sp from $3.', '', 'AdminExpSp.java'),
(1676, 'tw', '減少「$3」的 $1 EXP 和 $2 SP。', '', 'AdminExpSp.java'),

(1680, 'cn', '功能尚未实装。', '', 'AdminFortSiege.java'),
(1680, 'en', 'Not implemented yet.', '', 'AdminFortSiege.java'),
(1680, 'ko', '구현되지 않았습니다.', '', 'AdminFortSiege.java'),
(1680, 'tw', '功能尚未實裝。', '', 'AdminFortSiege.java'),

(1681, 'cn', '要塞已无血盟占领。', '', 'AdminFortSiege.java'),
(1681, 'en', 'Unable to remove fort', '', 'AdminFortSiege.java'),
(1681, 'ko', '요새를 제거 할 수 없습니다', '', 'AdminFortSiege.java'),
(1681, 'tw', '要塞已無血盟佔領。', '', 'AdminFortSiege.java'),

(1685, 'cn', '你已经不再拥有GM权限。', '', 'AdminGm.java'),
(1685, 'en', 'You no longer have GM status.', '', 'AdminGm.java'),
(1685, 'ko', 'You no longer have GM status.', '', 'AdminGm.java'),
(1685, 'tw', '你已經不再擁有GM權限。', '', 'AdminGm.java'),

(1688, 'cn', '', '恢复范围「;」内的体力。', 'AdminHeal.java'),
(1688, 'en', '', 'Healed within ; unit radius.', 'AdminHeal.java'),
(1688, 'ko', '', 'Healed within ; unit radius.', 'AdminHeal.java'),
(1688, 'tw', '', '恢復範圍「;」內的體力。', 'AdminHeal.java'),

(1691, 'cn', '即时地区创造成功。', '', 'AdminInstance.java'),
(1691, 'en', 'Instance created', '', 'AdminInstance.java'),
(1691, 'ko', '인스턴스가 생성되었습니다', '', 'AdminInstance.java'),
(1691, 'tw', '即時地區創造成功。', '', 'AdminInstance.java'),

(1692, 'cn', '即时地区创造失败。', '', 'AdminInstance.java'),
(1692, 'en', 'Failed to create instance', '', 'AdminInstance.java'),
(1692, 'ko', '인스턴스를 생성하지 못했습니다', '', 'AdminInstance.java'),
(1692, 'tw', '即時地區創造失敗。', '', 'AdminInstance.java'),

(1693, 'cn', '', 'ID：; 名称：', 'AdminInstance.java'),
(1693, 'en', '', 'Id: ; Name: ', 'AdminInstance.java'),
(1693, 'ko', '', 'ID: ; 이름: ', 'AdminInstance.java'),
(1693, 'tw', '', 'ID：; 名稱：', 'AdminInstance.java'),

(1694, 'cn', '', '即时地区「;」并不存在。', 'AdminInstance.java'),
(1694, 'en', '', 'Instance ; doesnt exist.', 'AdminInstance.java'),
(1694, 'ko', '', '인스턴스 ; 존재하지 않습니다', 'AdminInstance.java'),
(1694, 'tw', '', '即時地區「;」並不存在。', 'AdminInstance.java'),

(1695, 'cn', '目标错误。', '', 'AdminInstance.java'),
(1695, 'en', 'Incorrect target.', '', 'AdminInstance.java'),
(1695, 'ko', '잘못된 대상.', '', 'AdminInstance.java'),
(1695, 'tw', '目標錯誤。', '', 'AdminInstance.java'),

(1696, 'cn', '管理者设置你的即时地区为：', '', 'AdminInstance.java'),
(1696, 'en', 'Admin set your instance to:', '', 'AdminInstance.java'),
(1696, 'ko', 'Admin set your instance to:', '', 'AdminInstance.java'),
(1696, 'tw', '管理者設置你的即時地區為：', '', 'AdminInstance.java'),

(1697, 'cn', '', '管理者设置「;」的即时地区为：', 'AdminInstance.java'),
(1697, 'en', '', 'Admin set ;\'s instance to:', 'AdminInstance.java'),
(1697, 'ko', '', 'Admin set ;\'s instance to:', 'AdminInstance.java'),
(1697, 'tw', '', '管理者設置「;」的即時地區為：', 'AdminInstance.java'),

(1698, 'cn', '', '移动「;」到即时地区：', 'AdminInstance.java'),
(1698, 'en', '', 'Moved ; to instance ', 'AdminInstance.java'),
(1698, 'ko', '', '이동 ; 인스턴스 ', 'AdminInstance.java'),
(1698, 'tw', '', '移動「;」到即時地區：', 'AdminInstance.java'),

(1699, 'cn', '删除即时地区。', '', 'AdminInstance.java'),
(1699, 'en', 'Instance destroyed', '', 'AdminInstance.java'),
(1699, 'ko', '인스턴스가 소멸되었습니다', '', 'AdminInstance.java'),
(1699, 'tw', '刪除即時地區。', '', 'AdminInstance.java'),

(1700, 'cn', '幽灵模式开启。', '', 'AdminInstance.java'),
(1700, 'en', 'Ghost mode enabled', '', 'AdminInstance.java'),
(1700, 'ko', '고스트 모드가 활성화되었습니다', '', 'AdminInstance.java'),
(1700, 'tw', '幽靈模式開啟。', '', 'AdminInstance.java'),

(1701, 'cn', '幽灵模式关闭。', '', 'AdminInstance.java'),
(1701, 'en', 'Ghost mode disabled', '', 'AdminInstance.java'),
(1701, 'ko', '고스트 모드가 비활성화되었습니다', '', 'AdminInstance.java'),
(1701, 'tw', '幽靈模式關閉。', '', 'AdminInstance.java'),

(1705, 'cn', '没有目标', '', 'AdminInstanceZone.java'),
(1705, 'en', 'no-target', '', 'AdminInstanceZone.java'),
(1705, 'ko', 'no-target', '', 'AdminInstanceZone.java'),
(1705, 'tw', '대상이 없습니다', '', 'AdminInstanceZone.java'),

(1706, 'cn', '', '即时地区 ; 由「;」所清除。', 'AdminInstanceZone.java'),
(1706, 'en', '', 'Instance zone ; cleared for player ;', 'AdminInstanceZone.java'),
(1706, 'ko', '', '인스턴스존 ; 플레이어가 제거되었습니다 ;', 'AdminInstanceZone.java'),
(1706, 'tw', '', '即時地區 ; 由「;」所清除。', 'AdminInstanceZone.java'),

(1707, 'cn', '', '管理者清除即时地区：;。', 'AdminInstanceZone.java'),
(1707, 'en', '', 'Admin cleared instance zone ; for you', 'AdminInstanceZone.java'),
(1707, 'ko', '', '지엠이 인스턴스존에서 제거했습니다 ; for you', 'AdminInstanceZone.java'),
(1707, 'tw', '', '管理者清除即時地區：;。', 'AdminInstanceZone.java'),

(1708, 'cn', '首页', '', 'AdminInstanceZone.java'),
(1708, 'en', 'Main', '', 'AdminInstanceZone.java'),
(1708, 'ko', '메인', '', 'AdminInstanceZone.java'),
(1708, 'tw', '首頁', '', 'AdminInstanceZone.java'),

(1709, 'cn', '玩家的即时地区', '', 'AdminInstanceZone.java'),
(1709, 'en', 'Character Instances', '', 'AdminInstanceZone.java'),
(1709, 'ko', '캐릭터 인스턴스', '', 'AdminInstanceZone.java'),
(1709, 'tw', '玩家的即時地區', '', 'AdminInstanceZone.java'),

(1710, 'cn', '返回', '', 'AdminInstanceZone.java'),
(1710, 'en', 'Back', '', 'AdminInstanceZone.java'),
(1710, 'ko', '이전', '', 'AdminInstanceZone.java'),
(1710, 'tw', '返回', '', 'AdminInstanceZone.java'),

(1711, 'cn', '即时地区的玩家：', '', 'AdminInstanceZone.java'),
(1711, 'en', 'Instances for ', '', 'AdminInstanceZone.java'),
(1711, 'ko', '인스턴스, ', '', 'AdminInstanceZone.java'),
(1711, 'tw', '即時地區的玩家：', '', 'AdminInstanceZone.java'),

(1712, 'cn', '', '名字;时间;动作', 'AdminInstanceZone.java'),
(1712, 'en', '', 'Name;Time;Action', 'AdminInstanceZone.java'),
(1712, 'ko', '', '이름;시간;액션', 'AdminInstanceZone.java'),
(1712, 'tw', '', '名字;時間;動作', 'AdminInstanceZone.java'),

(1713, 'cn', '清除', '', 'AdminInstanceZone.java'),
(1713, 'en', 'Clear', '', 'AdminInstanceZone.java'),
(1713, 'ko', '제거', '', 'AdminInstanceZone.java'),
(1713, 'tw', '清除', '', 'AdminInstanceZone.java'),

(1717, 'cn', '取消无敌。', '', 'AdminInvul.java'),
(1717, 'en', ' is now mortal', '', 'AdminInvul.java'),
(1717, 'ko', ' 무적모드가 해제되었습니다', '', 'AdminInvul.java'),
(1717, 'tw', '取消無敵。', '', 'AdminInvul.java'),

(1718, 'cn', '启动无敌。', '', 'AdminInvul.java'),
(1718, 'en', ' is now invulnerable', '', 'AdminInvul.java'),
(1718, 'ko', ' 무적모드가 설정되었습니다', '', 'AdminInvul.java'),
(1718, 'tw', '啟動無敵。', '', 'AdminInvul.java'),

(1721, 'cn', '', '踢除玩家「;」。', 'AdminKick.java'),
(1721, 'en', '', 'You kicked ; from the game.', 'AdminKick.java'),
(1721, 'ko', '', '게임에서 ; 추방되었습니다.', 'AdminKick.java'),
(1721, 'tw', '', '踢除玩家「;」。', 'AdminKick.java'),

(1722, 'cn', '', '踢除「;」位玩家。', 'AdminKick.java'),
(1722, 'en', '', 'Kicked ; players', 'AdminKick.java'),
(1722, 'ko', '', '추방되었습니다 ; 플레이어', 'AdminKick.java'),
(1722, 'tw', '', '踢除「;」位玩家。', 'AdminKick.java'),

(1725, 'cn', '', '杀死范围「;」内的玩家。', 'AdminKill.java'),
(1725, 'en', '', 'Killed all characters within a ; unit radius.', 'AdminKill.java'),
(1725, 'ko', '', 'Killed all characters within a ; unit radius.', 'AdminKill.java'),
(1725, 'tw', '', '殺死範圍「;」內的玩家。', 'AdminKill.java'),

(1728, 'cn', '', '等级必须是 1 至 ; 之间。', 'AdminLevel.java'),
(1728, 'en', '', 'You must specify level between 1 and ;.', 'AdminLevel.java'),
(1728, 'ko', '', 'You must specify level between 1 and ;.', 'AdminLevel.java'),
(1728, 'tw', '', '等級請輸入 1 至 ; 之間。', 'AdminLevel.java'),

(1731, 'cn', '服务端目前为 GM 专属。', '', 'AdminLogin.java'),
(1731, 'en', 'Server is now GM only', '', 'AdminLogin.java'),
(1731, 'ko', 'GM 전용', '', 'AdminLogin.java'),
(1731, 'tw', '伺服器目前為 GM 專屬。', '', 'AdminLogin.java'),

(1732, 'cn', '服务端目前为全部开放。', '', 'AdminLogin.java'),
(1732, 'en', 'Server is not GM only anymore', '', 'AdminLogin.java'),
(1732, 'ko', '모두', '', 'AdminLogin.java'),
(1732, 'tw', '伺服器目前為全部開放。', '', 'AdminLogin.java'),

(1733, 'cn', '最大玩家数量设置为：', '', 'AdminLogin.java'),
(1733, 'en', 'maxPlayer set to ', '', 'AdminLogin.java'),
(1733, 'ko', '최대 플레이어 설정 ', '', 'AdminLogin.java'),
(1733, 'tw', '最大玩家數量設置為：', '', 'AdminLogin.java'),

(1739, 'cn', '财富的铁匠：', '', 'AdminMammon.java'),
(1739, 'en', 'Blacksmith of Mammon: ', '', 'AdminMammon.java'),
(1739, 'ko', '마몬의 대장장이: ', '', 'AdminMammon.java'),
(1739, 'tw', '財富的鐵匠︰', '', 'AdminMammon.java'),

(1740, 'cn', '财富的铁匠未登记在重生清单。', '', 'AdminMammon.java'),
(1740, 'en', 'Blacksmith of Mammon isn\'t registered for spawn.', '', 'AdminMammon.java'),
(1740, 'ko', '마몬의 대장장이가 스폰에 등록되어 있지 않습니다.', '', 'AdminMammon.java'),
(1740, 'tw', '財富的鐵匠未登記在重生清單。', '', 'AdminMammon.java'),

(1741, 'cn', '财富的商人：', '', 'AdminMammon.java'),
(1741, 'en', 'Merchant of Mammon: ', '', 'AdminMammon.java'),
(1741, 'ko', '마몬의 상인: ', '', 'AdminMammon.java'),
(1741, 'tw', '財富的商人︰', '', 'AdminMammon.java'),

(1742, 'cn', '财富的商人未登记在重生清单。', '', 'AdminMammon.java'),
(1742, 'en', 'Merchant of Mammon isn\'t registered for spawn.', '', 'AdminMammon.java'),
(1742, 'ko', 'Merchant of Mammon isn\'t registered for spawn.', '', 'AdminMammon.java'),
(1742, 'tw', '마몬의 상인이 스폰에 등록되어 있지 않습니다', '', 'AdminMammon.java'),

(1743, 'cn', '', '财富的商人将在「;」分钟后重新定位。', 'AdminMammon.java'),
(1743, 'en', '', 'The Merchant of Mammon will respawn in ; minute(s).', 'AdminMammon.java'),
(1743, 'ko', '', 'The Merchant of Mammon will respawn in ; minute(s).', 'AdminMammon.java'),
(1743, 'tw', '', '財富的商人將在「;」分鐘後重新定位。', 'AdminMammon.java'),

(1744, 'cn', '', '财富的铁匠将在「;」分钟后重新定位。', 'AdminMammon.java'),
(1744, 'en', '', 'The Blacksmith of Mammon will respawn in ; minute(s).', 'AdminMammon.java'),
(1744, 'ko', '', 'The Blacksmith of Mammon will respawn in ; minute(s).', 'AdminMammon.java'),
(1744, 'tw', '', '財富的鐵匠將在「;」分鐘後重新定位。', 'AdminMammon.java'),

(1748, 'cn', '庄园系统：设定在下一个周期。', '', 'AdminManor.java'),
(1748, 'en', 'Manor System: set to next period', '', 'AdminManor.java'),
(1748, 'ko', '장원 시스템: 다음 기간 설정', '', 'AdminManor.java'),
(1748, 'tw', '莊園系統：設定在下一個週期。', '', 'AdminManor.java'),

(1749, 'cn', '庄园系统：下一个周期启动。', '', 'AdminManor.java'),
(1749, 'en', 'Manor System: next period approved', '', 'AdminManor.java'),
(1749, 'ko', '장원 시스템: 승인 다음 기간', '', 'AdminManor.java'),
(1749, 'tw', '莊園系統：下一個週期啟動。', '', 'AdminManor.java'),

(1750, 'cn', '', '「;」的庄园资料是空的。', 'AdminManor.java'),
(1750, 'en', '', 'Manor data for ; was nulled', 'AdminManor.java'),
(1750, 'ko', '', 'Manor data for ; was nulled', 'AdminManor.java'),
(1750, 'tw', '', '「;」的莊園資料是空的。', 'AdminManor.java'),

(1751, 'cn', '庄园资料是空的。', '', 'AdminManor.java'),
(1751, 'en', 'Manor data was nulled', '', 'AdminManor.java'),
(1751, 'ko', 'Manor data was nulled', '', 'AdminManor.java'),
(1751, 'tw', '장원 데이터가 비어 있습니다', '', 'AdminManor.java'),

(1752, 'cn', '庄园系统：不在维修中。', '', 'AdminManor.java'),
(1752, 'en', 'Manor System: not under maintenance', '', 'AdminManor.java'),
(1752, 'ko', '장원 시스템: not under maintenance', '', 'AdminManor.java'),
(1752, 'tw', '莊園系統：不在維修中。', '', 'AdminManor.java'),

(1753, 'cn', '庄园系统：维修中。', '', 'AdminManor.java'),
(1753, 'en', 'Manor System: under maintenance', '', 'AdminManor.java'),
(1753, 'ko', '장원 시스템: 준비 중', '', 'AdminManor.java'),
(1753, 'tw', '莊園系統：維修中。', '', 'AdminManor.java'),

(1754, 'cn', '庄园系统：所有资料已储存完毕。', '', 'AdminManor.java'),
(1754, 'en', 'Manor System: all data saved', '', 'AdminManor.java'),
(1754, 'ko', '장원 시스템: 전체 데이터가 저장되었습니다', '', 'AdminManor.java'),
(1754, 'tw', '莊園系統：所有資料已儲存完畢。', '', 'AdminManor.java'),

(1755, 'cn', '庄园系统：启动。', '', 'AdminManor.java'),
(1755, 'en', 'Manor System: enabled', '', 'AdminManor.java'),
(1755, 'ko', '장원 시스템: 활성화되었습니다', '', 'AdminManor.java'),
(1755, 'tw', '莊園系統：啟動。', '', 'AdminManor.java'),

(1756, 'cn', '庄园系统：关闭。', '', 'AdminManor.java'),
(1756, 'en', 'Manor System: disabled', '', 'AdminManor.java'),
(1756, 'ko', '장원 시스템: 비활성화되었습니다', '', 'AdminManor.java'),
(1756, 'tw', '莊園系統：關閉。', '', 'AdminManor.java'),

(1757, 'cn', '首页', '', 'AdminManor.java'),
(1757, 'en', 'Main', '', 'AdminManor.java'),
(1757, 'ko', '메인', '', 'AdminManor.java'),
(1757, 'tw', '首頁', '', 'AdminManor.java'),

(1758, 'cn', '庄园资讯', '', 'AdminManor.java'),
(1758, 'en', 'Manor Info', '', 'AdminManor.java'),
(1758, 'ko', '장원 정보', '', 'AdminManor.java'),
(1758, 'tw', '莊園資訊', '', 'AdminManor.java'),

(1759, 'cn', '返回', '', 'AdminManor.java'),
(1759, 'en', 'Back', '', 'AdminManor.java'),
(1759, 'ko', '이전', '', 'AdminManor.java'),
(1759, 'tw', '返回', '', 'AdminManor.java'),

(1760, 'cn', ' [庄园系统] ', '', 'AdminManor.java'),
(1760, 'en', ' [Manor System] ', '', 'AdminManor.java'),
(1760, 'ko', ' [Manor System] ', '', 'AdminManor.java'),
(1760, 'tw', ' [莊園系統] ', '', 'AdminManor.java'),

(1761, 'cn', '关闭：', '', 'AdminManor.java'),
(1761, 'en', 'Disabled: ', '', 'AdminManor.java'),
(1761, 'ko', 'Disabled: ', '', 'AdminManor.java'),
(1761, 'tw', '關閉：', '', 'AdminManor.java'),

(1762, 'cn', '', '确定;取消', 'AdminManor.java'),
(1762, 'en', '', 'yes;no', 'AdminManor.java'),
(1762, 'ko', '', 'yes;no', 'AdminManor.java'),
(1762, 'tw', '', '確定;取消', 'AdminManor.java'),

(1763, 'cn', '正在维修：', '', 'AdminManor.java'),
(1763, 'en', 'Under Maintenance: ', '', 'AdminManor.java'),
(1763, 'ko', 'Under Maintenance: ', '', 'AdminManor.java'),
(1763, 'tw', '正在維修：', '', 'AdminManor.java'),

(1764, 'cn', '重置时间：', '', 'AdminManor.java'),
(1764, 'en', 'Time to refresh: ', '', 'AdminManor.java'),
(1764, 'ko', '갱신 시간: ', '', 'AdminManor.java'),
(1764, 'tw', '重置時間：', '', 'AdminManor.java'),

(1765, 'cn', '开放时间：', '', 'AdminManor.java'),
(1765, 'en', 'Time to approve: ', '', 'AdminManor.java'),
(1765, 'ko', '승인 시간: ', '', 'AdminManor.java'),
(1765, 'tw', '開放時間：', '', 'AdminManor.java'),

(1766, 'cn', '设定下回', '', 'AdminManor.java'),
(1766, 'en', 'Set Next', '', 'AdminManor.java'),
(1766, 'ko', '다음 설정', '', 'AdminManor.java'),
(1766, 'tw', '設定下回', '', 'AdminManor.java'),

(1767, 'cn', '开放下回', '', 'AdminManor.java'),
(1767, 'en', 'Approve Next', '', 'AdminManor.java'),
(1767, 'ko', '다음 승인', '', 'AdminManor.java'),
(1767, 'tw', '開放下回', '', 'AdminManor.java'),

(1768, 'cn', '', '设定正常;设定维修', 'AdminManor.java'),
(1768, 'en', '', 'Set normal;Set mainteance', 'AdminManor.java'),
(1768, 'ko', '', 'Set normal;Set mainteance', 'AdminManor.java'),
(1768, 'tw', '', '設定正常;設定維修', 'AdminManor.java'),

(1769, 'cn', '', '开启;关闭', 'AdminManor.java'),
(1769, 'en', '', 'Enable;Disable', 'AdminManor.java'),
(1769, 'ko', '', '활성화;비활성화', 'AdminManor.java'),
(1769, 'tw', '', '開啟;關閉', 'AdminManor.java'),

(1770, 'cn', '重置', '', 'AdminManor.java'),
(1770, 'en', 'Refresh', '', 'AdminManor.java'),
(1770, 'ko', '갱신', '', 'AdminManor.java'),
(1770, 'tw', '重置', '', 'AdminManor.java'),

(1771, 'cn', '城堡资讯：', '', 'AdminManor.java'),
(1771, 'en', 'Castle Information:', '', 'AdminManor.java'),
(1771, 'ko', '성 정보:', '', 'AdminManor.java'),
(1771, 'tw', '城堡資訊：', '', 'AdminManor.java'),

(1772, 'cn', '目前周期', '', 'AdminManor.java'),
(1772, 'en', 'Current Period', '', 'AdminManor.java'),
(1772, 'ko', '현재 기간', '', 'AdminManor.java'),
(1772, 'tw', '目前週期', '', 'AdminManor.java'),

(1773, 'cn', '下回周期', '', 'AdminManor.java'),
(1773, 'en', 'Next Period', '', 'AdminManor.java'),
(1773, 'ko', '다음 기간', '', 'AdminManor.java'),
(1773, 'tw', '下回週期', '', 'AdminManor.java'),

(1777, 'cn', '管理者对你进行传送。', '', 'AdminMenu.java'),
(1777, 'en', 'Admin is teleporting you.', '', 'AdminMenu.java'),
(1777, 'ko', '지엠이 당신을 소환했습니다.', '', 'AdminMenu.java'),
(1777, 'tw', '管理者對你進行傳送。', '', 'AdminMenu.java'),

(1778, 'cn', '玩家不在队伍中。', '', 'AdminMenu.java'),
(1778, 'en', 'Player is not in party.', '', 'AdminMenu.java'),
(1778, 'ko', '플레이어가 파티상태가 아닙니다.', '', 'AdminMenu.java'),
(1778, 'tw', '玩家不在隊伍中。', '', 'AdminMenu.java'),

(1779, 'cn', '管理者向队伍进行传送。', '', 'AdminMenu.java'),
(1779, 'en', 'Your party is being teleported by an Admin.', '', 'AdminMenu.java'),
(1779, 'ko', '지엠이 당신의 파티를 소환했습니다.', '', 'AdminMenu.java'),
(1779, 'tw', '管理者向隊伍進行傳送。', '', 'AdminMenu.java'),

(1780, 'cn', '并未加入血盟。', '', 'AdminMenu.java'),
(1780, 'en', 'Player is not in a clan.', '', 'AdminMenu.java'),
(1780, 'ko', 'Player is not in a clan.', '', 'AdminMenu.java'),
(1780, 'tw', '並未加入血盟。', '', 'AdminMenu.java'),

(1781, 'cn', '管理者向血盟进行传送。', '', 'AdminMenu.java'),
(1781, 'en', 'Your clan is being teleported by an Admin.', '', 'AdminMenu.java'),
(1781, 'ko', 'Your clan is being teleported by an Admin.', '', 'AdminMenu.java'),
(1781, 'tw', '管理者向血盟進行傳送。', '', 'AdminMenu.java'),

(1782, 'cn', '', '踢除玩家「;」。', 'AdminMenu.java'),
(1782, 'en', '', 'You kicked ; from the game.', 'AdminMenu.java'),
(1782, 'ko', '', '게임에서 ; 추방되었습니다.', 'AdminMenu.java'),
(1782, 'tw', '', '踢除玩家「;」。', 'AdminMenu.java'),

(1783, 'cn', '', '玩家「;」不在游戏中。', 'AdminMenu.java'),
(1783, 'en', '', 'Player ; was not found in the game.', 'AdminMenu.java'),
(1783, 'ko', '', '플레이어 ; 게임에서 찾을 수 없습니다.', 'AdminMenu.java'),
(1783, 'tw', '', '玩家「;」不在遊戲中。', 'AdminMenu.java'),

(1784, 'cn', '没有相关权限。', '', 'AdminMenu.java'),
(1784, 'en', 'You don\'t have the access right to use this command!', '', 'AdminMenu.java'),
(1784, 'ko', 'You don\'t have the access right to use this command!', '', 'AdminMenu.java'),
(1784, 'tw', '沒有相關權限。', '', 'AdminMenu.java'),

(1785, 'cn', '', '杀死玩家「;」。', 'AdminMenu.java'),
(1785, 'en', '', 'You killed ;', 'AdminMenu.java'),
(1785, 'ko', '', '당신을 죽였습니다 ;', 'AdminMenu.java'),
(1785, 'tw', '', '殺死玩家「;」。', 'AdminMenu.java'),

(1786, 'cn', '', '传送至玩家「;」。', 'AdminMenu.java'),
(1786, 'en', '', 'You\'re teleporting yourself to character ;', 'AdminMenu.java'),
(1786, 'ko', '', 'You\'re teleporting yourself to character ;', 'AdminMenu.java'),
(1786, 'tw', '', '傳送至玩家「;」。', 'AdminMenu.java'),

(1790, 'cn', '', '「;」血盟创立。盟主：', 'AdminPledge.java'),
(1790, 'en', '', 'Clan ; created. Leader: ', 'AdminPledge.java'),
(1790, 'ko', '', '혈맹 ; 생성. 군주: ', 'AdminPledge.java'),
(1790, 'tw', '', '「;」血盟創立。盟主︰', 'AdminPledge.java'),

(1791, 'cn', '血盟解散。', '', 'AdminPledge.java'),
(1791, 'en', 'Clan disbanded.', '', 'AdminPledge.java'),
(1791, 'ko', '혈맹이 해산되었습니다.', '', 'AdminPledge.java'),
(1791, 'tw', '血盟解散。', '', 'AdminPledge.java'),

(1792, 'cn', '解散血盟发生错误。', '', 'AdminPledge.java'),
(1792, 'en', 'There was a problem while destroying the clan.', '', 'AdminPledge.java'),
(1792, 'ko', 'There was a problem while destroying the clan.', '', 'AdminPledge.java'),
(1792, 'tw', '解散血盟發生錯誤。', '', 'AdminPledge.java'),

(1793, 'cn', '', '设定等级「;」给血盟：', 'AdminPledge.java'),
(1793, 'en', '', 'You set level ; for clan ', 'AdminPledge.java'),
(1793, 'ko', '', '혈맹 ; 레벨 설정 ', 'AdminPledge.java'),
(1793, 'tw', '', '設定等級「;」給血盟：', 'AdminPledge.java'),

(1794, 'cn', '等级错误。', '', 'AdminPledge.java'),
(1794, 'en', 'Level incorrect.', '', 'AdminPledge.java'),
(1794, 'ko', '잘못된 레벨.', '', 'AdminPledge.java'),
(1794, 'tw', '等級錯誤。', '', 'AdminPledge.java'),

(1795, 'cn', '血盟等级必须达到等級「5」以上。', '', 'AdminPledge.java'),
(1795, 'en', 'Only clans of level 5 or above may receive reputation points.', '', 'AdminPledge.java'),
(1795, 'ko', '혈맹 레벨5이상 명성 포인트를 받을 수 있습니다', '', 'AdminPledge.java'),
(1795, 'tw', '血盟等級必須達到等級「5」以上。', '', 'AdminPledge.java'),

(1796, 'cn', '', '你;增加「;移除「;」点声望;给「;从「;」血盟。目前总分：', 'AdminPledge.java'),
(1796, 'en', '', 'You ;add ;remove ; points ;to ;from ;\'s reputation. Their current score is ', 'AdminPledge.java'),
(1796, 'ko', '', 'You ;추가 ;제거 ; points ;to ;from ;\'s reputation. Their current score is ', 'AdminPledge.java'),
(1796, 'tw', '', '你;增加「;移除「;」點聲望;給「;從「;」血盟。目前總分：', 'AdminPledge.java'),

(1800, 'cn', '未知的变身ID：', '', 'AdminPolymorph.java'),
(1800, 'en', 'Unknow transformation id: ', '', 'AdminPolymorph.java'),
(1800, 'ko', '알 수 없는 변신 ID: ', '', 'AdminPolymorph.java'),
(1800, 'tw', '未知的變身ID：', '', 'AdminPolymorph.java'),

(1801, 'cn', '变身成功。', '', 'AdminPolymorph.java'),
(1801, 'en', 'Polymorph succeed', '', 'AdminPolymorph.java'),
(1801, 'ko', 'Polymorph succeed', '', 'AdminPolymorph.java'),
(1801, 'tw', '變身成功。', '', 'AdminPolymorph.java'),

(1802, 'cn', '变身取消。', '', 'AdminPolymorph.java'),
(1802, 'en', 'Unpolymorph succeed', '', 'AdminPolymorph.java'),
(1802, 'ko', 'Unpolymorph succeed', '', 'AdminPolymorph.java'),
(1802, 'tw', '變身取消。', '', 'AdminPolymorph.java'),

(1806, 'cn', '任务重新载入完成。', '', 'AdminQuest.java'),
(1806, 'en', 'Quest Reloaded Successfully.', '', 'AdminQuest.java'),
(1806, 'ko', '퀘스트가 성공적으로 갱신되었습니다.', '', 'AdminQuest.java'),
(1806, 'tw', '任務重新載入完成。', '', 'AdminQuest.java'),

(1807, 'cn', '任务重新载入失败。', '', 'AdminQuest.java'),
(1807, 'en', 'Quest Reloaded Failed', '', 'AdminQuest.java'),
(1807, 'ko', '퀘스트 갱신이 실패되었습니다', '', 'AdminQuest.java'),
(1807, 'tw', '任務重新載入失敗。', '', 'AdminQuest.java'),

(1808, 'cn', '没有发现档案：', '', 'AdminQuest.java'),
(1808, 'en', 'File not found: ', '', 'AdminQuest.java'),
(1808, 'ko', '파일을 찾을 수 없습니다: ', '', 'AdminQuest.java'),
(1808, 'tw', '沒有發現檔案：', '', 'AdminQuest.java'),

(1812, 'cn', '', '复活范围「;」内的玩家。', 'AdminRes.java'),
(1812, 'en', '', 'Resurrected all players within a ; unit radius.', 'AdminRes.java'),
(1812, 'ko', '', 'Resurrected all players within a ; unit radius.', 'AdminRes.java'),
(1812, 'tw', '', '復活範圍「;」內的玩家。', 'AdminRes.java'),

(1813, 'cn', '', '复活范围「;」內的非玩家。', 'AdminRes.java'),
(1813, 'en', '', 'Resurrected all non-players within a ; unit radius.', 'AdminRes.java'),
(1813, 'ko', '', 'Resurrected all non-players within a ; unit radius.', 'AdminRes.java'),
(1813, 'tw', '', '復活範圍「;」內的非玩家。', 'AdminRes.java'),

(1817, 'cn', '功能尚未实装。', '', 'AdminSiege.java'),
(1817, 'en', 'Not implemented yet.', '', 'AdminSiege.java'),
(1817, 'ko', '아직 구현되지 않았습니다.', '', 'AdminSiege.java'),
(1817, 'tw', '功能尚未實裝。', '', 'AdminSiege.java'),

(1818, 'cn', '城堡已无血盟占领', '', 'AdminSiege.java'),
(1818, 'en', 'Unable to remove castle', '', 'AdminSiege.java'),
(1818, 'ko', '성을 제거 할 수 없습니다', '', 'AdminSiege.java'),
(1818, 'tw', '城堡已無血盟佔領。', '', 'AdminSiege.java'),

(1819, 'cn', '无法更改攻城战时间。', '', 'AdminSiege.java'),
(1819, 'en', 'Unable to change Siege Date', '', 'AdminSiege.java'),
(1819, 'ko', '공성전 날짜를 변경할 수 없습니다', '', 'AdminSiege.java'),
(1819, 'tw', '無法更改攻城戰時間。', '', 'AdminSiege.java'),

(1820, 'cn', '此根据地已有主人！', '', 'AdminSiege.java'),
(1820, 'en', 'This ClanHall isn\'t free!', '', 'AdminSiege.java'),
(1820, 'ko', '이 아지트는 무료가 아닙니다!', '', 'AdminSiege.java'),
(1820, 'tw', '此根據地已有主人！', '', 'AdminSiege.java'),

(1821, 'cn', '已有根据地！', '', 'AdminSiege.java'),
(1821, 'en', 'You have already a ClanHall!', '', 'AdminSiege.java'),
(1821, 'ko', '이미 아지트가 있습니다!', '', 'AdminSiege.java'),
(1821, 'tw', '已有根據地！', '', 'AdminSiege.java'),

(1822, 'cn', '此根据地已无主人！', '', 'AdminSiege.java'),
(1822, 'en', 'This ClanHall is already Free!', '', 'AdminSiege.java'),
(1822, 'ko', 'This ClanHall is already Free!', '', 'AdminSiege.java'),
(1822, 'tw', '此根據地已無主人！', '', 'AdminSiege.java'),

(1823, 'cn', '无', '', 'AdminSiege.java'),
(1823, 'en', 'None', '', 'AdminSiege.java'),
(1823, 'ko', 'None', '', 'AdminSiege.java'),
(1823, 'tw', '無', '', 'AdminSiege.java'),

(1824, 'cn', '没有主人', '', 'AdminSiege.java'),
(1824, 'en', 'No Owner', '', 'AdminSiege.java'),
(1824, 'ko', '주인이 없습니다', '', 'AdminSiege.java'),
(1824, 'tw', '沒有主人', '', 'AdminSiege.java'),

(1828, 'cn', '', '移除「;」的全部技能。', 'AdminSkill.java'),
(1828, 'en', '', 'You removed all skills from ;', 'AdminSkill.java'),
(1828, 'ko', '', '당신은 모든 스킬이 제거되었습니다, ;', 'AdminSkill.java'),
(1828, 'tw', '', '移除「;」的全部技能。', 'AdminSkill.java'),

(1829, 'cn', '管理者移除你的全部技能。', '', 'AdminSkill.java'),
(1829, 'en', 'Admin removed all skills from you.', '', 'AdminSkill.java'),
(1829, 'ko', '지엠이 모든 스킬을 제거했습니다.', '', 'AdminSkill.java'),
(1829, 'tw', '管理者移除你的全部技能。', '', 'AdminSkill.java'),

(1830, 'cn', '', '增加「;」个技能给：', 'AdminSkill.java'),
(1830, 'en', 'You gave ; skills to ', '', 'AdminSkill.java'),
(1830, 'ko', 'You gave ; skills to ', '', 'AdminSkill.java'),
(1830, 'tw', '', '增加「;」個技能給：', 'AdminSkill.java'),

(1831, 'cn', '首页', '', 'AdminSkill.java'),
(1831, 'en', 'Main', '', 'AdminSkill.java'),
(1831, 'ko', '메인', '', 'AdminSkill.java'),
(1831, 'tw', '首頁', '', 'AdminSkill.java'),

(1832, 'cn', '玩家选择介面', '', 'AdminSkill.java'),
(1832, 'en', 'Character Selection Menu', '', 'AdminSkill.java'),
(1832, 'ko', '캐릭터 선택 메뉴', '', 'AdminSkill.java'),
(1832, 'tw', '玩家選擇介面', '', 'AdminSkill.java'),

(1833, 'cn', '返回', '', 'AdminSkill.java'),
(1833, 'en', 'Back', '', 'AdminSkill.java'),
(1833, 'ko', '이전', '', 'AdminSkill.java'),
(1833, 'tw', '返回', '', 'AdminSkill.java'),

(1834, 'cn', '修改：', '', 'AdminSkill.java'),
(1834, 'en', 'Editing ', '', 'AdminSkill.java'),
(1834, 'ko', '수정중 ', '', 'AdminSkill.java'),
(1834, 'tw', '修改：', '', 'AdminSkill.java'),

(1835, 'cn', '等级：', '', 'AdminSkill.java'),
(1835, 'en', 'Lv: ', '', 'AdminSkill.java'),
(1835, 'ko', 'Lv: ', '', 'AdminSkill.java'),
(1835, 'tw', '等級：', '', 'AdminSkill.java'),

(1836, 'cn', '注意：修改玩家的技能，', '', 'AdminSkill.java'),
(1836, 'en', 'Note: Dont forget that modifying players skills can', '', 'AdminSkill.java'),
(1836, 'ko', '주의: Dont forget that modifying players skills can', '', 'AdminSkill.java'),
(1836, 'tw', '注意：修改玩家的技能，', '', 'AdminSkill.java'),

(1837, 'cn', '可能会破坏游戏平衡...', '', 'AdminSkill.java'),
(1837, 'en', 'ruin the game...', '', 'AdminSkill.java'),
(1837, 'ko', 'ruin the game...', '', 'AdminSkill.java'),
(1837, 'tw', '可能會破壞遊戲平衡...', '', 'AdminSkill.java'),

(1838, 'cn', '点选技能移除：', '', 'AdminSkill.java'),
(1838, 'en', 'Click on the skill you wish to remove:', '', 'AdminSkill.java'),
(1838, 'ko', 'Click on the skill you wish to remove:', '', 'AdminSkill.java'),
(1838, 'tw', '點選技能移除：', '', 'AdminSkill.java'),

(1839, 'cn', '第', '页', 'AdminSkill.java'),
(1839, 'en', 'Page ', '', 'AdminSkill.java'),
(1839, 'ko', '', '페이지', 'AdminSkill.java'),
(1839, 'tw', '第', '頁', 'AdminSkill.java'),

(1840, 'cn', '', '名称：;等级：;ID：', 'AdminSkill.java'),
(1840, 'en', '', 'Name:;Level:;Id:', 'AdminSkill.java'),
(1840, 'ko', '', '이름:;레벨:;ID:', 'AdminSkill.java'),
(1840, 'tw', '', '名稱：;等級：;ID：', 'AdminSkill.java'),

(1841, 'cn', '输入ID移除：', '', 'AdminSkill.java'),
(1841, 'en', 'Remove skill by ID :', '', 'AdminSkill.java'),
(1841, 'ko', '스킬ID제거:', '', 'AdminSkill.java'),
(1841, 'tw', '輸入ID移除：', '', 'AdminSkill.java'),

(1842, 'cn', '移除技能', '', 'AdminSkill.java'),
(1842, 'en', 'Remove skill', '', 'AdminSkill.java'),
(1842, 'ko', '스킬 제거', '', 'AdminSkill.java'),
(1842, 'tw', '移除技能', '', 'AdminSkill.java'),

(1843, 'cn', '', '你现在已经取得「;」的所有技能。', 'AdminSkill.java'),
(1843, 'en', 'You now have all the skills of ;.', '', 'AdminSkill.java'),
(1843, 'ko', 'You now have all the skills of ;.', '', 'AdminSkill.java'),
(1843, 'tw', '', '你現在已經取得「;」的所有技能。', 'AdminSkill.java'),

(1844, 'cn', '', '管理者「;」更新你的技能。', 'AdminSkill.java'),
(1844, 'en', '', '[GM]; updated your skills.', 'AdminSkill.java'),
(1844, 'ko', '', '[GM]; 당신의 스킬이 업데이트되었습니다.', 'AdminSkill.java'),
(1844, 'tw', '', '管理者「;」更新你的技能。', 'AdminSkill.java'),

(1845, 'cn', '你现在已经恢复所有的技能。', '', 'AdminSkill.java'),
(1845, 'en', 'You now have all your skills back.', '', 'AdminSkill.java'),
(1845, 'ko', 'You now have all your skills back.', '', 'AdminSkill.java'),
(1845, 'tw', '你現在已經恢復所有的技能。', '', 'AdminSkill.java'),

(1846, 'cn', '', '管理者给你增加「;」的技能。', 'AdminSkill.java'),
(1846, 'en', '', 'Admin gave you the skill ;.', 'AdminSkill.java'),
(1846, 'ko', '', 'Admin gave you the skill ;.', 'AdminSkill.java'),
(1846, 'tw', '', '管理者給你增加「;」的技能。', 'AdminSkill.java'),

(1847, 'cn', '', '增加「;」的技能给「;」。', 'AdminSkill.java'),
(1847, 'en', '', 'You gave the skill ; to ;.', 'AdminSkill.java'),
(1847, 'ko', '', 'You gave the skill ; to ;.', 'AdminSkill.java'),
(1847, 'tw', '', '增加「;」的技能給「;」。', 'AdminSkill.java'),

(1848, 'cn', '无此技能。', '', 'AdminSkill.java'),
(1848, 'en', 'Error: there is no such skill.', '', 'AdminSkill.java'),
(1848, 'ko', '오류: 스킬을 찾을 수 없습니다', '', 'AdminSkill.java'),
(1848, 'tw', '無此技能。', '', 'AdminSkill.java'),

(1849, 'cn', '', '管理者移除你的「;」技能。', 'AdminSkill.java'),
(1849, 'en', '', 'Admin removed the skill ; from your skills list.', 'AdminSkill.java'),
(1849, 'ko', '', 'Admin removed the skill ; from your skills list.', 'AdminSkill.java'),
(1849, 'tw', '', '管理者移除你的「;」技能。', 'AdminSkill.java'),

(1850, 'cn', '', '移除「;」的技能于「;」。', 'AdminSkill.java'),
(1850, 'en', '', 'You removed the skill ; from ;.', 'AdminSkill.java'),
(1850, 'ko', '', 'You removed the skill ; from ;.', 'AdminSkill.java'),
(1850, 'tw', '', '移除「;」的技能於「;」。', 'AdminSkill.java'),

(1851, 'cn', '', '增加「;」的血盟技能给「;」血盟。', 'AdminSkill.java'),
(1851, 'en', '', 'You gave the Clan Skill: ; to the clan ;.', 'AdminSkill.java'),
(1851, 'ko', '', 'You gave the Clan Skill: ; to the clan ;.', 'AdminSkill.java'),
(1851, 'tw', '', '增加「;」的血盟技能給「;」血盟。', 'AdminSkill.java'),

(1860, 'cn', 'NPC 删除完成！', '', 'AdminSpawn.java'),
(1860, 'en', 'NPC Unspawn completed!', '', 'AdminSpawn.java'),
(1860, 'ko', 'NPC 스폰해제가 완료되었습니다!', '', 'AdminSpawn.java'),
(1860, 'tw', 'NPC 刪除完成！', '', 'AdminSpawn.java'),

(1861, 'cn', 'NPC 重新召喚完成！', '', 'AdminSpawn.java'),
(1861, 'en', 'NPC Respawn completed!', '', 'AdminSpawn.java'),
(1861, 'ko', 'NPC 재스폰이 완료되었습니다!', '', 'AdminSpawn.java'),
(1861, 'tw', 'NPC 重新召喚完成！', '', 'AdminSpawn.java'),

(1862, 'cn', '传送表单重新读取。', '', 'AdminSpawn.java'),
(1862, 'en', 'Teleport List Table reloaded.', '', 'AdminSpawn.java'),
(1862, 'ko', '텔레포트 목록 테이블이 갱신되었습니다.', '', 'AdminSpawn.java'),
(1862, 'tw', '傳送表單重新讀取。', '', 'AdminSpawn.java'),

(1863, 'cn', '', '无法召唤狩猎首领「;」。', 'AdminSpawn.java'),
(1863, 'en', '', 'You cannot spawn another instance of ;.', 'AdminSpawn.java'),
(1863, 'ko', '', 'You cannot spawn another instance of ;.', 'AdminSpawn.java'),
(1863, 'tw', '', '無法召喚狩獵首領「;」。', 'AdminSpawn.java'),

(1864, 'cn', '', '召唤「;」。', 'AdminSpawn.java'),
(1864, 'en', '', 'Created ;.', 'AdminSpawn.java'),
(1864, 'ko', '', '생성 ;.', 'AdminSpawn.java'),
(1864, 'tw', '', '召喚「;」。', 'AdminSpawn.java'),

(1865, 'cn', '', '怪物：;等级：;总共：', 'AdminSpawn.java'),
(1865, 'en', '', 'Spawn Monster:; Level : ;Total Npc\'s : ', 'AdminSpawn.java'),
(1865, 'ko', '', '몬스터 스폰:; 레벨: ;전체 NPC: ', 'AdminSpawn.java'),
(1865, 'tw', '', '怪物：;等級：;總共：', 'AdminSpawn.java'),

(1866, 'cn', '返回', '', 'AdminSpawn.java'),
(1866, 'en', 'Back', '', 'AdminSpawn.java'),
(1866, 'ko', '이전', '', 'AdminSpawn.java'),
(1866, 'tw', '返回', '', 'AdminSpawn.java'),

(1867, 'cn', '下一页', '', 'AdminSpawn.java'),
(1867, 'en', 'Next', '', 'AdminSpawn.java'),
(1867, 'ko', '다음', '', 'AdminSpawn.java'),
(1867, 'tw', '下一頁', '', 'AdminSpawn.java'),

(1868, 'cn', '', 'NPC：; 总共：; 名字开头：', 'AdminSpawn.java'),
(1868, 'en', '', 'Spawn Monster:; There are ; Npcs whose name starts with ', 'AdminSpawn.java'),
(1868, 'ko', '', '몬스터 스폰:; There are ; Npcs whose name starts with ', 'AdminSpawn.java'),
(1868, 'tw', '', 'NPC：; 總共：; 名字開頭：', 'AdminSpawn.java'),

(1871, 'cn', '没有相关权限。', '', 'AdminSummon.java'),
(1871, 'en', 'You don\'t have the access right to use this command!', '', 'AdminSummon.java'),
(1871, 'ko', 'You don\'t have the access right to use this command!', '', 'AdminSummon.java'),
(1871, 'tw', '沒有相關權限。', '', 'AdminSummon.java'),

(1872, 'cn', '这个怪物是属于临时性的，所以无法召唤。', '', 'AdminSummon.java'),
(1872, 'en', 'This is only a temporary spawn.  The mob(s) will NOT respawn.', '', 'AdminSummon.java'),
(1872, 'ko', 'This is only a temporary spawn.  The mob(s) will NOT respawn.', '', 'AdminSummon.java'),
(1872, 'tw', '這個怪物是屬於臨時性的，所以無法召喚。', '', 'AdminSummon.java'),

(1875, 'cn', '', '玩家「;」找不到。', 'AdminTarget.java'),
(1875, 'en', '', 'Player ; not found', 'AdminTarget.java'),
(1875, 'ko', '', '플레이어 ; 찾을 수 없습니다', 'AdminTarget.java'),
(1875, 'tw', '', '玩家「;」找不到。', 'AdminTarget.java'),

(1878, 'cn', '传送至 ', '', 'AdminTeleport.java'),
(1878, 'en', 'You have been teleported to ', '', 'AdminTeleport.java'),
(1878, 'ko', '텔레포트되었습니다, ', '', 'AdminTeleport.java'),
(1878, 'tw', '傳送至 ', '', 'AdminTeleport.java'),

(1879, 'cn', '传送玩家', '', 'AdminTeleport.java'),
(1879, 'en', 'Teleport Character', '', 'AdminTeleport.java'),
(1879, 'ko', '캐릭터 텔레포트', '', 'AdminTeleport.java'),
(1879, 'tw', '傳送玩家', '', 'AdminTeleport.java'),

(1880, 'cn', '传送玩家「', '', 'AdminTeleport.java'),
(1880, 'en', 'The character you will teleport is ', '', 'AdminTeleport.java'),
(1880, 'ko', 'The character you will teleport is ', '', 'AdminTeleport.java'),
(1880, 'tw', '傳送玩家「', '', 'AdminTeleport.java'),

(1881, 'cn', '」。', '', 'AdminTeleport.java'),
(1881, 'en', '.', '', 'AdminTeleport.java'),
(1881, 'ko', '.', '', 'AdminTeleport.java'),
(1881, 'tw', '」。', '', 'AdminTeleport.java'),

(1882, 'cn', '', 'X 座标;Y 座标;Z 座标', 'AdminTeleport.java'),
(1882, 'en', '', 'Co-ordinate x;Co-ordinate y;Co-ordinate z', 'AdminTeleport.java'),
(1882, 'ko', '', 'Co-ordinate x;Co-ordinate y;Co-ordinate z', 'AdminTeleport.java'),
(1882, 'tw', '', 'X 座標;Y 座標;Z 座標', 'AdminTeleport.java'),

(1883, 'cn', '传送', '', 'AdminTeleport.java'),
(1883, 'en', 'Teleport', '', 'AdminTeleport.java'),
(1883, 'ko', '텔레포트', '', 'AdminTeleport.java'),
(1883, 'tw', '傳送', '', 'AdminTeleport.java'),

(1884, 'cn', '召唤', '', 'AdminTeleport.java'),
(1884, 'en', 'Teleport near you', '', 'AdminTeleport.java'),
(1884, 'ko', '당신 근처에 텔레포트', '', 'AdminTeleport.java'),
(1884, 'tw', '召喚', '', 'AdminTeleport.java'),

(1885, 'cn', '返回', '', 'AdminTeleport.java'),
(1885, 'en', 'Back', '', 'AdminTeleport.java'),
(1885, 'ko', '이전', '', 'AdminTeleport.java'),
(1885, 'tw', '返回', '', 'AdminTeleport.java'),

(1886, 'cn', '', '抱歉，玩家「$1」监禁中。', 'AdminTeleport.java'),
(1886, 'en', '', 'Sorry, player ; is in Jail.', 'AdminTeleport.java'),
(1886, 'ko', '', 'Sorry, player ; is in Jail.', 'AdminTeleport.java'),
(1886, 'tw', '', '抱歉，玩家「$1」監禁中。', 'AdminTeleport.java'),

(1887, 'cn', '', '召唤玩家「;」。', 'AdminTeleport.java'),
(1887, 'en', '', 'You have recalled ;', 'AdminTeleport.java'),
(1887, 'ko', '', 'You have recalled ;', 'AdminTeleport.java'),
(1887, 'tw', '', '召喚玩家「;」。', 'AdminTeleport.java'),

(1888, 'cn', '管理者对你进行传送。', '', 'AdminTeleport.java'),
(1888, 'en', 'Admin is teleporting you.', '', 'AdminTeleport.java'),
(1888, 'ko', 'Admin is teleporting you.', '', 'AdminTeleport.java'),
(1888, 'tw', '管理者對你進行傳送。', '', 'AdminTeleport.java'),

(1889, 'cn', '', '传送至玩家「;」。', 'AdminTeleport.java'),
(1889, 'en', '', 'You have teleported to character ;.', 'AdminTeleport.java'),
(1889, 'ko', '', 'You have teleported to character ;.', 'AdminTeleport.java'),
(1889, 'tw', '', '傳送至玩家「;」。', 'AdminTeleport.java'),

(1890, 'cn', '玩家不存在或位置并未改变。', '', 'AdminTeleport.java'),
(1890, 'en', 'Character not found or position unaltered.', '', 'AdminTeleport.java'),
(1890, 'ko', 'Character not found or position unaltered.', '', 'AdminTeleport.java'),
(1890, 'tw', '玩家不存在或位置並未改變。', '', 'AdminTeleport.java'),

(1891, 'cn', '', '玩家「;」的位置变更为 (', 'AdminTeleport.java'),
(1891, 'en', '', 'Player\'s [;] position is now set to (', 'AdminTeleport.java'),
(1891, 'ko', '', 'Player\'s [;] position is now set to (', 'AdminTeleport.java'),
(1891, 'tw', '', '玩家「;」的位置變更為 (', 'AdminTeleport.java'),

(1892, 'cn', 'NPC ID 错误。', '', 'AdminTeleport.java'),
(1892, 'en', 'Incorrect monster template.', '', 'AdminTeleport.java'),
(1892, 'ko', '잘못된 몬스터 템플릿.', '', 'AdminTeleport.java'),
(1892, 'tw', 'NPC ID 錯誤。', '', 'AdminTeleport.java'),

(1893, 'cn', '召唤错误。', '', 'AdminTeleport.java'),
(1893, 'en', 'Incorrect monster spawn.', '', 'AdminTeleport.java'),
(1893, 'ko', '잘못된 몬스터 스폰.', '', 'AdminTeleport.java'),
(1893, 'tw', '召喚錯誤。', '', 'AdminTeleport.java'),

(1894, 'cn', '', '召唤「;」。', 'AdminTeleport.java'),
(1894, 'en', '', 'Created ;.', 'AdminTeleport.java'),
(1894, 'ko', '', '생성 ;.', 'AdminTeleport.java'),
(1894, 'tw', '', '召喚「;」。', 'AdminTeleport.java'),

(1895, 'cn', '狩猎首领召唤错误。', '', 'AdminTeleport.java'),
(1895, 'en', 'Incorrect raid spawn.', '', 'AdminTeleport.java'),
(1895, 'ko', 'Incorrect raid spawn.', '', 'AdminTeleport.java'),
(1895, 'tw', '狩獵首領召喚錯誤。', '', 'AdminTeleport.java'),

(1901, 'cn', '目标错误。', '', 'AdminTvTEvent.java'),
(1901, 'en', 'You should select a player!', '', 'AdminTvTEvent.java'),
(1901, 'ko', 'You should select a player!', '', 'AdminTvTEvent.java'),
(1901, 'tw', '目標錯誤。', '', 'AdminTvTEvent.java'),

(1902, 'cn', '玩家已经参加活动！', '', 'AdminTvTEvent.java'),
(1902, 'en', 'Player already participated in the event!', '', 'AdminTvTEvent.java'),
(1902, 'ko', 'Player already participated in the event!', '', 'AdminTvTEvent.java'),
(1902, 'tw', '玩家已經參加活動！', '', 'AdminTvTEvent.java'),

(1903, 'cn', '玩家无法加入！', '', 'AdminTvTEvent.java'),
(1903, 'en', 'Player instance could not be added, it seems to be null!', '', 'AdminTvTEvent.java'),
(1903, 'ko', 'Player instance could not be added, it seems to be null!', '', 'AdminTvTEvent.java'),
(1903, 'tw', '玩家無法加入！', '', 'AdminTvTEvent.java'),

(1904, 'cn', '玩家不是活动的一员！', '', 'AdminTvTEvent.java'),
(1904, 'en', 'Player is not part of the event!', '', 'AdminTvTEvent.java'),
(1904, 'ko', 'Player is not part of the event!', '', 'AdminTvTEvent.java'),
(1904, 'tw', '玩家不是活動的一員！', '', 'AdminTvTEvent.java'),

(1907, 'cn', '', '移除封锁 IP「;」！', 'AdminUnblockIp.java'),
(1907, 'en', '', 'Removed IP ; from blocklist!', 'AdminUnblockIp.java'),
(1907, 'ko', '', 'Removed IP ; from blocklist!', 'AdminUnblockIp.java'),
(1907, 'tw', '', '移除封鎖 IP「;」！', 'AdminUnblockIp.java'),

(1910, 'cn', '服务端尚未启用活力系统。', '', 'AdminVitality.java'),
(1910, 'en', 'Vitality is not enabled on the server!', '', 'AdminVitality.java'),
(1910, 'ko', 'Vitality is not enabled on the server!', '', 'AdminVitality.java'),
(1910, 'tw', '伺服器尚未啟用活力系統。', '', 'AdminVitality.java'),

(1911, 'cn', '不正确的活力数值。', '', 'AdminVitality.java'),
(1911, 'en', 'Incorrect vitality', '', 'AdminVitality.java'),
(1911, 'ko', '잘못된 활력', '', 'AdminVitality.java'),
(1911, 'tw', '不正確的活力數值。', '', 'AdminVitality.java'),

(1912, 'cn', '管理员将您的活力点数改变为：', '', 'AdminVitality.java'),
(1912, 'en', 'Admin set your Vitality points to ', '', 'AdminVitality.java'),
(1912, 'ko', 'Admin set your Vitality points to ', '', 'AdminVitality.java'),
(1912, 'tw', '管理員將您的活力點數改變為：', '', 'AdminVitality.java'),

(1913, 'cn', '不正确的活力阶段 (0-4)。', '', 'AdminVitality.java'),
(1913, 'en', 'Incorrect vitality level (0-4)', '', 'AdminVitality.java'),
(1913, 'ko', '잘못된 활력 레벨 (0-4)', '', 'AdminVitality.java'),
(1913, 'tw', '不正確的活力階段 (0-4)。', '', 'AdminVitality.java'),

(1914, 'cn', '管理员将您的活力阶段改变为：', '', 'AdminVitality.java'),
(1914, 'en', 'Admin set your Vitality level to ', '', 'AdminVitality.java'),
(1914, 'ko', 'Admin set your Vitality level to ', '', 'AdminVitality.java'),
(1914, 'tw', '管理員將您的活力階段改變為：', '', 'AdminVitality.java'),

(1915, 'cn', '管理员将您的活力点数完全恢复。', '', 'AdminVitality.java'),
(1915, 'en', 'Admin completly recharged your Vitality', '', 'AdminVitality.java'),
(1915, 'ko', '지엠이 당신의 활력을 모두 재충전 했습니다', '', 'AdminVitality.java'),
(1915, 'tw', '管理員將您的活力點數完全恢復。', '', 'AdminVitality.java'),

(1916, 'cn', '管理员将您的活力点数完全耗尽。', '', 'AdminVitality.java'),
(1916, 'en', 'Admin completly emptied your Vitality', '', 'AdminVitality.java'),
(1916, 'ko', '지엠이 당신의 활력을 모두 소진 했습니다', '', 'AdminVitality.java'),
(1916, 'tw', '管理員將您的活力點數完全耗盡。', '', 'AdminVitality.java'),

(1917, 'cn', '玩家活力阶段：', '', 'AdminVitality.java'),
(1917, 'en', 'Player vitality level: ', '', 'AdminVitality.java'),
(1917, 'ko', '플레이어 활력 레벨: ', '', 'AdminVitality.java'),
(1917, 'tw', '玩家活力階段：', '', 'AdminVitality.java'),

(1918, 'cn', '玩家活力点数：', '', 'AdminVitality.java'),
(1918, 'en', 'Player vitality points: ', '', 'AdminVitality.java'),
(1918, 'ko', '플레이어 활력 포인트: ', '', 'AdminVitality.java'),
(1918, 'tw', '玩家活力點數：', '', 'AdminVitality.java'),

(1919, 'cn', '目标错误。', '', 'AdminVitality.java'),
(1919, 'en', 'Target not found or not a player', '', 'AdminVitality.java'),
(1919, 'ko', '대상 플레이어를 찾을 수 없습니다', '', 'AdminVitality.java'),
(1919, 'tw', '目標錯誤。', '', 'AdminVitality.java'),

(1923, 'cn', '血剑阿卡玛纳夫', '', 'Akamanah.java'),
(1923, 'en', 'Akamanah', '', 'Akamanah.java'),
(1923, 'ko', 'Akamanah', '', 'Akamanah.java'),
(1923, 'tw', '血劍‧阿卡瑪那夫', '', 'Akamanah.java'),

(1924, 'cn', '魔剑萨雷奇', '', 'Zariche.java'),
(1924, 'en', 'Zariche', '', 'Zariche.java'),
(1924, 'ko', 'Zariche', '', 'Zariche.java'),
(1924, 'tw', '魔劍‧薩雷奇', '', 'Zariche.java'),

(1927, 'cn', '黑暗的祭典已开始，无法再登记参加。', '', 'Festival.java'),
(1927, 'en', 'You cannot sign up while a festival is in progress.', '', 'Festival.java'),
(1927, 'ko', 'You cannot sign up while a festival is in progress.', '', 'Festival.java'),
(1927, 'tw', '黑暗的祭典已開始，無法再登記參加。', '', 'Festival.java'),

(1928, 'cn', '黑暗的祭典进行中，无法登记分数。', '', 'Festival.java'),
(1928, 'en', 'You cannot register a score while a festival is in progress.', '', 'Festival.java'),
(1928, 'ko', 'You cannot register a score while a festival is in progress.', '', 'Festival.java'),
(1928, 'tw', '黑暗的祭典進行中，無法登記分數。', '', 'Festival.java'),

(1929, 'cn', '并无任何贡献。', '', 'Festival.java'),
(1929, 'en', 'You do not have any blood offerings to contribute.', '', 'Festival.java'),
(1929, 'ko', 'You do not have any blood offerings to contribute.', '', 'Festival.java'),
(1929, 'tw', '並無任何貢獻。', '', 'Festival.java'),

(1930, 'cn', '祭典的引导者：', '', 'Festival.java'),
(1930, 'en', 'Festival Guide:', '', 'Festival.java'),
(1930, 'ko', 'Festival Guide:', '', 'Festival.java'),
(1930, 'tw', '祭典的引導者：', '', 'Festival.java'),

(1931, 'cn', '本周最高纪录如下：', '', 'Festival.java'),
(1931, 'en', 'These are the top scores of the week, for the ', '', 'Festival.java'),
(1931, 'ko', '이번주 최고 점수:', '', 'Festival.java'),
(1931, 'tw', '本週最高紀錄如下：', '', 'Festival.java'),

(1932, 'cn', '', '', 'Festival.java'),
(1932, 'en', ' festival.', '', 'Festival.java'),
(1932, 'ko', '', '', 'Festival.java'),
(1932, 'tw', '', '', 'Festival.java'),

(1933, 'cn', '，分数 ', '', 'Festival.java'),
(1933, 'en', '. Score ', '', 'Festival.java'),
(1933, 'ko', '. 점수 ', '', 'Festival.java'),
(1933, 'tw', '，分數 ', '', 'Festival.java'),

(1934, 'cn', '黎明：', '', 'Festival.java'),
(1934, 'en', 'Dawn: ', '', 'Festival.java'),
(1934, 'ko', '여명', '', 'Festival.java'),
(1934, 'tw', '黎明：', '', 'Festival.java'),

(1935, 'cn', '黎明：没有纪录，分数 0', '', 'Festival.java'),
(1935, 'en', 'Dawn: No record exists. Score 0', '', 'Festival.java'),
(1935, 'ko', '여명: 기록이 없습니다. 점수 0', '', 'Festival.java'),
(1935, 'tw', '黎明：沒有紀錄，分數 0', '', 'Festival.java'),

(1936, 'cn', '黄昏：', '', 'Festival.java'),
(1936, 'en', 'Dusk: ', '', 'Festival.java'),
(1936, 'ko', '황혼: ', '', 'Festival.java'),
(1936, 'tw', '黃昏：', '', 'Festival.java'),

(1937, 'cn', '黄昏：没有纪录，分数 0', '', 'Festival.java'),
(1937, 'en', 'Dusk: No record exists. Score 0', '', 'Festival.java'),
(1937, 'ko', '황혼: 기록이 없습니다. 점수 0', '', 'Festival.java'),
(1937, 'tw', '黃昏：沒有紀錄，分數 0', '', 'Festival.java'),

(1938, 'cn', '黄昏的革命军', '', 'Festival.java'),
(1938, 'en', 'Children of Dusk', '', 'Festival.java'),
(1938, 'ko', 'Children of Dusk', '', 'Festival.java'),
(1938, 'tw', '黃昏的革命軍', '', 'Festival.java'),

(1939, 'cn', '黎明的君主们', '', 'Festival.java'),
(1939, 'en', 'Children of Dawn', '', 'Festival.java'),
(1939, 'ko', 'Children of Dawn', '', 'Festival.java'),
(1939, 'tw', '黎明的君主們', '', 'Festival.java'),

(1940, 'cn', '<FONT color=LEVEL>历代最高纪录</FONT>：', '', 'Festival.java'),
(1940, 'en', 'Consecutive top scores: ', '', 'Festival.java'),
(1940, 'ko', 'Consecutive top scores: ', '', 'Festival.java'),
(1940, 'tw', '<FONT color=LEVEL>歷代最高紀錄</FONT>：', '', 'Festival.java'),

(1941, 'cn', '所属阵营：', '', 'Festival.java'),
(1941, 'en', 'Affilated side: ', '', 'Festival.java'),
(1941, 'ko', 'Affilated side: ', '', 'Festival.java'),
(1941, 'tw', '所屬陣營：', '', 'Festival.java'),

(1942, 'cn', '<FONT color=LEVEL>历代最高纪录</FONT>：无。分数 0', '', 'Festival.java'),
(1942, 'en', 'Consecutive top scores: No record exists. Score 0', '', 'Festival.java'),
(1942, 'ko', 'Consecutive top scores: No record exists. Score 0', '', 'Festival.java'),
(1942, 'tw', '<FONT color=LEVEL>歷代最高紀錄</FONT>：無。分數 0', '', 'Festival.java'),

(1943, 'cn', '返回', '', 'Festival.java'),
(1943, 'en', 'Go back.', '', 'Festival.java'),
(1943, 'ko', '뒤로', '', 'Festival.java'),
(1943, 'tw', '返回', '', 'Festival.java'),

(1944, 'cn', '如果队员只剩下挑战的最少人数，就只有队长可以离开黑暗的祭典。', '', 'Festival.java'),
(1944, 'en', 'Only the party leader can leave a festival when a party has minimum number of members.', '', 'Festival.java'),
(1944, 'ko', 'Only the party leader can leave a festival when a party has minimum number of members.', '', 'Festival.java'),
(1944, 'tw', '如果隊員只剩下挑戰的最少人數，就只有隊長可以離開黑暗的祭典。', '', 'Festival.java'),

(1950, 'cn', '野營', '', 'Fort.java'),
(1950, 'en', 'Shanty', '', 'Fort.java'),
(1950, 'ko', 'Shanty', '', 'Fort.java'),
(1950, 'tw', '野營', '', 'Fort.java'),

(1951, 'cn', '古魯丁南部', '', 'Fort.java'),
(1951, 'en', 'Southern', '', 'Fort.java'),
(1951, 'ko', 'Southern', '', 'Fort.java'),
(1951, 'tw', '古魯丁南部', '', 'Fort.java'),

(1952, 'cn', '蜂窩', '', 'Fort.java'),
(1952, 'en', 'Hive', '', 'Fort.java'),
(1952, 'ko', 'Hive', '', 'Fort.java'),
(1952, 'tw', '蜂窩', '', 'Fort.java'),

(1953, 'cn', '峽谷', '', 'Fort.java'),
(1953, 'en', 'Valley', '', 'Fort.java'),
(1953, 'ko', 'Valley', '', 'Fort.java'),
(1953, 'tw', '峽谷', '', 'Fort.java'),

(1954, 'cn', '象牙塔', '', 'Fort.java'),
(1954, 'en', 'Ivory', '', 'Fort.java'),
(1954, 'ko', 'Ivory', '', 'Fort.java'),
(1954, 'tw', '象牙塔', '', 'Fort.java'),

(1955, 'cn', '湖泊', '', 'Fort.java'),
(1955, 'en', 'Narsell', '', 'Fort.java'),
(1955, 'ko', 'Narsell', '', 'Fort.java'),
(1955, 'tw', '湖泊', '', 'Fort.java'),

(1956, 'cn', '盆地', '', 'Fort.java'),
(1956, 'en', 'Bayou', '', 'Fort.java'),
(1956, 'ko', 'Bayou', '', 'Fort.java'),
(1956, 'tw', '盆地', '', 'Fort.java'),

(1957, 'cn', '白沙灘', '', 'Fort.java'),
(1957, 'en', 'White Sands', '', 'Fort.java'),
(1957, 'ko', 'White Sands', '', 'Fort.java'),
(1957, 'tw', '白沙灘', '', 'Fort.java'),

(1958, 'cn', '前哨基地', '', 'Fort.java'),
(1958, 'en', 'Borderland', '', 'Fort.java'),
(1958, 'ko', 'Borderland', '', 'Fort.java'),
(1958, 'tw', '前哨基地', '', 'Fort.java'),

(1959, 'cn', '沼澤', '', 'Fort.java'),
(1959, 'en', 'Swamp', '', 'Fort.java'),
(1959, 'ko', 'Swamp', '', 'Fort.java'),
(1959, 'tw', '沼澤', '', 'Fort.java'),

(1960, 'cn', '遺蹟', '', 'Fort.java'),
(1960, 'en', 'Archaic', '', 'Fort.java'),
(1960, 'ko', 'Archaic', '', 'Fort.java'),
(1960, 'tw', '遺蹟', '', 'Fort.java'),

(1961, 'cn', '芙羅蘭邊境', '', 'Fort.java'),
(1961, 'en', 'Floran', '', 'Fort.java'),
(1961, 'ko', 'Floran', '', 'Fort.java'),
(1961, 'tw', '芙羅蘭邊境', '', 'Fort.java'),

(1962, 'cn', '薄霧山脈邊境', '', 'Fort.java'),
(1962, 'en', 'Cloud Mountain', '', 'Fort.java'),
(1962, 'ko', 'Cloud Mountain', '', 'Fort.java'),
(1962, 'tw', '薄霧山脈邊境', '', 'Fort.java'),

(1963, 'cn', '塔諾邊境', '', 'Fort.java'),
(1963, 'en', 'Tanor', '', 'Fort.java'),
(1963, 'ko', 'Tanor', '', 'Fort.java'),
(1963, 'tw', '塔諾邊境', '', 'Fort.java'),

(1964, 'cn', '巨龍士伯吟邊境', '', 'Fort.java'),
(1964, 'en', 'Dragonspine', '', 'Fort.java'),
(1964, 'ko', 'Dragonspine', '', 'Fort.java'),
(1964, 'tw', '巨龍士伯吟邊境', '', 'Fort.java'),

(1965, 'cn', '地龍的邊境', '', 'Fort.java'),
(1965, 'en', 'Antharas', '', 'Fort.java'),
(1965, 'ko', '안타라스', '', 'Fort.java'),
(1965, 'tw', '地龍的邊境', '', 'Fort.java'),

(1966, 'cn', '西部國境邊境', '', 'Fort.java'),
(1966, 'en', 'Western', '', 'Fort.java'),
(1966, 'ko', 'Western', '', 'Fort.java'),
(1966, 'tw', '西部國境邊境', '', 'Fort.java'),

(1967, 'cn', '獵人的邊境', '', 'Fort.java'),
(1967, 'en', 'Hunters', '', 'Fort.java'),
(1967, 'ko', 'Hunters', '', 'Fort.java'),
(1967, 'tw', '獵人的邊境', '', 'Fort.java'),

(1968, 'cn', '平原邊境', '', 'Fort.java'),
(1968, 'en', 'Aaru', '', 'Fort.java'),
(1968, 'ko', 'Aaru', '', 'Fort.java'),
(1968, 'tw', '平原邊境', '', 'Fort.java'),

(1969, 'cn', '死靈的邊境', '', 'Fort.java'),
(1969, 'en', 'Demon', '', 'Fort.java'),
(1969, 'ko', 'Demon', '', 'Fort.java'),
(1969, 'tw', '死靈的邊境', '', 'Fort.java'),

(1970, 'cn', '聖者邊境', '', 'Fort.java'),
(1970, 'en', 'Monastic', '', 'Fort.java'),
(1970, 'ko', 'Monastic', '', 'Fort.java'),
(1970, 'tw', '聖者邊境', '', 'Fort.java'),

(1971, 'cn', '无', '', 'Castle.java'),
(1971, 'en', 'None', '', 'Castle.java'),
(1971, 'ko', 'None', '', 'Castle.java'),
(1971, 'tw', '無', '', 'Castle.java'),

(1975, 'cn', '测试服务端启动完成。\n支援的游戏版本：塔武提\n支援的协定版本：', '', 'LoginServerThread.java'),
(1975, 'en', 'Support Client: Tauti\nSupport Protocol: ', '', 'LoginServerThread.java'),
(1975, 'ko', '지원 클라이언트: 타우티\n지원 프로토콜: ', '', 'LoginServerThread.java'),
(1975, 'tw', '測試伺服器啟動完成。\n支援的遊戲版本：塔武提\n支援的協定版本：', '', 'LoginServerThread.java'),

(1976, 'cn', '现在已经新增一个 GS，支援最新的「？？？」', '', 'LoginServerThread.java'),
(1976, 'en', 'Now a New GS Support ???', '', 'LoginServerThread.java'),
(1976, 'ko', 'Now a New GS Support ???', '', 'LoginServerThread.java'),
(1976, 'tw', '現在已經新增一個 GS，支援最新的「？？？」', '', 'LoginServerThread.java'),

(1977, 'cn', '请重新注册游戏服务端（就是登录时，可以选择巴茨服务端）', '', 'LoginServerThread.java'),
(1977, 'en', 'Register GameServer Again.', '', 'LoginServerThread.java'),
(1977, 'ko', '다시 게임서버를 등록합니다.', '', 'LoginServerThread.java'),
(1977, 'tw', '請重新註冊遊戲伺服器（就是登入時，可以選擇巴茨伺服器）', '', 'LoginServerThread.java'),

(1978, 'cn', '服务端连线位置：', '', 'LoginServerThread.java'),
(1978, 'en', 'Server Address: ', '', 'LoginServerThread.java'),
(1978, 'ko', '서버 주소:', '', 'LoginServerThread.java'),
(1978, 'tw', '伺服器連線位置：', '', 'LoginServerThread.java'),

(1994, 'cn', '红队', '', 'BlockCheckerEngine.java'),
(1994, 'en', 'Red Team', '', 'BlockCheckerEngine.java'),
(1994, 'ko', 'Red Team', '', 'BlockCheckerEngine.java'),
(1994, 'tw', '紅隊', '', 'BlockCheckerEngine.java'),

(1995, 'cn', '蓝队', '', 'BlockCheckerEngine.java'),
(1995, 'en', 'Blue Team', '', 'BlockCheckerEngine.java'),
(1995, 'ko', 'Blue Team', '', 'BlockCheckerEngine.java'),
(1995, 'tw', '藍隊', '', 'BlockCheckerEngine.java'),

(2000, 'cn', '', '没有找到这个技能的资料，技能ID:「;」等级:「;」\n请管理者删除 skillTrees 资料表里面的这个学习技能ID\n和删除资料库 character_skills 里面的这个已学习技能ID\n', 'SkillTable.java'),
(2000, 'en', '', 'No skill info found for skill id ; and skill level ;.', 'SkillTable.java'),
(2000, 'ko', '', '; 스킬 ID를 찾을 수 없습니다. 스킬 레벨: ;.', 'SkillTable.java'),
(2000, 'tw', '', '沒有找到這個技能的資料，技能ID:「;」等級:「;」\n請管理者刪除 skillTrees 資料夾裡面的這個學習技能ID\n和刪除資料庫 character_skills 裡面的這個已學習技能ID\n ', 'SkillTable.java'),

(2001, 'cn', '', ': 技能ID:「;」等级:「;」的资料并不存在。「;」载入失败\n', 'RequestAcquireSkillInfo.java'),
(2001, 'en', '', ': Skill Id: ; level: ; is undefined. ; failed.', 'RequestAcquireSkillInfo.java'),
(2001, 'ko', '', ': 스킬 ID: ; level: ; is undefined. ; failed.', 'RequestAcquireSkillInfo.java'),
(2001, 'tw', '', ': 技能ID:「;」等級:「;」的資料並不存在。「;」載入失敗\n', 'RequestAcquireSkillInfo.java'),

(2002, 'cn', '', '略过资料不存在的技能ID:「;」等级:「;」，需要修正后才能载入\n拥有此技能的玩家ObjId: ', 'L2PcInstance.java'),
(2002, 'en', '', 'Skipped null skill Id: ; Level: ; while restoring player skills for playerObjId: ', 'L2PcInstance.java'),
(2002, 'ko', '', 'Skipped null skill Id: ; Level: ; while restoring player skills for playerObjId: ', 'L2PcInstance.java'),
(2002, 'tw', '', '略過資料不存在的技能ID:「;」等級:「;」，需要修正後才能載入\n擁有此技能的玩家ObjId: ', 'L2PcInstance.java'),

(2003, 'cn', '', '略过资料不存在的技能ID:「;」等级:「;」\n请管理者删除 skillTrees 资料表里面的这个学习技能ID\n学习此技能失败的玩家: ', 'L2PcInstance.java'),
(2003, 'en', '', 'Skipped null skill Id: ; Level: ; autoGet Skill for player: ', 'L2PcInstance.java'),
(2003, 'ko', '', 'Skipped null skill Id: ; Level: ; autoGet Skill for player: ', 'L2PcInstance.java'),
(2003, 'tw', '', '略過資料不存在的技能ID:「;」等級:「;」\n請管理者刪除 skillTrees 資料夾裡面的這個學習技能ID\n學習此技能失敗的玩家: ', 'L2PcInstance.java');