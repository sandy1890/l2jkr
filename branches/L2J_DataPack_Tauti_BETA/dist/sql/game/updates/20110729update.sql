DROP TABLE IF EXISTS mapregion;

ALTER TABLE `access_levels` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `account_gsdata` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `admin_command_access_rights` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `airships` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `armorsets` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `auction` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `auction_bid` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `auction_watch` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `auto_announcements` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `auto_chat` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `auto_chat_text` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `castle` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `castle_door` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `castle_doorupgrade` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `castle_functions` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `castle_manor_procure` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `castle_manor_production` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `castle_siege_guards` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `char_creation_items` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `char_templates` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `character_contacts` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_friends` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_hennas` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_instance_time` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_macroses` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_offline_trade` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_offline_trade_items` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_pet_skills_save` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_premium_items` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_quest_global_data` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_quests` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_raid_points` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_recipebook` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_recipeshoplist` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_reco_bonus` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_shortcuts` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_skills` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_skills_save` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_subclasses` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_summon_skills_save` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_summons` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_tpbookmark` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_ui_actions` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `character_ui_categories` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `characters` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clan_data` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clan_notices` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clan_privs` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clan_skills` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clan_subpledges` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clan_wars` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clanhall` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clanhall_functions` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `clanhall_siege_guards` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `class_list` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `cursed_weapons` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `dimensional_rift` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `droplist` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `enchant_skill_groups` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `fish` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `fort` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `fort_doorupgrade` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `fort_functions` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `fort_siege_guards` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `fort_spawnlist` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `fort_staticobjects` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `fortsiege_clans` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `forums` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `four_sepulchers_spawnlist` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `games` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `global_tasks` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `global_variables` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `grandboss_data` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `grandboss_list` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `helper_buff_list` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `henna` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `henna_trees` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `herb_droplist_groups` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `heroes` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `heroes_diary` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `item_attributes` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `item_auction` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `item_auction_bid` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `item_elementals` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `items` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `itemsonground` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `locations` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `lvlupgain` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `merchant_buylists` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `merchant_lease` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `merchant_shopids` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `minions` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `npc` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `npc_buffer` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `npc_elementals` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `npcaidata` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `npcskills` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `olympiad_data` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `olympiad_fights` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `olympiad_nobles` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `olympiad_nobles_eom` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `petition_feedback` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `pets` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `pets_skills` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `posts` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `quest_global_data` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `raidboss_spawnlist` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `random_spawn` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `random_spawn_loc` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `seven_signs` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `seven_signs_festival` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `seven_signs_status` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `siege_clans` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `skill_learn` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `spawnlist` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `teleport` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `territories` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `territory_registrations` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `territory_spawnlist` ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE `topic` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `chatdata` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `hellbound` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `item` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `messagetable` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `npcCharData` ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `skill` ENGINE=InnoDB DEFAULT CHARSET=utf8;