# Y2kCat
ALTER TABLE db_version_ytdb CHANGE COLUMN 568_FIX_10217 569_FIX_10254 bit;
REPLACE INTO `db_version_ytdb` (`version`) VALUES ('569_FIX_10254');

# cyrex
UPDATE creature_template SET exp=1 WHERE entry IN (31094, 31095, 31096, 31099, 31098);

# SignFinder
INSERT INTO `player_factionchange_spells` (`alliance_id`, `horde_id`) 
VALUES ('3565', '3566');
INSERT INTO `player_factionchange_achievement` (`alliance_id`, `horde_id`) VALUES  
('2760','2768'),  
('2761','2767'),  
('2762','2766'),  
('2763','2769'),  
('2764','2765'),  
('2777','2786'),  
('2778','2785'),  
('2779','2784'),  
('2780','2787'),  
('2781','2783');

# TC
UPDATE `creature_template` SET `VehicleId` = 591 WHERE `entry` IN (38285,38788,38789,38790);
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry` = 34984;
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,68861,0,18,1,36497,0,0, '', 'Bronjahm - Consume Soul');
INSERT IGNORE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,72401,0,18,1,37672,0,0, '', 'Putricide - Mutated Abomination'),
(13,0,72401,0,18,1,38285,0,0, '', 'Putricide - Mutated Abomination'),
(13,0,71617,0,18,1,38317,0,0, '', 'Putricide - Tear Gas'),
(13,0,71412,0,18,1,37824,0,0, '', 'Putricide - Unstable Experiment'),
(13,0,71415,0,18,1,37824,0,0, '', 'Putricide - Unstable Experiment'),
(13,0,71621,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,72850,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,72851,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,72852,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,71621,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72850,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72851,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72852,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,71704,0,18,1,38309,1,0, '', 'Putricide - Green Bottle'),
(13,0,71704,0,18,1,38308,2,0, '', 'Putricide - Orange Bottle'),
(13,0,72745,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,72746,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,72747,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague'),
(13,0,72748,0,18,1,36678,0,0, '', 'Putricide - Mutated Plague');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12987,12968,12988,12981,12987,12968,12988,12981,12761,12951,13045,13056,13100,13127,13128,13129) AND `type`!=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12987,12,0,0, ''), -- Nausea, Heartburn, Indigestion... (10 player)
(12968,12,1,0, ''), -- Nausea, Heartburn, Indigestion... (25 player)
(12988,12,2,0, ''), -- Nausea, Heartburn, Indigestion... (10 player)
(12981,12,3,0, ''), -- Nausea, Heartburn, Indigestion... (25 player)
(12987,18,0,0, ''), -- Nausea, Heartburn, Indigestion... (10 player)
(12968,18,0,0, ''), -- Nausea, Heartburn, Indigestion... (25 player)
(12988,18,0,0, ''), -- Nausea, Heartburn, Indigestion... (10 player)
(12981,18,0,0, ''), -- Nausea, Heartburn, Indigestion... (25 player)
(12761,12,0,0, ''), -- The Plagueworks (10 player)
(12951,12,1,0, ''), -- The Plagueworks (25 player)
(13045,12,2,0, ''), -- Heroic: The Plagueworks (10 player)
(13056,12,3,0, ''), -- Heroic: The Plagueworks (25 player)
(13100,12,0,0, ''), -- Professor Putricide kills (Icecrown 10 player)
(13127,12,1,0, ''), -- Professor Putricide kills (Icecrown 25 player)
(13128,12,2,0, ''), -- Professor Putricide kills (Heroic Icecrown 10 player)
(13129,12,3,0, ''); -- Professor Putricide kills (Heroic Icecrown 25 player)
INSERT IGNORE INTO `spell_linked_spell` VALUES ('57934', '57933', '0', 'Tricks of the Trade'); 
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('11327', '1784', '0', 'Vanish - Rank 1'),
('11329', '1784', '0', 'Vanish - Rank 2'),
('26888', '1784', '0', 'Vanish - Rank 3');
INSERT INTO `event_scripts` VALUES ('9417', '0', '8', '15415', '0', '0', '0', '0', '0', '0');
REPLACE INTO `gossip_menu_option` VALUES ('19481', '1', '0', 'I have a book that might interest you. Would you like to take a book?', '1', '1', '50027', '0', '0', '0', '0', null);
REPLACE INTO `conditions` VALUES ('15', '19481', '1', '0', '2', '43824', '1', '0', '0', '', null);
# REPLACE INTO `conditions` VALUES ('15', '19481', '1', '0', '4', '4637', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '19481', '1', '0', '17', '1956', '0', '0', '0', '', null);
UPDATE `creature_template` SET `exp` = 1 WHERE `entry` = 31099;
UPDATE `creature_template` SET `exp` = 1 WHERE `minlevel` < 68 AND `minlevel` >1 AND `exp` = '2';
UPDATE `creature_template` SET `exp` = 2 WHERE `minlevel` > 73 AND `minlevel` < 82 AND `exp` = '1' AND `unit_class` < 4;
UPDATE `creature_template` SET `exp` = 2 WHERE `minlevel` > 81 AND `exp` = '1';
DELETE FROM `creature` WHERE `id`=28319;
DELETE FROM `creature` WHERE `id`=10902;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(199999, 10902, 0, 1, 1, 7804, 0, 1314.08, -1305.33, 63.7871, 1.32645, 315, 0, 0, 42, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=10903;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(199998, 10903, 0, 1, 1, 7804, 0, 1467.73, -1403.47, 67.0566, 5.14872, 315, 0, 0, 42, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=10904;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(199997, 10904, 0, 1, 1, 7804, 0, 1553.46, -1488.11, 67.7152, 2.11185, 315, 0, 0, 42, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=10905;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(199996, 10905, 0, 1, 1, 7804, 0, 1329.93, -1587.96, 61.1981, 2.46091, 315, 0, 0, 42, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id`=300030;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(199999, 300030, 0, 1, 1, 1557.94, -1470.4, 68.39, 0, 0, 0, 0, 0, 180, 0, 1),
(199998, 300030, 0, 1, 1, 1311.9, -1589.82, 61.84, 0, 0, 0, 0, 0, 180, 0, 1),
(199997, 300030, 0, 1, 1, 1304.99, -1318.37, 64.3, 0, 0, 0, 0, 0, 180, 0, 1),
(199996, 300030, 0, 1, 1, 1481.41, -1414.8, 67.76, 0, 0, 0, 0, 0, 180, 0, 1);

# WDB
INSERT INTO `npc_text` SET `ID`=9072,`prob0`=1,`text0_0`='A search of the corpse''s clothing and equipment reveals the insignia you need, undamaged by the battle and foul environment.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0, `WDBVerified`=12340;
INSERT INTO `npc_text` SET `ID`=10310,`prob0`=1,`text0_0`='You must be exalted with the blood elves before I will teach you a riding skill, $c.',`text0_1`='',`lang0`=1,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0, `WDBVerified`=12340;
INSERT INTO `npc_text` SET `ID`=15412,`prob0`=1,`text0_0`='We got the final barrier blockin'' entry to Frostwing Halls down, $g lad:lass;. Only Sindragosa stands between the Lich King and divine retribution! What are ye waitin'' for?!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0, `WDBVerified`=12340;
INSERT INTO `npc_text` SET `ID`=15873,`prob0`=1,`text0_0`='Vol''jin told me ta keep hittin'' da drum till he gets back.  If ya be waitin'' for him, he''d be back soon to take back da Isles.$B$BJust wait here and enjoy da music!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0, `WDBVerified`=12340;
INSERT INTO `npc_text` SET `ID`=15877,`prob0`=1,`text0_0`='We require da help of allies on da islands.$B$BZen''tabra has been watching over da animals of de Islands for some time now.  We''d need her help and da help of da animal creatures.$B$BBwonsamdi is a powerful loa dat controls de spirits of de dead on da islands.  His blessing is crucial for our attack.$B$BOnce our allies have joined us, Zalazane and his army of mind-controlled trolls will have no chance!  Then, da Echo Isles will be de Darkspears!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0, `WDBVerified`=12340;
INSERT INTO `item_template` SET `name`='Ethereal Portal',`description`='The techno-sorcery of K''aresh is now yours to command.',`entry`=54452,`class`=15,`subclass`=0,`unk0`=-1,`displayid`=67105,`Quality`=3,`Flags`=32832,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=75136,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0, `WDBVerified`=12340;
INSERT INTO `item_template` SET `name`='Paint Bomb',`description`='',`entry`=54455,`class`=0,`subclass`=0,`unk0`=-1,`displayid`=17902,`Quality`=1,`Flags`=64,`BuyPrice`=0,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=-1,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=1,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=0,`stackable`=250,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=74797,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=3,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0, `WDBVerified`=12340;
INSERT INTO `item_template` SET `name`='Wooly White Rhino',`description`='Teaches you how to summon this mount.  This is a very fast mount.',`entry`=54068,`class`=15,`subclass`=5,`unk0`=-1,`displayid`=66745,`Quality`=4,`Flags`=0,`BuyPrice`=100000,`SellPrice`=0,`InventoryType`=0,`AllowableClass`=262143,`AllowableRace`=-1,`ItemLevel`=40,`RequiredLevel`=40,`RequiredSkill`=762,`RequiredSkillRank`=150,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`RequiredReputationRank`=0,`maxcount`=1,`stackable`=1,`ContainerSlots`=0,`StatsCount`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`ScalingStatDistribution`=0,`ScalingStatValue`=0,`dmg_min1`=0,`dmg_max1`=0,`dmg_type1`=0,`dmg_min2`=0,`dmg_max2`=0,`dmg_type2`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0,`spellid_1`=55884,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=330,`spellcategorycooldown_1`=3000,`spellid_2`=74918,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=0,`spellcategory_2`=0,`spellcategorycooldown_2`=0,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=0,`spellcategory_3`=0,`spellcategorycooldown_3`=0,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=0,`spellcategory_4`=0,`spellcategorycooldown_4`=0,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=0,`spellcategory_5`=0,`spellcategorycooldown_5`=0,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=4,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0,`Duration`=0,`ItemLimitCategory`=0,`HolidayID`=0, `WDBVerified`=12340;

# NeatElves
REPLACE INTO gossip_scripts (id, delay, command, datalong, datalong2) VALUES (9739, 0, 15, 52693, 2);
REPLACE INTO `creature_ai_scripts` VALUES ('3324351', '33243', '8', '0', '100', '1', '62575', '-1', '1500', '1500', '11', '62673', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33243';
REPLACE INTO `creature_ai_scripts` VALUES ('3327251', '33272', '8', '0', '100', '1', '63010', '-1', '2000', '2000', '11', '62658', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33272';
REPLACE INTO `creature_ai_scripts` VALUES ('3322951', '33229', '8', '0', '100', '1', '62544', '-1', '1500', '1500', '11', '62672', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '33229';
UPDATE `creature_equip_template` SET `equipentry2` = '2715' WHERE `entry` =3821;
REPLACE INTO `game_event_model_equip` (`guid`, `modelid`, `equipment_id`, `event`) VALUES ('4428', '0', '3821', '29');
REPLACE INTO `game_event_model_equip` (`guid`, `modelid`, `equipment_id`, `event`) VALUES ('4465', '0', '3821', '29');
REPLACE INTO `game_event_model_equip` (`guid`, `modelid`, `equipment_id`, `event`) VALUES ('4661', '0', '3821', '29');
REPLACE INTO `game_event_model_equip` (`guid`, `modelid`, `equipment_id`, `event`) VALUES ('4817', '0', '3821', '29');
REPLACE INTO `game_event_model_equip` (`guid`, `modelid`, `equipment_id`, `event`) VALUES ('4837', '0', '3821', '29');

# ������ �����
DELETE FROM `creature` WHERE `id`=6491 AND `guid`=67946;

# Forum_FIX
UPDATE `quest_template` SET `SpecialFlags` = 2, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 12934;
UPDATE `creature` SET `phaseMask` = 65535 WHERE `guid` = 87548;
UPDATE `gameobject_template` SET `questItem1` = 25638 WHERE `entry` = 182507;
UPDATE `gameobject_template` SET `questItem1` = 25642 WHERE `entry` = 182505;
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 12224;
DELETE FROM `creature` WHERE `id`=40312;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(104359, 40312, 1, 1, 1, 17188, 0, -1122.29, -5126.54, 2.91218, 0.767945, 300, 0, 0, 100800, 3994, 0, 0);
UPDATE `creature_template` SET `faction_A` = '21', `faction_H` = '21', `mechanic_immune_mask` = 667893759 WHERE `entry` IN (37890,38393,38628,38629,37949,38394,38625,38626,38009,38398,38630,38631);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 37704;
UPDATE `gameobject_template` SET `data0` = 259 WHERE `entry` = 17282;
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `guid` = 346;

# NeatElves
UPDATE `gossip_menu` SET `text_id` = '14324' WHERE `entry` =33238 AND `text_id` =14372; 
UPDATE `gossip_menu` SET `text_id` = '14372' WHERE `entry` =33239 AND `text_id` =14324;
UPDATE `quest_template` SET `PrevQuestId` = '12605' WHERE `entry` =12614;
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent, $N. You''ve saved me a lot of work!$b$bBut don''t think that I''m not grateful!' WHERE `entry` =6571;
UPDATE `quest_template` SET `OfferRewardText` = 'So these bandanas -- filthy tokens of corruption -- are what my Mac had to die for? Such a waste. Such a tragic sacrifice. $b$bBut alas, I cannot return to the past. Just know, $N, that you have brought my family justice through your deeds.' WHERE `entry` =388;
UPDATE creature_template SET npcflag=npcflag &~128 WHERE entry=6737;
DELETE FROM npc_vendor WHERE entry=6737;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 347 AND `id` = 1;
DELETE FROM `locales_gossip_menu_option` WHERE `menu_id` = 347 AND `id` = 1;
DELETE FROM `creature` WHERE `guid` = 52392;
DELETE FROM `waypoint_data` WHERE `id` = 52392;
UPDATE `creature` SET `position_x` = '2133.82',`position_y` = '165.34',`position_z` = '38.0079',`MovementType` = '2' WHERE `guid` =17161;
DELETE FROM `waypoint_data` WHERE `id` = 17161;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES 
(17161,1,2050.22,161.417,33.8209,0),
(17161,2,2065.12,155.49,33.8564,0),
(17161,3,2078.38,153.33,34.3681,0),
(17161,4,2101.32,153.745,35.5123,0),
(17161,5,2131.58,163.248,37.6288,0),
(17161,6,2155.54,176.925,41.1538,0),
(17161,7,2161.41,183.341,42.0738,0),
(17161,8,2163.14,191.348,42.4044,0),
(17161,9,2163.81,205.332,42.6236,0),
(17161,10,2165.69,218.213,40.8173,0),
(17161,11,2175.34,229.691,38.2189,0),
(17161,12,2209.03,248.436,34.1167,0),
(17161,13,2225.41,254.457,33.8494,80000),
(17161,14,2230.1,256.228,33.8716,500),
(17161,15,2234.45,253.332,33.722,500),
(17161,16,2228.72,253.855,33.686,500),
(17161,17,2229.59,257.662,34.0324,500),
(17161,18,2231.35,255.059,33.7565,1000),
(17161,19,2225.98,254.298,33.8179,500),
(17161,20,2209.03,248.436,34.1167,0),
(17161,21,2175.34,229.691,38.2189,0),
(17161,22,2165.69,218.213,40.8173,0),
(17161,23,2163.81,205.332,42.6236,0),
(17161,24,2163.14,191.348,42.4044,0),
(17161,25,2161.41,183.341,42.0738,0),
(17161,26,2155.54,176.925,41.1538,0),
(17161,27,2131.58,163.248,37.6288,0),
(17161,28,2101.32,153.745,35.5123,0),
(17161,29,2078.38,153.33,34.3681,0),
(17161,30,2065.12,155.49,33.8564,0),
(17161,31,2050.22,161.417,33.8209,10000);
INSERT IGNORE INTO `creature_addon` SET `guid`= 17161, `path_id`= 17161;
UPDATE `creature` SET `position_x`=-2258.76,`position_y`=-296.012,`position_z`=-9.42604,`orientation`=4.054370,`spawndist`=0,`MovementType`=2 WHERE `guid`=30269;
DELETE FROM `waypoint_data` WHERE `id` = 30269;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`) VALUES 
(30269,1,-2261.21,-304.058,-9.42604,0),
(30269,2,-2257.54,-312.712,-9.42604,25000),
(30269,3,-2265.13,-312.055,-9.42604,0),
(30269,4,-2272.79,-315.722,-9.42604,25000),
(30269,5,-2270.73,-308.69,-9.42604,0),
(30269,6,-2274.7,-300.973,-9.42604,25000),
(30269,7,-2265.9,-301.458,-9.42604,0),
(30269,8,-2259.11,-296.448,-9.42604,25000);
INSERT IGNORE INTO `creature_addon` SET `guid`= 30269, `path_id`= 30269;
DELETE FROM `gameobject` WHERE `guid` = 70490;
DELETE FROM `fishing_loot_template` WHERE `item` = 2447;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180248 AND `item` =19807;
REPLACE INTO `game_event_gameobject` SELECT `guid`,'15' FROM `gameobject` WHERE `id`=180248;
DELETE FROM `pool_gameobject` WHERE `pool_entry` =1060;
DELETE FROM `pool_gameobject` WHERE `pool_entry` =1085;
DELETE FROM `pool_gameobject` WHERE `pool_entry` =1086;
DELETE FROM `pool_gameobject` WHERE `pool_entry` =1097;
DELETE FROM `pool_template` WHERE `entry` = 1060;
DELETE FROM `pool_template` WHERE `entry` = 1085;
DELETE FROM `pool_template` WHERE `entry` = 1086;
DELETE FROM `pool_template` WHERE `entry` = 1097;
DELETE FROM `pool_gameobject` WHERE `guid` = 26454;
DELETE FROM `pool_gameobject` WHERE `guid` = 26264;
UPDATE `pool_gameobject` SET `guid` = '40606' WHERE `guid` =40628;
UPDATE `pool_gameobject` SET `guid` = '26549' WHERE `guid` =26025;
UPDATE `pool_gameobject` SET `guid` = '40760' WHERE `guid` =42214;
UPDATE `pool_gameobject` SET `guid` = '26708' WHERE `guid` =42188;
UPDATE `pool_gameobject` SET `guid` = '40597' WHERE `guid` =26458;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180369 AND `item` = 13757;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180369 AND `item` = 13758;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180369 AND `item` = 13759;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180369 AND `item` = 13760;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180369 AND `item` = 13889;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180369 AND `item` = 13890;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `entry` =180369 AND `item` =19975;
DELETE FROM `creature_loot_template` WHERE `entry` = 1420 AND `item` = 19975;
DELETE FROM `creature_loot_template` WHERE `entry` = 11374 AND `item` = 19975;
DELETE FROM `fishing_loot_template` WHERE `entry` = 19 AND `item` = 19975;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180582 AND `item` =6358;
DELETE FROM `creature_loot_template` WHERE `entry` = 11374 AND `item` = 19221;
UPDATE `creature_template` SET `lootid` = '0' WHERE `creature_template`.`entry` =11374;
DELETE FROM `creature_loot_template` WHERE `entry` = 2376 AND `item` = 6358;
UPDATE `gameobject_loot_template` SET `groupid` = '1' WHERE `entry` =180582;
UPDATE `gameobject_loot_template` SET `item` = '3820', `maxcount` = '3' WHERE `entry` =180582 AND `item` =21228;
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `entry` =180582 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180655 AND `item` =20708;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 180655 AND `item` = 34109;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180656 AND `item` =21071;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =180656 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =180656 AND `item` =20708;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180657 AND `item` =6359;
DELETE FROM conditions WHERE SourceGroup=180248;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(180661, 3820, 5, 1, 1, 3),
(180657, 3820, 5, 1, 1, 3),
(180656, 3820, 5, 1, 1, 3),
(180655, 3820, 20, 1, 1, 3),
(180658, 3820, 5, 1, 1, 3),
(180712, 3820, 5, 1, 1, 3),
(180750, 3820, 5, 1, 1, 3),
(180683, 3820, 5, 1, 1, 3),
(180684, 3820, 5, 1, 1, 3),
(180900, 3820, 5, 1, 1, 3),
(180685, 3820, 20, 1, 1, 3),
(180682, 3820, 5, 1, 1, 3),
(180662, 3820, 20, 1, 1, 3),
(180663, 3820, 5, 1, 1, 3),
(180664, 3820, 5, 1, 1, 3),
(182952, 34476, 1, 1, 1, 1),
(182952, 34469, 1, 1, 1, 1),
(180751, 3820, 20, 1, 1, 3),
(180752, 3820, 5, 1, 1, 3),
(180901, 3820, 20, 1, 1, 3),
(184956, 3820, 5, 1, 1, 3),
(180902, 3820, 5, 1, 1, 3);
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `entry` =180657 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =180658 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =180658 AND `item` =20708;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180658 AND `item` =6522;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180661 AND `item` =6359;
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `entry` =180661 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180662 AND `item` =21228;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =180662 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180663 AND `item` =21071;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =180664 AND `item` =21228;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `entry` =180664 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180664 AND `item` =6358;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180682 AND `item` =6358;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180683 AND `item` =6359;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180684 AND `item` =21153;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =180685 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180685 AND `item` =21113;
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `entry` =180712 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180712 AND `item` =13422;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180750 AND `item` =6358;
UPDATE `gameobject_loot_template` SET `item` = '21228' WHERE `entry` =180750 AND `item` =21113;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =180751 AND `item` =21114;
UPDATE `gameobject_loot_template` SET `item` = '21228' WHERE `entry` =180751 AND `item` =20708;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180752 AND `item` =6359;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =180753 AND `item` =7080;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '30' WHERE `entry` =180753 AND `item` =7079;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180753 AND `item` =7070;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180900 AND `item` =6358;
UPDATE `gameobject_loot_template` SET `item` = '21228' WHERE `entry` =180900 AND `item` =21113;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '20' WHERE `entry` =180901 AND `item` =21151;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180901 AND `item` =21228;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =180902 AND `item` =6359;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182951 AND `item` =22578;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182952 AND `item` =27443;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =182952 AND `item` =27511;
UPDATE `item_template` SET `FlagsExtra` = '1' WHERE `entry` =34476;
UPDATE `item_template` SET `FlagsExtra` = '2' WHERE `entry` =34469;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =182953 AND `item` =27511;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182953 AND `item` =27429;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182954 AND `item` =27438;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =182954 AND `item` =27511;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182956 AND `item` =27438;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =182956 AND `item` =27511;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182957 AND `item` =27439;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '17' WHERE `entry` =182957 AND `item` =27438;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =182958 AND `item` =27511;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182958 AND `item` =27435;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '4' WHERE `entry` =182959 AND `item` =27511;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =182959 AND `item` =27437;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =184956 AND `item` =21153;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '5' WHERE `item` =44475;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192059 AND `item` =41814;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192052 AND `item` =41802;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192053 AND `item` =41800;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192054 AND `item` =41801;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192057 AND `item` =41813;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192048 AND `item` =41807;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192049 AND `item` =41810;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192050 AND `item` =41809;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192051 AND `item` =41805;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0' WHERE `entry` =192046 AND `item` =41806;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '0.1' WHERE `entry` =192049 AND `item` =44703;
UPDATE `gameobject_template` SET `data1` = '194479' WHERE `entry` =194479;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES ('194479', '45907', '0', '1', '1', '1'), ('194479', '46109', '0.1', '1', '1', '1'), ('194479', '45905', '10', '1', '1', '1');
DELETE FROM `creature_loot_template` WHERE `item` = 45907;
DELETE FROM `creature_loot_template` WHERE `item` = 45905;
UPDATE `creature_template` SET `faction_A` = '1954',`faction_H` = '1954' WHERE `entry` =34915;
UPDATE `creature_template` SET `spell1` = '24049',`spell2` = '0',`spell3` = '0',`spell4` = '0' WHERE `entry` =19401;

# kyle1
# UPDATE quest_template SET SpecialFlags = 0 WHERE entry = 10162;

# Forum FIX
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 38569;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` IN (37672,38605,38786,38787);
UPDATE `quest_template` SET `ReqSpellCast1` = 33067, `ReqSpellCast2` = 33067 WHERE `entry` = 10087;
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `faction_A`=14, `faction_H`=14, `flags_extra`=`flags_extra`|0x80 WHERE `entry`=38317;
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `faction_A`=14, `faction_H`=14, `flags_extra`=`flags_extra`|0x80, `InhabitType`=7 WHERE `entry`=37824;
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `faction_A`=14, `faction_H`=14, `flags_extra`=`flags_extra`|0x80 WHERE `entry`=38234;
UPDATE `creature_template` SET `scale`=2.4, `minlevel`=80, `maxlevel`=80, `faction_A`=14, `faction_H`=14, `flags_extra`=`flags_extra`|0x80 WHERE `entry`=37690;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(104360,37824,631,15,1,0,0,4388.1,3213.29,408.74,3.83972,86400,0,0,12600,0,0,0);
UPDATE `creature_template` SET `unit_flags`=33554432, `AIName`='PassiveAI' WHERE `entry`=38309;
UPDATE `creature_template` SET `unit_flags`=33554432, `AIName`='PassiveAI' WHERE `entry`=38308;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `flags_extra`=`flags_extra`|0x80 WHERE `entry`=38159;
UPDATE `creature_template` SET `spell1`=70360, `spell2`=70539, `spell3`=70542 WHERE `entry`=37672;
UPDATE `creature_template` SET `spell1`=72527, `spell2`=72457, `spell3`=70542 WHERE `entry`=38285;
UPDATE `gameobject_template` SET `flags` = 33 WHERE `entry` = 201370;
UPDATE `gameobject_template` SET `flags` = 33 WHERE `entry` = 201371;
UPDATE `gameobject_template` SET `flags` = 33 WHERE `entry` = 201372;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 38569;
DELETE FROM `creature_loot_template` WHERE (`entry`=23682);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(23682, 33154, 7, 0, 1, 1),
(23682, 33277, -100, 0, 1, 1),
(23682, 33292, 7, 0, 1, 1),
(23682, 33808, 4, 0, 1, 1),
(23682, 34068, 30, 0, 1, 6),
(23682, 34073, 0, 2, 1, 1),
(23682, 34074, 0, 2, 1, 1),
(23682, 34075, 0, 2, 1, 1),
(23682, 37011, 20, 0, 1, 1),
(23682, 37012, 1, 0, 1, 1),
(23682, 24658, 1, 0, 1, 1),
(23682, 39896, 1, 0, 1, 1),
(23682, 38175, 4, 0, 1, 1),
(23682, 49121, 0, 1, 1, 1),
(23682, 49123, 0, 1, 1, 1),
(23682, 49124, 0, 1, 1, 1),
(23682, 49126, 0, 1, 1, 1),
(23682, 49128, 0, 1, 1, 1);
INSERT IGNORE INTO `event_scripts` VALUES ('9417', '0', '8', '15415', '0', '0', '0', '0', '0', '0');
DELETE FROM `creature_model_info` WHERE (`modelid`=30547);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (30547, 0.5, 0.5, 2, 0);
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` IN (33186,33724);

# qazarius
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='22258');

# ������ �����
UPDATE `creature_ai_scripts` SET  `action1_param2` = 1 WHERE `id` = 295802;
UPDATE `creature_ai_scripts` SET  `action1_param2` = 1 WHERE `id` = 296002;

# burnham
UPDATE `creature_template` SET `unit_flags` = 0  WHERE `entry` IN (36658, 36938);
DELETE FROM `creature` WHERE (`guid`=125748);

# NeatElves
UPDATE `creature_questrelation` SET `id` = '23904' WHERE `id` =24519 AND `quest` =11242;
UPDATE `creature_questrelation` SET `id` = '23904' WHERE `id` =23973 AND `quest` =11403;
UPDATE `creature_template` SET `npcflag` = '2' WHERE `entry` =23904;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0',`groupid` = '1' WHERE `entry` =37586;

# Forum_FIX
UPDATE `creature_template` SET `faction_A` = 1735, `faction_H` = 1735 WHERE `entry` = 37920;
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 38569;
UPDATE `creature_template` SET `unit_flags` = 33600 WHERE `entry` = 37920;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 33785;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 21838;

# stap
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 1156, `RequiredMinRepValue` = 9000 WHERE `entry` IN (24828,25239,24825,24826,24827);
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 1156, `RequiredMinRepValue` = 21000 WHERE `entry` IN (24823,25240,24830,24832,24834);
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 1156, `RequiredMinRepValue` = 42000 WHERE `entry` IN (24829,25242,24831,24833,24835);
UPDATE `quest_template` SET `RequiredMaxRepFaction` = 1156, `RequiredMaxRepValue` = 20999 WHERE `entry` IN (24838);

# j.murdoch
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (104361, 6491, 1, 1, 1, 0, 0, -3330.89, 2281.76, 28.6932, 4.65183, 60, 0, 0, 4120, 0, 0, 0);

# WDB
UPDATE `gameobject_template` SET `size`=1.15748 WHERE `entry`=1830;
UPDATE `gameobject_template` SET `size`=1.09265 WHERE `entry`=2005;
UPDATE `gameobject_template` SET `size`=1.07677 WHERE `entry`=2006;
UPDATE `gameobject_template` SET `size`=1.34 WHERE `entry`=2141;
UPDATE `gameobject_template` SET `size`=1.34 WHERE `entry`=2186;
UPDATE `gameobject_template` SET `size`=1.67 WHERE `entry`=3084;
UPDATE `gameobject_template` SET `size`=1.7 WHERE `entry`=3642;
UPDATE `gameobject_template` SET `size`=1.42398 WHERE `entry`=6907;
UPDATE `gameobject_template` SET `size`=1.80957 WHERE `entry`=6908;
UPDATE `gameobject_template` SET `size`=1.54 WHERE `entry`=17182;
UPDATE `gameobject_template` SET `size`=1.8 WHERE `entry`=17188;
UPDATE `gameobject_template` SET `size`=1.19979 WHERE `entry`=20356;
UPDATE `gameobject_template` SET `size`=1.17483 WHERE `entry`=20694;
UPDATE `gameobject_template` SET `size`=1.69 WHERE `entry`=20849;
UPDATE `gameobject_template` SET `size`=2.37 WHERE `entry`=20925;
UPDATE `gameobject_template` SET `size`=2.03 WHERE `entry`=20969;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=20985;
UPDATE `gameobject_template` SET `size`=2.69226 WHERE `entry`=21099;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=22223;
UPDATE `gameobject_template` SET `size`=1.11712 WHERE `entry`=22712;
UPDATE `gameobject_template` SET `size`=1.11712 WHERE `entry`=22886;
UPDATE `gameobject_template` SET `size`=1.01614 WHERE `entry`=24776;
UPDATE `gameobject_template` SET `size`=1.16083 WHERE `entry`=31407;
UPDATE `gameobject_template` SET `size`=1.19642 WHERE `entry`=31408;
UPDATE `gameobject_template` SET `size`=1.04113 WHERE `entry`=31409;
UPDATE `gameobject_template` SET `size`=1.18403 WHERE `entry`=31410;
UPDATE `gameobject_template` SET `size`=1.01918 WHERE `entry`=31411;
UPDATE `gameobject_template` SET `size`=1.25265 WHERE `entry`=32109;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=32595;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=32596;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=34035;
UPDATE `gameobject_template` SET `size`=1.17 WHERE `entry`=40303;
UPDATE `gameobject_template` SET `size`=1.08498 WHERE `entry`=55615;
UPDATE `gameobject_template` SET `size`=1.12787 WHERE `entry`=55616;
UPDATE `gameobject_template` SET `size`=1.1 WHERE `entry`=58622;
UPDATE `gameobject_template` SET `size`=2.64478 WHERE `entry`=67234;
UPDATE `gameobject_template` SET `size`=1.0002 WHERE `entry`=69435;
UPDATE `gameobject_template` SET `size`=1.20395 WHERE `entry`=74075;
UPDATE `gameobject_template` SET `size`=1.20395 WHERE `entry`=74076;
UPDATE `gameobject_template` SET `size`=2.35975 WHERE `entry`=74078;
UPDATE `gameobject_template` SET `size`=1.04592 WHERE `entry`=82136;
UPDATE `gameobject_template` SET `size`=3.91 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `size`=1.26817 WHERE `entry`=103694;
UPDATE `gameobject_template` SET `size`=1.01911 WHERE `entry`=103695;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=111204;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=111206;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=111255;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=111256;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=111259;
UPDATE `gameobject_template` SET `size`=2.21 WHERE `entry`=142702;
UPDATE `gameobject_template` SET `size`=2.02 WHERE `entry`=142705;
UPDATE `gameobject_template` SET `size`=2.14 WHERE `entry`=142706;
UPDATE `gameobject_template` SET `size`=2.1 WHERE `entry`=142707;
UPDATE `gameobject_template` SET `size`=1.84 WHERE `entry`=142714;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=147037;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=147787;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=147793;
UPDATE `gameobject_template` SET `size`=1.6 WHERE `entry`=152608;
UPDATE `gameobject_template` SET `size`=1.00671 WHERE `entry`=170453;
UPDATE `gameobject_template` SET `size`=1.00671 WHERE `entry`=170454;
UPDATE `gameobject_template` SET `size`=1.00671 WHERE `entry`=170455;
UPDATE `gameobject_template` SET `size`=1.51439 WHERE `entry`=170575;
UPDATE `gameobject_template` SET `size`=1.24617 WHERE `entry`=170576;
UPDATE `gameobject_template` SET `size`=1.24617 WHERE `entry`=170577;
UPDATE `gameobject_template` SET `size`=1.65179 WHERE `entry`=173094;
UPDATE `gameobject_template` SET `size`=1.10976 WHERE `entry`=173095;
UPDATE `gameobject_template` SET `size`=1.60877 WHERE `entry`=173200;
UPDATE `gameobject_template` SET `size`=1.75241 WHERE `entry`=173207;
UPDATE `gameobject_template` SET `size`=1.19 WHERE `entry`=173211;
UPDATE `gameobject_template` SET `size`=1.00671 WHERE `entry`=174536;
UPDATE `gameobject_template` SET `size`=1.00671 WHERE `entry`=174537;
UPDATE `gameobject_template` SET `size`=1.00671 WHERE `entry`=174538;
UPDATE `gameobject_template` SET `size`=1.00785 WHERE `entry`=175244;
UPDATE `gameobject_template` SET `size`=1.08803 WHERE `entry`=175593;
UPDATE `gameobject_template` SET `size`=1.37554 WHERE `entry`=175594;
UPDATE `gameobject_template` SET `size`=1.15113 WHERE `entry`=175596;
UPDATE `gameobject_template` SET `size`=1.19296 WHERE `entry`=175597;
UPDATE `gameobject_template` SET `size`=1.02853 WHERE `entry`=175599;
UPDATE `gameobject_template` SET `size`=1.14386 WHERE `entry`=175600;
UPDATE `gameobject_template` SET `size`=1.05372 WHERE `entry`=175601;
UPDATE `gameobject_template` SET `size`=1.06793 WHERE `entry`=175675;
UPDATE `gameobject_template` SET `size`=1.04423 WHERE `entry`=175743;
UPDATE `gameobject_template` SET `size`=1.0822 WHERE `entry`=175744;
UPDATE `gameobject_template` SET `size`=2.65783 WHERE `entry`=175946;
UPDATE `gameobject_template` SET `size`=2.65783 WHERE `entry`=175947;
UPDATE `gameobject_template` SET `size`=1.90593 WHERE `entry`=175969;
UPDATE `gameobject_template` SET `size`=1.27888 WHERE `entry`=176186;
UPDATE `gameobject_template` SET `size`=1.7 WHERE `entry`=176267;
UPDATE `gameobject_template` SET `size`=2.3 WHERE `entry`=176389;
UPDATE `gameobject_template` SET `size`=2.39 WHERE `entry`=176390;
UPDATE `gameobject_template` SET `size`=1.15918 WHERE `entry`=176447;
UPDATE `gameobject_template` SET `size`=1.12054 WHERE `entry`=176449;
UPDATE `gameobject_template` SET `size`=1.2268 WHERE `entry`=176451;
UPDATE `gameobject_template` SET `size`=3.62593 WHERE `entry`=176966;
UPDATE `gameobject_template` SET `size`=1.84578 WHERE `entry`=177002;
UPDATE `gameobject_template` SET `size`=2.58722 WHERE `entry`=177003;
UPDATE `gameobject_template` SET `size`=2.58722 WHERE `entry`=177004;
UPDATE `gameobject_template` SET `size`=2.58722 WHERE `entry`=177005;
UPDATE `gameobject_template` SET `size`=2.58722 WHERE `entry`=177006;
UPDATE `gameobject_template` SET `size`=2.58722 WHERE `entry`=177007;
UPDATE `gameobject_template` SET `size`=1.62107 WHERE `entry`=177009;
UPDATE `gameobject_template` SET `size`=1.62107 WHERE `entry`=177010;
UPDATE `gameobject_template` SET `size`=1.94528 WHERE `entry`=177011;
UPDATE `gameobject_template` SET `size`=1.94528 WHERE `entry`=177012;
UPDATE `gameobject_template` SET `size`=2.04255 WHERE `entry`=177013;
UPDATE `gameobject_template` SET `size`=2.82525 WHERE `entry`=177014;
UPDATE `gameobject_template` SET `size`=3.53156 WHERE `entry`=177015;
UPDATE `gameobject_template` SET `size`=2.82525 WHERE `entry`=177016;
UPDATE `gameobject_template` SET `size`=2.21128 WHERE `entry`=177017;
UPDATE `gameobject_template` SET `size`=2.21128 WHERE `entry`=177018;
UPDATE `gameobject_template` SET `size`=2.21128 WHERE `entry`=177019;
UPDATE `gameobject_template` SET `size`=1.85822 WHERE `entry`=177020;
UPDATE `gameobject_template` SET `size`=2.5474 WHERE `entry`=177021;
UPDATE `gameobject_template` SET `size`=2.5474 WHERE `entry`=177022;
UPDATE `gameobject_template` SET `size`=1.44304 WHERE `entry`=177023;
UPDATE `gameobject_template` SET `size`=2.21128 WHERE `entry`=177024;
UPDATE `gameobject_template` SET `size`=2.5474 WHERE `entry`=177025;
UPDATE `gameobject_template` SET `size`=2.21128 WHERE `entry`=177026;
UPDATE `gameobject_template` SET `size`=1.48292 WHERE `entry`=177217;
UPDATE `gameobject_template` SET `size`=1.62578 WHERE `entry`=177375;
UPDATE `gameobject_template` SET `size`=1.62578 WHERE `entry`=177376;
UPDATE `gameobject_template` SET `size`=1.62578 WHERE `entry`=177377;
UPDATE `gameobject_template` SET `size`=1.53398 WHERE `entry`=178561;
UPDATE `gameobject_template` SET `size`=1.53767 WHERE `entry`=178562;
UPDATE `gameobject_template` SET `size`=1.26182 WHERE `entry`=178563;
UPDATE `gameobject_template` SET `size`=2.31997 WHERE `entry`=178564;
UPDATE `gameobject_template` SET `size`=1.26182 WHERE `entry`=178566;
UPDATE `gameobject_template` SET `size`=1.26182 WHERE `entry`=178567;
UPDATE `gameobject_template` SET `size`=1.86379 WHERE `entry`=178568;
UPDATE `gameobject_template` SET `size`=1.19039 WHERE `entry`=178569;
UPDATE `gameobject_template` SET `size`=3.38607 WHERE `entry`=179364;
UPDATE `gameobject_template` SET `size`=4.33333 WHERE `entry`=179365;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=179512;
UPDATE `gameobject_template` SET `size`=1.00511 WHERE `entry`=179724;
UPDATE `gameobject_template` SET `size`=1.02902 WHERE `entry`=180904;
UPDATE `gameobject_template` SET `size`=1.87 WHERE `entry`=181359;
UPDATE `gameobject_template` SET `size`=1.55148 WHERE `entry`=181435;
UPDATE `gameobject_template` SET `size`=1.31481 WHERE `entry`=181436;
UPDATE `gameobject_template` SET `size`=1.55148 WHERE `entry`=181437;
UPDATE `gameobject_template` SET `size`=1.55148 WHERE `entry`=181438;
UPDATE `gameobject_template` SET `size`=1.55148 WHERE `entry`=181439;
UPDATE `gameobject_template` SET `size`=1.31481 WHERE `entry`=181440;
UPDATE `gameobject_template` SET `size`=1.31481 WHERE `entry`=181441;
UPDATE `gameobject_template` SET `size`=1.31481 WHERE `entry`=181442;
UPDATE `gameobject_template` SET `size`=1.11797 WHERE `entry`=181815;
UPDATE `gameobject_template` SET `size`=1.11797 WHERE `entry`=181817;
UPDATE `gameobject_template` SET `size`=1.24332 WHERE `entry`=181888;
UPDATE `gameobject_template` SET `size`=4.14194 WHERE `entry`=181982;
UPDATE `gameobject_template` SET `size`=1.9 WHERE `entry`=181985;
UPDATE `gameobject_template` SET `size`=1.21468 WHERE `entry`=182060;
UPDATE `gameobject_template` SET `size`=2.36799 WHERE `entry`=182061;
UPDATE `gameobject_template` SET `size`=1.01664 WHERE `entry`=182205;
UPDATE `gameobject_template` SET `size`=1.53212 WHERE `entry`=182251;
UPDATE `gameobject_template` SET `size`=1.53212 WHERE `entry`=182252;
UPDATE `gameobject_template` SET `size`=1.25992 WHERE `entry`=182315;
UPDATE `gameobject_template` SET `size`=1.25992 WHERE `entry`=182316;
UPDATE `gameobject_template` SET `size`=1.25992 WHERE `entry`=182317;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182331;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182332;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182333;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182334;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182335;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182336;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182337;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182338;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182339;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182340;
UPDATE `gameobject_template` SET `size`=1.74932 WHERE `entry`=182341;
UPDATE `gameobject_template` SET `size`=1.01664 WHERE `entry`=182376;
UPDATE `gameobject_template` SET `size`=1.17147 WHERE `entry`=182568;
UPDATE `gameobject_template` SET `size`=1.99645 WHERE `entry`=182576;
UPDATE `gameobject_template` SET `size`=1.47409 WHERE `entry`=182580;
UPDATE `gameobject_template` SET `size`=1.03094 WHERE `entry`=182681;
UPDATE `gameobject_template` SET `size`=1.03094 WHERE `entry`=182682;
UPDATE `gameobject_template` SET `size`=1.25259 WHERE `entry`=182726;
UPDATE `gameobject_template` SET `size`=4.38663 WHERE `entry`=182737;
UPDATE `gameobject_template` SET `size`=4.38663 WHERE `entry`=182744;
UPDATE `gameobject_template` SET `size`=3.86334 WHERE `entry`=182746;
UPDATE `gameobject_template` SET `size`=2.70914 WHERE `entry`=182748;
UPDATE `gameobject_template` SET `size`=4.38663 WHERE `entry`=182760;
UPDATE `gameobject_template` SET `size`=3.56 WHERE `entry`=182833;
UPDATE `gameobject_template` SET `size`=1.80868 WHERE `entry`=182944;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=182968;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=182994;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183008;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183009;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183010;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183031;
UPDATE `gameobject_template` SET `size`=1.17632 WHERE `entry`=183112;
UPDATE `gameobject_template` SET `size`=1.11516 WHERE `entry`=183113;
UPDATE `gameobject_template` SET `size`=1.17632 WHERE `entry`=183114;
UPDATE `gameobject_template` SET `size`=1.04548 WHERE `entry`=183116;
UPDATE `gameobject_template` SET `size`=1.02358 WHERE `entry`=183117;
UPDATE `gameobject_template` SET `size`=1.07632 WHERE `entry`=183118;
UPDATE `gameobject_template` SET `size`=1.06018 WHERE `entry`=183119;
UPDATE `gameobject_template` SET `size`=1.5124 WHERE `entry`=183218;
UPDATE `gameobject_template` SET `size`=4.53 WHERE `entry`=183350;
UPDATE `gameobject_template` SET `size`=4.53 WHERE `entry`=183351;
UPDATE `gameobject_template` SET `size`=2.55435 WHERE `entry`=183362;
UPDATE `gameobject_template` SET `size`=2.55435 WHERE `entry`=183363;
UPDATE `gameobject_template` SET `size`=1.12229 WHERE `entry`=183364;
UPDATE `gameobject_template` SET `size`=1.12229 WHERE `entry`=183365;
UPDATE `gameobject_template` SET `size`=1.12229 WHERE `entry`=183366;
UPDATE `gameobject_template` SET `size`=1.12229 WHERE `entry`=183367;
UPDATE `gameobject_template` SET `size`=1.21357 WHERE `entry`=183393;
UPDATE `gameobject_template` SET `size`=1.73 WHERE `entry`=183399;
UPDATE `gameobject_template` SET `size`=2.17937 WHERE `entry`=183408;
UPDATE `gameobject_template` SET `size`=1.49639 WHERE `entry`=183415;
UPDATE `gameobject_template` SET `size`=3.43 WHERE `entry`=183420;
UPDATE `gameobject_template` SET `size`=3.59 WHERE `entry`=183422;
UPDATE `gameobject_template` SET `size`=3.59 WHERE `entry`=183423;
UPDATE `gameobject_template` SET `size`=3.59 WHERE `entry`=183424;
UPDATE `gameobject_template` SET `size`=3.59 WHERE `entry`=183425;
UPDATE `gameobject_template` SET `size`=3.59 WHERE `entry`=183427;
UPDATE `gameobject_template` SET `size`=2.20055 WHERE `entry`=183439;
UPDATE `gameobject_template` SET `size`=1.95217 WHERE `entry`=183450;
UPDATE `gameobject_template` SET `size`=1.76 WHERE `entry`=183467;
UPDATE `gameobject_template` SET `size`=1.09482 WHERE `entry`=183469;
UPDATE `gameobject_template` SET `size`=1.10408 WHERE `entry`=183470;
UPDATE `gameobject_template` SET `size`=1.24399 WHERE `entry`=183471;
UPDATE `gameobject_template` SET `size`=1.24399 WHERE `entry`=183473;
UPDATE `gameobject_template` SET `size`=1.10408 WHERE `entry`=183474;
UPDATE `gameobject_template` SET `size`=1.09482 WHERE `entry`=183475;
UPDATE `gameobject_template` SET `size`=1.12942 WHERE `entry`=183477;
UPDATE `gameobject_template` SET `size`=1.24399 WHERE `entry`=183479;
UPDATE `gameobject_template` SET `size`=1.10408 WHERE `entry`=183480;
UPDATE `gameobject_template` SET `size`=1.09482 WHERE `entry`=183481;
UPDATE `gameobject_template` SET `size`=1.08529 WHERE `entry`=183485;
UPDATE `gameobject_template` SET `size`=1.11363 WHERE `entry`=183487;
UPDATE `gameobject_template` SET `size`=1.27152 WHERE `entry`=183703;
UPDATE `gameobject_template` SET `size`=1.36836 WHERE `entry`=183748;
UPDATE `gameobject_template` SET `size`=1.36836 WHERE `entry`=183749;
UPDATE `gameobject_template` SET `size`=1.25992 WHERE `entry`=183761;
UPDATE `gameobject_template` SET `size`=1.49884 WHERE `entry`=183782;
UPDATE `gameobject_template` SET `size`=1.4185 WHERE `entry`=183783;
UPDATE `gameobject_template` SET `size`=2.28883 WHERE `entry`=183894;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183896;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183897;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183898;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183899;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183900;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183901;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183902;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=183903;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183904;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183905;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183906;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183907;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183908;
UPDATE `gameobject_template` SET `size`=1.53 WHERE `entry`=183911;
UPDATE `gameobject_template` SET `size`=1.78 WHERE `entry`=183927;
UPDATE `gameobject_template` SET `size`=1.59 WHERE `entry`=184054;
UPDATE `gameobject_template` SET `size`=1.23435 WHERE `entry`=184127;
UPDATE `gameobject_template` SET `size`=1.13548 WHERE `entry`=184130;
UPDATE `gameobject_template` SET `size`=1.82758 WHERE `entry`=184131;
UPDATE `gameobject_template` SET `size`=1.8244 WHERE `entry`=184132;
UPDATE `gameobject_template` SET `size`=10.3928 WHERE `entry`=184171;
UPDATE `gameobject_template` SET `size`=10.3928 WHERE `entry`=184172;
UPDATE `gameobject_template` SET `size`=10.9961 WHERE `entry`=184173;
UPDATE `gameobject_template` SET `size`=10.9961 WHERE `entry`=184174;
UPDATE `gameobject_template` SET `size`=1.77176 WHERE `entry`=184175;
UPDATE `gameobject_template` SET `size`=1.76867 WHERE `entry`=184176;
UPDATE `gameobject_template` SET `size`=1.12546 WHERE `entry`=184177;
UPDATE `gameobject_template` SET `size`=1.1235 WHERE `entry`=184178;
UPDATE `gameobject_template` SET `size`=2.19504 WHERE `entry`=184179;
UPDATE `gameobject_template` SET `size`=2.19121 WHERE `entry`=184180;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184181;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184182;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184183;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184184;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184185;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184186;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184187;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184188;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184189;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184190;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184191;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184192;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184193;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184194;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184195;
UPDATE `gameobject_template` SET `size`=1.88042 WHERE `entry`=184196;
UPDATE `gameobject_template` SET `size`=2.88056 WHERE `entry`=184197;
UPDATE `gameobject_template` SET `size`=2.88056 WHERE `entry`=184198;
UPDATE `gameobject_template` SET `size`=3.42869 WHERE `entry`=184199;
UPDATE `gameobject_template` SET `size`=3.42869 WHERE `entry`=184200;
UPDATE `gameobject_template` SET `size`=2.93215 WHERE `entry`=184201;
UPDATE `gameobject_template` SET `size`=2.93215 WHERE `entry`=184202;
UPDATE `gameobject_template` SET `size`=3.42869 WHERE `entry`=184206;
UPDATE `gameobject_template` SET `size`=3.42869 WHERE `entry`=184207;
UPDATE `gameobject_template` SET `size`=2.88056 WHERE `entry`=184210;
UPDATE `gameobject_template` SET `size`=2.88056 WHERE `entry`=184211;
UPDATE `gameobject_template` SET `size`=1.94802 WHERE `entry`=184215;
UPDATE `gameobject_template` SET `size`=1.94802 WHERE `entry`=184216;
UPDATE `gameobject_template` SET `size`=2.32496 WHERE `entry`=184217;
UPDATE `gameobject_template` SET `size`=2.32496 WHERE `entry`=184218;
UPDATE `gameobject_template` SET `size`=2.0667 WHERE `entry`=184221;
UPDATE `gameobject_template` SET `size`=2.0667 WHERE `entry`=184222;
UPDATE `gameobject_template` SET `size`=2.07753 WHERE `entry`=184223;
UPDATE `gameobject_template` SET `size`=2.07753 WHERE `entry`=184224;
UPDATE `gameobject_template` SET `size`=3.27637 WHERE `entry`=184246;
UPDATE `gameobject_template` SET `size`=1.69475 WHERE `entry`=184287;
UPDATE `gameobject_template` SET `size`=2.81 WHERE `entry`=184289;
UPDATE `gameobject_template` SET `size`=2.81 WHERE `entry`=184290;
UPDATE `gameobject_template` SET `size`=1.43 WHERE `entry`=184313;
UPDATE `gameobject_template` SET `size`=1.97 WHERE `entry`=184342;
UPDATE `gameobject_template` SET `size`=2.31 WHERE `entry`=184343;
UPDATE `gameobject_template` SET `size`=3.39 WHERE `entry`=184344;
UPDATE `gameobject_template` SET `size`=1.66 WHERE `entry`=184348;
UPDATE `gameobject_template` SET `size`=2.31 WHERE `entry`=184349;
UPDATE `gameobject_template` SET `size`=1.75 WHERE `entry`=184350;
UPDATE `gameobject_template` SET `size`=2.08 WHERE `entry`=184351;
UPDATE `gameobject_template` SET `size`=1.68 WHERE `entry`=184354;
UPDATE `gameobject_template` SET `size`=1.87 WHERE `entry`=184356;
UPDATE `gameobject_template` SET `size`=1.87 WHERE `entry`=184358;
UPDATE `gameobject_template` SET `size`=1.75 WHERE `entry`=184361;
UPDATE `gameobject_template` SET `size`=1.95 WHERE `entry`=184362;
UPDATE `gameobject_template` SET `size`=1.68 WHERE `entry`=184366;
UPDATE `gameobject_template` SET `size`=2.16 WHERE `entry`=184371;
UPDATE `gameobject_template` SET `size`=1.87 WHERE `entry`=184374;
UPDATE `gameobject_template` SET `size`=6.03719 WHERE `entry`=184397;
UPDATE `gameobject_template` SET `size`=1.36727 WHERE `entry`=184398;
UPDATE `gameobject_template` SET `size`=1.50858 WHERE `entry`=184399;
UPDATE `gameobject_template` SET `size`=2.81 WHERE `entry`=184414;
UPDATE `gameobject_template` SET `size`=2.81 WHERE `entry`=184415;
UPDATE `gameobject_template` SET `size`=1.98 WHERE `entry`=184474;
UPDATE `gameobject_template` SET `size`=1.00357 WHERE `entry`=184512;
UPDATE `gameobject_template` SET `size`=10.9961 WHERE `entry`=184526;
UPDATE `gameobject_template` SET `size`=10.9961 WHERE `entry`=184527;
UPDATE `gameobject_template` SET `size`=10.3928 WHERE `entry`=184528;
UPDATE `gameobject_template` SET `size`=10.3928 WHERE `entry`=184529;
UPDATE `gameobject_template` SET `size`=4.7503 WHERE `entry`=184586;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=184674;
UPDATE `gameobject_template` SET `size`=1.35566 WHERE `entry`=184724;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185062;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185063;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185064;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185065;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185066;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185067;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185068;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185069;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185070;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185071;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185072;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185073;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185074;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185075;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185076;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185077;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185078;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185079;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185080;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185081;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185082;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185083;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185084;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185085;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185086;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185087;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185088;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185089;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185090;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185091;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185092;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185093;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185094;
UPDATE `gameobject_template` SET `size`=3.1208 WHERE `entry`=185095;
UPDATE `gameobject_template` SET `size`=2.6708 WHERE `entry`=185096;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185097;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185098;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185099;
UPDATE `gameobject_template` SET `size`=2.54 WHERE `entry`=185100;
UPDATE `gameobject_template` SET `size`=2.86 WHERE `entry`=185101;
UPDATE `gameobject_template` SET `size`=1.36633 WHERE `entry`=185108;
UPDATE `gameobject_template` SET `size`=1.36633 WHERE `entry`=185109;
UPDATE `gameobject_template` SET `size`=1.36633 WHERE `entry`=185110;
UPDATE `gameobject_template` SET `size`=1.35798 WHERE `entry`=185136;
UPDATE `gameobject_template` SET `size`=3.05201 WHERE `entry`=185192;
UPDATE `gameobject_template` SET `size`=3.07201 WHERE `entry`=185194;
UPDATE `gameobject_template` SET `size`=1.06283 WHERE `entry`=185235;
UPDATE `gameobject_template` SET `size`=1.07283 WHERE `entry`=185236;
UPDATE `gameobject_template` SET `size`=1.09283 WHERE `entry`=185237;
UPDATE `gameobject_template` SET `size`=1.08283 WHERE `entry`=185238;
UPDATE `gameobject_template` SET `size`=1.08283 WHERE `entry`=185239;
UPDATE `gameobject_template` SET `size`=1.13283 WHERE `entry`=185240;
UPDATE `gameobject_template` SET `size`=1.27244 WHERE `entry`=185241;
UPDATE `gameobject_template` SET `size`=1.08283 WHERE `entry`=185242;
UPDATE `gameobject_template` SET `size`=1.15283 WHERE `entry`=185243;
UPDATE `gameobject_template` SET `size`=1.43468 WHERE `entry`=185271;
UPDATE `gameobject_template` SET `size`=1.43468 WHERE `entry`=185272;
UPDATE `gameobject_template` SET `size`=2.50903 WHERE `entry`=185273;
UPDATE `gameobject_template` SET `size`=2.50903 WHERE `entry`=185274;
UPDATE `gameobject_template` SET `size`=1.43468 WHERE `entry`=185275;
UPDATE `gameobject_template` SET `size`=1.43468 WHERE `entry`=185276;
UPDATE `gameobject_template` SET `size`=1.43468 WHERE `entry`=185278;
UPDATE `gameobject_template` SET `size`=1.43468 WHERE `entry`=185279;
UPDATE `gameobject_template` SET `size`=2.50903 WHERE `entry`=185280;
UPDATE `gameobject_template` SET `size`=2.50903 WHERE `entry`=185281;
UPDATE `gameobject_template` SET `size`=1.98 WHERE `entry`=185290;
UPDATE `gameobject_template` SET `size`=1.8 WHERE `entry`=185536;
UPDATE `gameobject_template` SET `size`=2.12 WHERE `entry`=185537;
UPDATE `gameobject_template` SET `size`=1.94 WHERE `entry`=185538;
UPDATE `gameobject_template` SET `size`=1.87 WHERE `entry`=185544;
UPDATE `gameobject_template` SET `size`=1.33862 WHERE `entry`=186010;
UPDATE `gameobject_template` SET `size`=1.33862 WHERE `entry`=186011;
UPDATE `gameobject_template` SET `size`=1.15163 WHERE `entry`=186049;
UPDATE `gameobject_template` SET `size`=1.15163 WHERE `entry`=186050;
UPDATE `gameobject_template` SET `size`=1.8772 WHERE `entry`=186053;
UPDATE `gameobject_template` SET `size`=1.8772 WHERE `entry`=186054;
UPDATE `gameobject_template` SET `size`=1.8772 WHERE `entry`=186055;
UPDATE `gameobject_template` SET `size`=1.8772 WHERE `entry`=186058;
UPDATE `gameobject_template` SET `size`=1.8772 WHERE `entry`=186062;
UPDATE `gameobject_template` SET `size`=1.8772 WHERE `entry`=186064;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186068;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186069;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186072;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186075;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186076;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186077;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186078;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186079;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186080;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186081;
UPDATE `gameobject_template` SET `size`=2.26247 WHERE `entry`=186082;
UPDATE `gameobject_template` SET `size`=1.16447 WHERE `entry`=186084;
UPDATE `gameobject_template` SET `size`=1.16447 WHERE `entry`=186085;
UPDATE `gameobject_template` SET `size`=1.12577 WHERE `entry`=186218;
UPDATE `gameobject_template` SET `size`=1.06644 WHERE `entry`=186304;
UPDATE `gameobject_template` SET `size`=1.63 WHERE `entry`=186485;
UPDATE `gameobject_template` SET `size`=3.03 WHERE `entry`=186490;
UPDATE `gameobject_template` SET `size`=2.23 WHERE `entry`=186586;
UPDATE `gameobject_template` SET `size`=1.14368 WHERE `entry`=186858;
UPDATE `gameobject_template` SET `size`=1.18491 WHERE `entry`=187074;
UPDATE `gameobject_template` SET `size`=1.92 WHERE `entry`=187075;
UPDATE `gameobject_template` SET `size`=1.51023 WHERE `entry`=187184;
UPDATE `gameobject_template` SET `size`=1.23098 WHERE `entry`=187185;
UPDATE `gameobject_template` SET `size`=1.51023 WHERE `entry`=187187;
UPDATE `gameobject_template` SET `size`=1.51023 WHERE `entry`=187188;
UPDATE `gameobject_template` SET `size`=1.23098 WHERE `entry`=187189;
UPDATE `gameobject_template` SET `size`=1.2387 WHERE `entry`=187239;
UPDATE `gameobject_template` SET `size`=1.16004 WHERE `entry`=187240;
UPDATE `gameobject_template` SET `size`=1.11749 WHERE `entry`=187241;
UPDATE `gameobject_template` SET `size`=1.28127 WHERE `entry`=187242;
UPDATE `gameobject_template` SET `size`=1.15435 WHERE `entry`=187244;
UPDATE `gameobject_template` SET `size`=1.11054 WHERE `entry`=187248;
UPDATE `gameobject_template` SET `size`=1.16796 WHERE `entry`=187249;
UPDATE `gameobject_template` SET `size`=1.28275 WHERE `entry`=187250;
UPDATE `gameobject_template` SET `size`=1.47644 WHERE `entry`=187275;
UPDATE `gameobject_template` SET `size`=1.35644 WHERE `entry`=187276;
UPDATE `gameobject_template` SET `size`=1.35644 WHERE `entry`=187277;
UPDATE `gameobject_template` SET `size`=1.31268 WHERE `entry`=187325;
UPDATE `gameobject_template` SET `size`=1.35644 WHERE `entry`=187346;
UPDATE `gameobject_template` SET `size`=1.26581 WHERE `entry`=187364;
UPDATE `gameobject_template` SET `size`=1.0426 WHERE `entry`=187446;
UPDATE `gameobject_template` SET `size`=1.18746 WHERE `entry`=187447;
UPDATE `gameobject_template` SET `size`=1.20812 WHERE `entry`=187448;
UPDATE `gameobject_template` SET `size`=1.33161 WHERE `entry`=187450;
UPDATE `gameobject_template` SET `size`=1.36383 WHERE `entry`=187452;
UPDATE `gameobject_template` SET `size`=1.39283 WHERE `entry`=187453;
UPDATE `gameobject_template` SET `size`=1.45122 WHERE `entry`=187455;
UPDATE `gameobject_template` SET `size`=1.47101 WHERE `entry`=187456;
UPDATE `gameobject_template` SET `size`=4.45398 WHERE `entry`=187764;
UPDATE `gameobject_template` SET `size`=4.7524 WHERE `entry`=187765;
UPDATE `gameobject_template` SET `size`=2.1379 WHERE `entry`=187766;
UPDATE `gameobject_template` SET `size`=1.85909 WHERE `entry`=187770;
UPDATE `gameobject_template` SET `size`=2.09325 WHERE `entry`=187896;
UPDATE `gameobject_template` SET `size`=1.29992 WHERE `entry`=187912;
UPDATE `gameobject_template` SET `size`=3.90739 WHERE `entry`=187990;
UPDATE `gameobject_template` SET `size`=1.24709 WHERE `entry`=188010;
UPDATE `gameobject_template` SET `size`=1.20994 WHERE `entry`=188012;
UPDATE `gameobject_template` SET `size`=1.32771 WHERE `entry`=188013;
UPDATE `gameobject_template` SET `size`=1.0463 WHERE `entry`=188014;
UPDATE `gameobject_template` SET `size`=1.85909 WHERE `entry`=188064;
UPDATE `gameobject_template` SET `size`=3.87544 WHERE `entry`=188065;
UPDATE `gameobject_template` SET `size`=8.68847 WHERE `entry`=188118;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=188148;
UPDATE `gameobject_template` SET `size`=3.29297 WHERE `entry`=188177;
UPDATE `gameobject_template` SET `size`=1.14 WHERE `entry`=188414;
UPDATE `gameobject_template` SET `size`=1.31928 WHERE `entry`=188488;
UPDATE `gameobject_template` SET `size`=1.26581 WHERE `entry`=189317;
UPDATE `gameobject_template` SET `size`=1.12 WHERE `entry`=190123;
UPDATE `gameobject_template` SET `size`=1.12 WHERE `entry`=190125;
UPDATE `gameobject_template` SET `size`=1.2178 WHERE `entry`=190212;
UPDATE `gameobject_template` SET `size`=1.56 WHERE `entry`=190287;
UPDATE `gameobject_template` SET `size`=1.01188 WHERE `entry`=190293;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191070;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191072;
UPDATE `gameobject_template` SET `size`=1.31846 WHERE `entry`=191073;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191075;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191079;
UPDATE `gameobject_template` SET `size`=1.68222 WHERE `entry`=191080;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191081;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191082;
UPDATE `gameobject_template` SET `size`=1.01809 WHERE `entry`=191186;
UPDATE `gameobject_template` SET `size`=1.18809 WHERE `entry`=191194;
UPDATE `gameobject_template` SET `size`=1.09809 WHERE `entry`=191196;
UPDATE `gameobject_template` SET `size`=1.45809 WHERE `entry`=191198;
UPDATE `gameobject_template` SET `size`=1.45809 WHERE `entry`=191199;
UPDATE `gameobject_template` SET `size`=1.34 WHERE `entry`=191201;
UPDATE `gameobject_template` SET `size`=1.34 WHERE `entry`=191202;
UPDATE `gameobject_template` SET `size`=1.77 WHERE `entry`=191241;
UPDATE `gameobject_template` SET `size`=1.22662 WHERE `entry`=191287;
UPDATE `gameobject_template` SET `size`=1.22662 WHERE `entry`=191288;
UPDATE `gameobject_template` SET `size`=2.90919 WHERE `entry`=191388;
UPDATE `gameobject_template` SET `size`=2.75919 WHERE `entry`=191390;
UPDATE `gameobject_template` SET `size`=2.15872 WHERE `entry`=191407;
UPDATE `gameobject_template` SET `size`=2.90919 WHERE `entry`=191410;
UPDATE `gameobject_template` SET `size`=2.90919 WHERE `entry`=191411;
UPDATE `gameobject_template` SET `size`=1.10627 WHERE `entry`=191460;
UPDATE `gameobject_template` SET `size`=1.5399 WHERE `entry`=191505;
UPDATE `gameobject_template` SET `size`=1.5399 WHERE `entry`=191508;
UPDATE `gameobject_template` SET `size`=1.65311 WHERE `entry`=191509;
UPDATE `gameobject_template` SET `size`=2.63872 WHERE `entry`=191622;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191625;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191628;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191629;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191630;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191643;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191644;
UPDATE `gameobject_template` SET `size`=2.09 WHERE `entry`=191699;
UPDATE `gameobject_template` SET `size`=2.03464 WHERE `entry`=191746;
UPDATE `gameobject_template` SET `size`=2.03464 WHERE `entry`=191747;
UPDATE `gameobject_template` SET `size`=2.03464 WHERE `entry`=191748;
UPDATE `gameobject_template` SET `size`=1.21809 WHERE `entry`=191751;
UPDATE `gameobject_template` SET `size`=1.11809 WHERE `entry`=191753;
UPDATE `gameobject_template` SET `size`=1.0357 WHERE `entry`=191793;
UPDATE `gameobject_template` SET `size`=2.16968 WHERE `entry`=191824;
UPDATE `gameobject_template` SET `size`=2.16968 WHERE `entry`=191825;
UPDATE `gameobject_template` SET `size`=2.16968 WHERE `entry`=191828;
UPDATE `gameobject_template` SET `size`=1.33163 WHERE `entry`=191857;
UPDATE `gameobject_template` SET `size`=1.12058 WHERE `entry`=191863;
UPDATE `gameobject_template` SET `size`=1.12058 WHERE `entry`=191864;
UPDATE `gameobject_template` SET `size`=1.27746 WHERE `entry`=191868;
UPDATE `gameobject_template` SET `size`=1.12058 WHERE `entry`=191872;
UPDATE `gameobject_template` SET `size`=1.12058 WHERE `entry`=191873;
UPDATE `gameobject_template` SET `size`=1.05 WHERE `entry`=192020;
UPDATE `gameobject_template` SET `size`=1.61881 WHERE `entry`=192064;
UPDATE `gameobject_template` SET `size`=1.90511 WHERE `entry`=192066;
UPDATE `gameobject_template` SET `size`=3.31 WHERE `entry`=192166;
UPDATE `gameobject_template` SET `size`=1.18608 WHERE `entry`=192185;
UPDATE `gameobject_template` SET `size`=2.55919 WHERE `entry`=192263;
UPDATE `gameobject_template` SET `size`=2.59001 WHERE `entry`=192326;
UPDATE `gameobject_template` SET `size`=4.04 WHERE `entry`=192414;
UPDATE `gameobject_template` SET `size`=4.04 WHERE `entry`=192415;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192434;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192435;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192440;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192442;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192450;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192451;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192452;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192453;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192458;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192459;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192460;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192461;
UPDATE `gameobject_template` SET `size`=3.62397 WHERE `entry`=192499;
UPDATE `gameobject_template` SET `size`=3.62397 WHERE `entry`=192500;
UPDATE `gameobject_template` SET `size`=5.25697 WHERE `entry`=192570;
UPDATE `gameobject_template` SET `size`=5.25697 WHERE `entry`=192571;
UPDATE `gameobject_template` SET `size`=1.22662 WHERE `entry`=192572;
UPDATE `gameobject_template` SET `size`=1.22662 WHERE `entry`=192573;
UPDATE `gameobject_template` SET `size`=2.63872 WHERE `entry`=192574;
UPDATE `gameobject_template` SET `size`=1.8 WHERE `entry`=192604;
UPDATE `gameobject_template` SET `size`=1.39 WHERE `entry`=192605;
UPDATE `gameobject_template` SET `size`=1.93 WHERE `entry`=192606;
UPDATE `gameobject_template` SET `size`=1.39 WHERE `entry`=192607;
UPDATE `gameobject_template` SET `size`=1.8 WHERE `entry`=192608;
UPDATE `gameobject_template` SET `size`=1.93 WHERE `entry`=192609;
UPDATE `gameobject_template` SET `size`=2.27888 WHERE `entry`=192618;
UPDATE `gameobject_template` SET `size`=2.27888 WHERE `entry`=192619;
UPDATE `gameobject_template` SET `size`=2.27888 WHERE `entry`=192620;
UPDATE `gameobject_template` SET `size`=2 WHERE `entry`=192810;
UPDATE `gameobject_template` SET `size`=2.56 WHERE `entry`=192812;
UPDATE `gameobject_template` SET `size`=2.76 WHERE `entry`=192813;
UPDATE `gameobject_template` SET `size`=2.34 WHERE `entry`=192814;
UPDATE `gameobject_template` SET `size`=1.74 WHERE `entry`=192815;
UPDATE `gameobject_template` SET `size`=2.52 WHERE `entry`=192835;
UPDATE `gameobject_template` SET `size`=1.11714 WHERE `entry`=192958;
UPDATE `gameobject_template` SET `size`=1.18381 WHERE `entry`=192959;
UPDATE `gameobject_template` SET `size`=1.02728 WHERE `entry`=192960;
UPDATE `gameobject_template` SET `size`=1.19088 WHERE `entry`=192961;
UPDATE `gameobject_template` SET `size`=1.10152 WHERE `entry`=192963;
UPDATE `gameobject_template` SET `size`=1.0753 WHERE `entry`=192965;
UPDATE `gameobject_template` SET `size`=1.02678 WHERE `entry`=192967;
UPDATE `gameobject_template` SET `size`=1.03561 WHERE `entry`=192968;
UPDATE `gameobject_template` SET `size`=1.02032 WHERE `entry`=192969;
UPDATE `gameobject_template` SET `size`=1.12837 WHERE `entry`=192970;
UPDATE `gameobject_template` SET `size`=1.16991 WHERE `entry`=192971;
UPDATE `gameobject_template` SET `size`=1.18394 WHERE `entry`=192972;
UPDATE `gameobject_template` SET `size`=1.17849 WHERE `entry`=192973;
UPDATE `gameobject_template` SET `size`=1.14004 WHERE `entry`=192974;
UPDATE `gameobject_template` SET `size`=1.18108 WHERE `entry`=192975;
UPDATE `gameobject_template` SET `size`=1.02032 WHERE `entry`=192976;
UPDATE `gameobject_template` SET `size`=1.16991 WHERE `entry`=192977;
UPDATE `gameobject_template` SET `size`=1.17849 WHERE `entry`=192978;
UPDATE `gameobject_template` SET `size`=1.18108 WHERE `entry`=192979;
UPDATE `gameobject_template` SET `size`=1.03561 WHERE `entry`=192980;
UPDATE `gameobject_template` SET `size`=1.61 WHERE `entry`=193108;
UPDATE `gameobject_template` SET `size`=2.43 WHERE `entry`=193193;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193222;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193224;
UPDATE `gameobject_template` SET `size`=5.74434 WHERE `entry`=193226;
UPDATE `gameobject_template` SET `size`=3.01015 WHERE `entry`=193227;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193229;
UPDATE `gameobject_template` SET `size`=1.64519 WHERE `entry`=193230;
UPDATE `gameobject_template` SET `size`=1.73211 WHERE `entry`=193231;
UPDATE `gameobject_template` SET `size`=2.54823 WHERE `entry`=193232;
UPDATE `gameobject_template` SET `size`=2.89682 WHERE `entry`=193233;
UPDATE `gameobject_template` SET `size`=2.81427 WHERE `entry`=193234;
UPDATE `gameobject_template` SET `size`=2.78101 WHERE `entry`=193235;
UPDATE `gameobject_template` SET `size`=2.6513 WHERE `entry`=193236;
UPDATE `gameobject_template` SET `size`=2.32416 WHERE `entry`=193237;
UPDATE `gameobject_template` SET `size`=3.53682 WHERE `entry`=193239;
UPDATE `gameobject_template` SET `size`=2.29682 WHERE `entry`=193240;
UPDATE `gameobject_template` SET `size`=3.43 WHERE `entry`=193242;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193243;
UPDATE `gameobject_template` SET `size`=1.86433 WHERE `entry`=193244;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193246;
UPDATE `gameobject_template` SET `size`=7.32683 WHERE `entry`=193247;
UPDATE `gameobject_template` SET `size`=2.48433 WHERE `entry`=193248;
UPDATE `gameobject_template` SET `size`=4.06682 WHERE `entry`=193249;
UPDATE `gameobject_template` SET `size`=3.23682 WHERE `entry`=193251;
UPDATE `gameobject_template` SET `size`=4.20682 WHERE `entry`=193252;
UPDATE `gameobject_template` SET `size`=4.06682 WHERE `entry`=193253;
UPDATE `gameobject_template` SET `size`=2.8666 WHERE `entry`=193255;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=193256;
UPDATE `gameobject_template` SET `size`=1.99788 WHERE `entry`=193257;
UPDATE `gameobject_template` SET `size`=1.24519 WHERE `entry`=193258;
UPDATE `gameobject_template` SET `size`=3.47822 WHERE `entry`=193259;
UPDATE `gameobject_template` SET `size`=3.09682 WHERE `entry`=193260;
UPDATE `gameobject_template` SET `size`=3.01427 WHERE `entry`=193261;
UPDATE `gameobject_template` SET `size`=2.8513 WHERE `entry`=193262;
UPDATE `gameobject_template` SET `size`=1.9683 WHERE `entry`=193263;
UPDATE `gameobject_template` SET `size`=2.94183 WHERE `entry`=193264;
UPDATE `gameobject_template` SET `size`=2.52416 WHERE `entry`=193265;
UPDATE `gameobject_template` SET `size`=3.06466 WHERE `entry`=193266;
UPDATE `gameobject_template` SET `size`=2.8104 WHERE `entry`=193267;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193268;
UPDATE `gameobject_template` SET `size`=3.2813 WHERE `entry`=193269;
UPDATE `gameobject_template` SET `size`=3.1913 WHERE `entry`=193270;
UPDATE `gameobject_template` SET `size`=2.97183 WHERE `entry`=193271;
UPDATE `gameobject_template` SET `size`=2.89629 WHERE `entry`=193273;
UPDATE `gameobject_template` SET `size`=2.89629 WHERE `entry`=193274;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193275;
UPDATE `gameobject_template` SET `size`=5.68682 WHERE `entry`=193279;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193280;
UPDATE `gameobject_template` SET `size`=3.23682 WHERE `entry`=193283;
UPDATE `gameobject_template` SET `size`=4.20682 WHERE `entry`=193284;
UPDATE `gameobject_template` SET `size`=2.19 WHERE `entry`=193285;
UPDATE `gameobject_template` SET `size`=1.99788 WHERE `entry`=193286;
UPDATE `gameobject_template` SET `size`=3.47822 WHERE `entry`=193287;
UPDATE `gameobject_template` SET `size`=2.52416 WHERE `entry`=193288;
UPDATE `gameobject_template` SET `size`=3.2813 WHERE `entry`=193289;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193290;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193292;
UPDATE `gameobject_template` SET `size`=2.38682 WHERE `entry`=193294;
UPDATE `gameobject_template` SET `size`=1.24519 WHERE `entry`=193295;
UPDATE `gameobject_template` SET `size`=3.09682 WHERE `entry`=193296;
UPDATE `gameobject_template` SET `size`=2.8513 WHERE `entry`=193297;
UPDATE `gameobject_template` SET `size`=3.06466 WHERE `entry`=193298;
UPDATE `gameobject_template` SET `size`=2.8104 WHERE `entry`=193299;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193300;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193306;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193310;
UPDATE `gameobject_template` SET `size`=2.39015 WHERE `entry`=193311;
UPDATE `gameobject_template` SET `size`=4.86682 WHERE `entry`=193312;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193314;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193315;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193317;
UPDATE `gameobject_template` SET `size`=5.74434 WHERE `entry`=193319;
UPDATE `gameobject_template` SET `size`=5.31682 WHERE `entry`=193320;
UPDATE `gameobject_template` SET `size`=3.23682 WHERE `entry`=193321;
UPDATE `gameobject_template` SET `size`=4.20682 WHERE `entry`=193322;
UPDATE `gameobject_template` SET `size`=4.06682 WHERE `entry`=193324;
UPDATE `gameobject_template` SET `size`=2.39015 WHERE `entry`=193326;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193327;
UPDATE `gameobject_template` SET `size`=2.38682 WHERE `entry`=193329;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193331;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193332;
UPDATE `gameobject_template` SET `size`=3.23682 WHERE `entry`=193335;
UPDATE `gameobject_template` SET `size`=4.20682 WHERE `entry`=193336;
UPDATE `gameobject_template` SET `size`=3.79682 WHERE `entry`=193338;
UPDATE `gameobject_template` SET `size`=2.39015 WHERE `entry`=193340;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193342;
UPDATE `gameobject_template` SET `size`=4.06682 WHERE `entry`=193344;
UPDATE `gameobject_template` SET `size`=3.78015 WHERE `entry`=193345;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193346;
UPDATE `gameobject_template` SET `size`=3.9713 WHERE `entry`=193347;
UPDATE `gameobject_template` SET `size`=2.8666 WHERE `entry`=193350;
UPDATE `gameobject_template` SET `size`=6.24682 WHERE `entry`=193351;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193352;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193353;
UPDATE `gameobject_template` SET `size`=2.98 WHERE `entry`=193355;
UPDATE `gameobject_template` SET `size`=2.39015 WHERE `entry`=193356;
UPDATE `gameobject_template` SET `size`=4.35433 WHERE `entry`=193357;
UPDATE `gameobject_template` SET `size`=2.91433 WHERE `entry`=193360;
UPDATE `gameobject_template` SET `size`=3.10682 WHERE `entry`=193361;
UPDATE `gameobject_template` SET `size`=4.71433 WHERE `entry`=193363;
UPDATE `gameobject_template` SET `size`=4.13682 WHERE `entry`=193364;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=193365;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=193366;
UPDATE `gameobject_template` SET `size`=2.63 WHERE `entry`=193367;
UPDATE `gameobject_template` SET `size`=4.78 WHERE `entry`=193370;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=193388;
UPDATE `gameobject_template` SET `size`=4.95 WHERE `entry`=193397;
UPDATE `gameobject_template` SET `size`=5.44 WHERE `entry`=193398;
UPDATE `gameobject_template` SET `size`=5.17 WHERE `entry`=193399;
UPDATE `gameobject_template` SET `size`=1.51598 WHERE `entry`=193428;
UPDATE `gameobject_template` SET `size`=1.51598 WHERE `entry`=193430;
UPDATE `gameobject_template` SET `size`=1.51598 WHERE `entry`=193432;
UPDATE `gameobject_template` SET `size`=1.51598 WHERE `entry`=193434;
UPDATE `gameobject_template` SET `size`=1.51598 WHERE `entry`=193436;
UPDATE `gameobject_template` SET `size`=1.51598 WHERE `entry`=193438;
UPDATE `gameobject_template` SET `size`=2.07 WHERE `entry`=193587;
UPDATE `gameobject_template` SET `size`=2.07 WHERE `entry`=193588;
UPDATE `gameobject_template` SET `size`=1.39422 WHERE `entry`=194338;
UPDATE `gameobject_template` SET `size`=1.39422 WHERE `entry`=194339;
UPDATE `gameobject_template` SET `size`=1.6909 WHERE `entry`=194442;
UPDATE `gameobject_template` SET `size`=1.09961 WHERE `entry`=194535;
UPDATE `gameobject_template` SET `size`=1.4937 WHERE `entry`=194557;
UPDATE `gameobject_template` SET `size`=1.20166 WHERE `entry`=194558;
UPDATE `gameobject_template` SET `size`=2.66631 WHERE `entry`=194559;
UPDATE `gameobject_template` SET `size`=3.78432 WHERE `entry`=194560;
UPDATE `gameobject_template` SET `size`=1.51652 WHERE `entry`=194634;
UPDATE `gameobject_template` SET `size`=1.30535 WHERE `entry`=194635;
UPDATE `gameobject_template` SET `size`=1.06775 WHERE `entry`=194636;
UPDATE `gameobject_template` SET `size`=8.69541 WHERE `entry`=194739;
UPDATE `gameobject_template` SET `size`=1.87109 WHERE `entry`=194834;
UPDATE `gameobject_template` SET `size`=1.8457 WHERE `entry`=194835;
UPDATE `gameobject_template` SET `size`=1.31152 WHERE `entry`=194836;
UPDATE `gameobject_template` SET `size`=1.22363 WHERE `entry`=194837;
UPDATE `gameobject_template` SET `size`=1.85 WHERE `entry`=195457;
UPDATE `gameobject_template` SET `size`=1.85 WHERE `entry`=195458;
UPDATE `gameobject_template` SET `size`=1.85 WHERE `entry`=195459;
UPDATE `gameobject_template` SET `size`=2.09 WHERE `entry`=195572;
UPDATE `gameobject_template` SET `size`=1.03887 WHERE `entry`=195573;
UPDATE `gameobject_template` SET `size`=2.09 WHERE `entry`=195574;
UPDATE `gameobject_template` SET `size`=1.93361 WHERE `entry`=201849;
UPDATE `gameobject_template` SET `size`=1.93361 WHERE `entry`=201850;
UPDATE `gameobject_template` SET `size`=3.44467 WHERE `entry`=202265;
UPDATE `gameobject_template` SET `size`=3.44467 WHERE `entry`=202266;
UPDATE `gameobject_template` SET `size`=1.41383 WHERE `entry`=2007;
UPDATE `gameobject_template` SET `size`=2.49 WHERE `entry`=19549;
UPDATE `gameobject_template` SET `size`=1.72 WHERE `entry`=20985;
UPDATE `gameobject_template` SET `size`=1.16083 WHERE `entry`=31407;
UPDATE `gameobject_template` SET `size`=1.00952 WHERE `entry`=48518;
UPDATE `gameobject_template` SET `size`=1.11441 WHERE `entry`=48537;
UPDATE `gameobject_template` SET `size`=1.11441 WHERE `entry`=48552;
UPDATE `gameobject_template` SET `size`=1.00952 WHERE `entry`=48554;
UPDATE `gameobject_template` SET `size`=1.00952 WHERE `entry`=48555;
UPDATE `gameobject_template` SET `size`=1.12787 WHERE `entry`=55616;
UPDATE `gameobject_template` SET `size`=3.91 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=178670;
UPDATE `gameobject_template` SET `size`=1.28724 WHERE `entry`=180056;
UPDATE `gameobject_template` SET `size`=1.08978 WHERE `entry`=181711;
UPDATE `gameobject_template` SET `size`=1.08978 WHERE `entry`=181712;
UPDATE `gameobject_template` SET `size`=1.24332 WHERE `entry`=181888;
UPDATE `gameobject_template` SET `size`=1.9 WHERE `entry`=181985;
UPDATE `gameobject_template` SET `size`=1.14573 WHERE `entry`=182014;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=182994;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183008;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183009;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183010;
UPDATE `gameobject_template` SET `size`=1 WHERE `entry`=183031;
UPDATE `gameobject_template` SET `size`=7.70999 WHERE `entry`=185056;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185076;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185077;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185078;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185085;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185086;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185087;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185088;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185089;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185090;
UPDATE `gameobject_template` SET `size`=2.6708 WHERE `entry`=185096;
UPDATE `gameobject_template` SET `size`=2.9908 WHERE `entry`=185098;
UPDATE `gameobject_template` SET `size`=1.51023 WHERE `entry`=187186;
UPDATE `gameobject_template` SET `size`=1.23098 WHERE `entry`=187189;
UPDATE `gameobject_template` SET `size`=1.15435 WHERE `entry`=187244;
UPDATE `gameobject_template` SET `size`=1.16952 WHERE `entry`=187245;
UPDATE `gameobject_template` SET `size`=1.11054 WHERE `entry`=187248;
UPDATE `gameobject_template` SET `size`=1.28275 WHERE `entry`=187250;
UPDATE `gameobject_template` SET `size`=1.13578 WHERE `entry`=187449;
UPDATE `gameobject_template` SET `size`=1.12 WHERE `entry`=190123;
UPDATE `gameobject_template` SET `size`=1.12 WHERE `entry`=190125;
UPDATE `gameobject_template` SET `size`=2.01 WHERE `entry`=190802;
UPDATE `gameobject_template` SET `size`=2.59 WHERE `entry`=190894;
UPDATE `gameobject_template` SET `size`=2.59 WHERE `entry`=190895;
UPDATE `gameobject_template` SET `size`=2.59 WHERE `entry`=190896;
UPDATE `gameobject_template` SET `size`=2.59 WHERE `entry`=190912;
UPDATE `gameobject_template` SET `size`=2.59 WHERE `entry`=190922;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191070;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191072;
UPDATE `gameobject_template` SET `size`=1.31846 WHERE `entry`=191073;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191075;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191079;
UPDATE `gameobject_template` SET `size`=1.68222 WHERE `entry`=191080;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191081;
UPDATE `gameobject_template` SET `size`=1.70373 WHERE `entry`=191082;
UPDATE `gameobject_template` SET `size`=2.16872 WHERE `entry`=191626;
UPDATE `gameobject_template` SET `size`=2.27888 WHERE `entry`=192619;
UPDATE `gameobject_template` SET `size`=1.78059 WHERE `entry`=181477;
UPDATE `gameobject_template` SET `size`=1.78059 WHERE `entry`=181478;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193710;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193711;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193727;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193729;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193742;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193743;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193745;
UPDATE `gameobject_template` SET `size`=1.88 WHERE `entry`=193746;
UPDATE `gameobject_template` SET `size`=10 WHERE `entry`=193795;
UPDATE `gameobject_template` SET `size`=10.04 WHERE `entry`=193796;
UPDATE `gameobject_template` SET `size`=3 WHERE `entry`=105168;
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=137167;
UPDATE `gameobject_template` SET `size`=3.8 WHERE `entry`=192451;
UPDATE `gameobject_template` SET `displayId`=8627 WHERE `entry`=194312;
UPDATE `gameobject_template` SET `displayId`=327 WHERE `entry`=176110;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=1,`data13`=0,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=2847;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=2884;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=1,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=150081;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=1,`data13`=0,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=153468;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175331;
UPDATE `gameobject_template` SET `data2`=1,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177747;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180346;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180671;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=1,`data12`=1,`data13`=1,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194312;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=1,`data12`=0,`data13`=1,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194324;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=1,`data12`=0,`data13`=1,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194789;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=11713;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=1,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=150081;
UPDATE `gameobject_template` SET `data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=164690;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175331;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180346;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180373;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=1,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181083;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=182063;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180373;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `data2`=2,`data3`=4,`data4`=1628,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180753;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=1,`data12`=1,`data13`=1,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=193426;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=331;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=333;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=334;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=11713;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=21145;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=21146;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=21147;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=21148;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=1,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=150081;
UPDATE `gameobject_template` SET `data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=164690;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175331;
UPDATE `gameobject_template` SET `data2`=1,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177747;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177844;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180346;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180373;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `data2`=2,`data3`=4,`data4`=1628,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180753;
UPDATE `gameobject_template` SET `data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=182063;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=185527,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185541;
UPDATE `gameobject_template` SET `data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186748;
UPDATE `gameobject_template` SET `data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186750;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=1,`data13`=0,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190552;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=12758,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=191179;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=1,`data12`=1,`data13`=1,`data14`=0,`data15`=1,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194821;
UPDATE `gameobject_template` SET `data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=202083;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1922;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1923;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1926;
UPDATE `gameobject_template` SET `data0`=4,`data1`=20,`data2`=2066,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=61929;
UPDATE `gameobject_template` SET `data0`=43,`data1`=2314,`data2`=5,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=142127;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148998;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175630;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=2,`data3`=17160,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=176165;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=1000,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=176166;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177669;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177670;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177671;
UPDATE `gameobject_template` SET `data0`=0,`data1`=60,`data2`=3,`data3`=19237,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177672;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `data0`=95,`data1`=0,`data2`=0,`data3`=5249,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179512;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179664;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179665;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179667;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179911;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180207;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180209;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180212;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180249;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180250;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180401;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180402;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=3000,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180404;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2066,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180444;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=6561,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180453;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180672;
UPDATE `gameobject_template` SET `data0`=13,`data1`=60,`data2`=5,`data3`=34096,`data4`=1,`data5`=0,`data6`=0,`data7`=4,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=183449;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1730,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185519;
UPDATE `gameobject_template` SET `data0`=0,`data1`=60,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=1000,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185520;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1731,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185522;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `data0`=1737,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=42518,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=10,`data3`=43450,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=10,`data2`=186471,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=187371;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=187771;
UPDATE `gameobject_template` SET `data0`=43,`data1`=8528,`data2`=0,`data3`=9395,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=187929;
UPDATE `gameobject_template` SET `data0`=43,`data1`=8544,`data2`=0,`data3`=9380,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=187950;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=3,`data3`=9269,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188148;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=3,`data3`=9271,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188149;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=3,`data3`=9272,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188150;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=188509,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8940,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8941,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `data0`=0,`data1`=13007,`data2`=0,`data3`=1000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=56537,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=192262;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=192496;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194338;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194339;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194360;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194361;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194362;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194363;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194364;
UPDATE `gameobject_template` SET `data0`=0,`data1`=10,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194462;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=369;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1922;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1923;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1926;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=38028;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=38030;
UPDATE `gameobject_template` SET `data0`=4,`data1`=20,`data2`=2066,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=61929;
UPDATE `gameobject_template` SET `data0`=259,`data1`=0,`data2`=4059,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=15366,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=164882;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175630;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175765;
UPDATE `gameobject_template` SET `data0`=1239,`data1`=5581,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177368;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178443;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `data0`=10,`data1`=21648,`data2`=11206,`data3`=0,`data4`=1,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178670;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1479,`data2`=0,`data3`=180102,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=1,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179286;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179945;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180207;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180209;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180212;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180324;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180328;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180329;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180330;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180332;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180333;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180334;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181045;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186175;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `data0`=1737,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=42518,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=10,`data3`=43450,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=10,`data2`=186471,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186683;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=188509,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8940,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8941,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190523;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194361;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194364;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177644;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179664;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180324;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180328;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180329;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180330;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180332;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180333;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180334;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `data0`=1737,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=42518,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=10,`data3`=43450,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=10,`data2`=186471,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186763;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=187371;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=9454,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=1,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188498;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=188509,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8940,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8941,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190367;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=3000,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190368;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190386;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1730;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1922;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1923;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=1926;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=2563;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=2872;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=20737;
UPDATE `gameobject_template` SET `data0`=93,`data1`=655,`data2`=1,`data3`=6030,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=20805;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=20917;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=55535;
UPDATE `gameobject_template` SET `data0`=4,`data1`=20,`data2`=2066,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=61929;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=92252;
UPDATE `gameobject_template` SET `data0`=103,`data1`=10,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=92388;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=102413;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=102988;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=103813;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=105168;
UPDATE `gameobject_template` SET `data0`=95,`data1`=0,`data2`=0,`data3`=9439,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=109515;
UPDATE `gameobject_template` SET `data0`=0,`data1`=10,`data2`=109515,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=111148;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=40,`data3`=10253,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=130358;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=137167;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=146082;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=146083;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=147136;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148672;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148673;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148676;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148687;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148688;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148689;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=148998;
UPDATE `gameobject_template` SET `data0`=259,`data1`=0,`data2`=4197,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=15342,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174621;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174883;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174884;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174889;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174890;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174892;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174893;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174894;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174895;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174898;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174899;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174901;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174902;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174903;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=174909;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175630;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=175644;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=18110,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=1,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=176110;
UPDATE `gameobject_template` SET `data0`=920,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=176306;
UPDATE `gameobject_template` SET `data0`=883,`data1`=10,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177276;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177304;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177644;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177669;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177670;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177671;
UPDATE `gameobject_template` SET `data0`=0,`data1`=60,`data2`=3,`data3`=19237,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=177672;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178443;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1479,`data2`=0,`data3`=180102,`data4`=1,`data5`=0,`data6`=0,`data7`=0,`data8`=1,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179286;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179911;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=179945;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180207;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180209;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180210;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180211;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180212;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180213;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180214;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180324;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180328;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180329;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180330;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180332;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180333;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180334;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=3000,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180404;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=6561,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180453;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=5,`data7`=0,`data8`=0,`data9`=0,`data10`=24832,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180515;
UPDATE `gameobject_template` SET `data0`=1,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180606;
UPDATE `gameobject_template` SET `data0`=1,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180607;
UPDATE `gameobject_template` SET `data0`=1,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180608;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180651;
UPDATE `gameobject_template` SET `data0`=0,`data1`=7091,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180652;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180653;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180857;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=180864;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181488;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181489;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181755;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181852;
UPDATE `gameobject_template` SET `data0`=99,`data1`=9683,`data2`=11027,`data3`=3000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181964;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=181965;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=182019;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=182020;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=182021;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=182022;
UPDATE `gameobject_template` SET `data0`=35741,`data1`=0,`data2`=1,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=184604;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185041;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185046;
UPDATE `gameobject_template` SET `data0`=4,`data1`=10,`data2`=2061,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185047;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185475;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185476;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185491;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185492;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185493;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185494;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185495;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185503;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185504;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185518;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185527;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=185581;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `data0`=1737,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=42518,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186250;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `data0`=1733,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=41931,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=10,`data3`=43450,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=1,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `data0`=0,`data1`=10,`data2`=186471,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186683;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `data0`=1,`data1`=95,`data2`=0,`data3`=0,`data4`=0,`data5`=1,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=188509,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8940,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `data0`=57,`data1`=8941,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `data0`=0,`data1`=1,`data2`=0,`data3`=1,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=190523;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=191125;
UPDATE `gameobject_template` SET `data0`=12,`data1`=0,`data2`=5,`data3`=53074,`data4`=1,`data5`=0,`data6`=0,`data7`=2,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=191145;
UPDATE `gameobject_template` SET `data0`=12,`data1`=0,`data2`=5,`data3`=53077,`data4`=1,`data5`=0,`data6`=0,`data7`=2,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=191146;
UPDATE `gameobject_template` SET `data0`=12,`data1`=0,`data2`=5,`data3`=53076,`data4`=1,`data5`=0,`data6`=0,`data7`=2,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=191147;
UPDATE `gameobject_template` SET `data0`=0,`data1`=13007,`data2`=0,`data3`=1000,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=56537,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=192262;
UPDATE `gameobject_template` SET `data0`=61051,`data1`=25,`data2`=1,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=193975;
UPDATE `gameobject_template` SET `data0`=1,`data1`=1,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194361;
UPDATE `gameobject_template` SET `data0`=1635,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=63524,`data11`=0,`data12`=0,`data13`=1,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194519;
UPDATE `gameobject_template` SET `data0`=1635,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=63659,`data11`=0,`data12`=0,`data13`=1,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194543;
UPDATE `gameobject_template` SET `data0`=579,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=194628;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `data0`=0,`data1`=0,`data2`=0,`data3`=0,`data4`=0,`data5`=0,`data6`=0,`data7`=0,`data8`=0,`data9`=0,`data10`=0,`data11`=0,`data12`=0,`data13`=0,`data14`=0,`data15`=0,`data16`=0,`data17`=0,`data18`=0,`data19`=0,`data20`=0,`data21`=0,`data22`=0,`data23`=0 WHERE `entry`=201294;
DELETE FROM `creature_questrelation` WHERE `quest` = 4264;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 4264;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 4264;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 4264;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 4264;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (9023, 4264);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=9023;
UPDATE `item_template` SET `startquest` = 0 WHERE `entry` = 11446;
DELETE FROM `creature_loot_template` WHERE (`item`=11446);
UPDATE `item_template` SET `BagFamily` = 8 WHERE `entry` = 15754;
DELETE FROM `item_loot_template` WHERE (`entry`=6715);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(6715, 30745, 0, 1, 1, 1),
(6715, 23774, 0, 1, 1, 1),
(6715, 23775, 0, 1, 1, 1);
UPDATE `item_template` SET `Flags`=65536 WHERE `entry`=33797;
UPDATE `item_template` SET `Flags`=0 WHERE `entry`=38587;
UPDATE `item_template` SET `Flags`=4 WHERE `entry`=6715;
UPDATE `item_template` SET `Flags`=4 WHERE `entry`=13247;
UPDATE `item_template` SET `Flags`=98368 WHERE `entry`=18488;
UPDATE `item_template` SET `Flags`=4096 WHERE `entry`=19105;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22120;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22121;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22123;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22140;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22141;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22144;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22173;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22174;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22176;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22289;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22290;
UPDATE `item_template` SET `Flags`=66560 WHERE `entry`=22291;
UPDATE `item_template` SET `Flags`=64 WHERE `entry`=22737;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=23461;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=28833;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=28872;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=28873;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=28917;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=28942;
UPDATE `item_template` SET `Flags`=524288 WHERE `entry`=31921;
UPDATE `item_template` SET `Flags`=524288 WHERE `entry`=31923;
UPDATE `item_template` SET `Flags`=65536 WHERE `entry`=33797;
UPDATE `item_template` SET `Flags`=80 WHERE `entry`=34221;
UPDATE `item_template` SET `Flags`=0 WHERE `entry`=38587;
UPDATE `item_template` SET `Flags`=36864 WHERE `entry`=42495;
UPDATE `item_template` SET `Flags`=65536 WHERE `entry`=33797;
UPDATE `item_template` SET `Flags`=0 WHERE `entry`=38587;
UPDATE `item_template` SET `Flags`=65536 WHERE `entry`=33797;
UPDATE `item_template` SET `Flags`=0 WHERE `entry`=38587;
UPDATE `item_template` SET `ammo_type`=2 WHERE `entry`=42495;
UPDATE `item_template` SET `ItemLevel`=60 WHERE `entry`=35225;
UPDATE `item_template` SET `ItemLevel`=40 WHERE `entry`=38576;
UPDATE `item_template` SET `RequiredLevel`=60 WHERE `entry`=35225;
UPDATE `item_template` SET `RequiredLevel`=40 WHERE `entry`=38576;
UPDATE `item_template` SET `RequiredSkill`=356 WHERE `entry`=7996;
UPDATE `item_template` SET `RequiredSkillRank`=1 WHERE `entry`=7996;
UPDATE `item_template` SET `BuyPrice`=184407 WHERE `entry`=11743;
UPDATE `item_template` SET `BuyPrice`=153096 WHERE `entry`=13175;
UPDATE `item_template` SET `BuyPrice`=732658 WHERE `entry`=13262;
UPDATE `item_template` SET `BuyPrice`=0 WHERE `entry`=19105;
UPDATE `item_template` SET `BuyPrice`=112901 WHERE `entry`=19111;
UPDATE `item_template` SET `BuyPrice`=52538 WHERE `entry`=23129;
UPDATE `item_template` SET `BuyPrice`=100000 WHERE `entry`=38576;
UPDATE `item_template` SET `SellPrice`=36881 WHERE `entry`=11743;
UPDATE `item_template` SET `SellPrice`=146531 WHERE `entry`=13262;
UPDATE `item_template` SET `SellPrice`=0 WHERE `entry`=19105;
UPDATE `item_template` SET `SellPrice`=22580 WHERE `entry`=19111;
UPDATE `item_template` SET `SellPrice`=10507 WHERE `entry`=23129;
UPDATE `item_template` SET `SellPrice`=0 WHERE `entry`=23461;
UPDATE `item_template` SET `maxcount`=0 WHERE `entry`=56806;
UPDATE `item_template` SET `AllowableClass`=-1 WHERE `entry`=13906;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16317;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16318;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16320;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16327;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16329;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16346;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16348;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16349;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16352;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16353;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16354;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16355;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16356;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16359;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16360;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16362;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16372;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16376;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=16386;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22120;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22121;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22123;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22140;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22141;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22144;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22162;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22173;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22174;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22176;
UPDATE `item_template` SET `AllowableClass`=31488 WHERE `entry`=22180;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22289;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22290;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22291;
UPDATE `item_template` SET `AllowableClass`=32767 WHERE `entry`=22737;
UPDATE `item_template` SET `AllowableClass`=262143 WHERE `entry`=28917;
UPDATE `item_template` SET `AllowableClass`=262143 WHERE `entry`=28942;
UPDATE `item_template` SET `AllowableClass`=262143 WHERE `entry`=38576;
UPDATE `item_template` SET `AllowableRace`=32767 WHERE `entry`=28833;
UPDATE `item_template` SET `AllowableRace`=32767 WHERE `entry`=28872;
UPDATE `item_template` SET `AllowableRace`=32767 WHERE `entry`=28873;
UPDATE `item_template` SET `AllowableRace`=32767 WHERE `entry`=28917;
UPDATE `item_template` SET `AllowableRace`=32767 WHERE `entry`=28942;
UPDATE `item_template` SET `RequiredDisenchantSkill`=150 WHERE `entry`=9380;
UPDATE `item_template` SET `DisenchantID` = 36 WHERE `entry` = 9380;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44100;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44102;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48718;
UPDATE `item_template` SET `MaxDurability`=35 WHERE `entry`=7996;
UPDATE `item_template` SET `MaxDurability`=90 WHERE `entry`=9380;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42951;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42943;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42944;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42945;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42946;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42947;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42948;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42949;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42950;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42951;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42952;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42984;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42985;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44091;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44092;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44093;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44094;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44095;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44096;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44099;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44100;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44101;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44102;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44103;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44105;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44107;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48677;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48683;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48685;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48687;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48689;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48691;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48716;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48718;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44100;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42943;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42944;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42945;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42946;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42947;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42948;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42949;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42950;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42951;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42952;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42984;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=42985;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44091;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44092;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44093;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44094;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44095;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44096;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44099;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44100;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44101;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44102;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44103;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44105;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44107;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48677;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48683;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48685;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48687;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48689;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48691;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48716;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=48718;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44100;
UPDATE `item_template` SET `MaxDurability`=0 WHERE `entry`=44105;
UPDATE `item_template` SET `armor`=26 WHERE `entry`=7996;
UPDATE `item_template` SET `dmg_min1`=39.89 WHERE `entry`=25306;
UPDATE `item_template` SET `dmg_min1`=39.89 WHERE `entry`=25320;
UPDATE `item_template` SET `dmg_min1`=35.46 WHERE `entry`=27512;
UPDATE `item_template` SET `dmg_min1`=35.46 WHERE `entry`=28216;
UPDATE `item_template` SET `dmg_min1`=35.46 WHERE `entry`=28257;
UPDATE `item_template` SET `dmg_min1`=35.46 WHERE `entry`=29185;
UPDATE `item_template` SET `dmg_min1`=21.46 WHERE `entry`=30095;
UPDATE `item_template` SET `dmg_min1`=35.46 WHERE `entry`=31304;
UPDATE `item_template` SET `dmg_min1`=44.08 WHERE `entry`=31758;
UPDATE `item_template` SET `dmg_min1`=86.4 WHERE `entry`=34987;
UPDATE `item_template` SET `dmg_min1`=43.04 WHERE `entry`=36675;
UPDATE `item_template` SET `dmg_min1`=43.68 WHERE `entry`=36676;
UPDATE `item_template` SET `dmg_min1`=62.4 WHERE `entry`=39143;
UPDATE `item_template` SET `dmg_min1`=50.06 WHERE `entry`=43917;
UPDATE `item_template` SET `dmg_min1`=35 WHERE `entry`=11743;
UPDATE `item_template` SET `dmg_min1`=40 WHERE `entry`=13175;
UPDATE `item_template` SET `dmg_min1`=67 WHERE `entry`=13248;
UPDATE `item_template` SET `dmg_min1`=62.4 WHERE `entry`=39143;
UPDATE `item_template` SET `dmg_min1`=72.42 WHERE `entry`=43897;
UPDATE `item_template` SET `dmg_min1`=63.4 WHERE `entry`=21466;
UPDATE `item_template` SET `dmg_max1`=80.5 WHERE `entry`=25774;
UPDATE `item_template` SET `dmg_max1`=66 WHERE `entry`=11743;
UPDATE `item_template` SET `dmg_max1`=76 WHERE `entry`=13175;
UPDATE `item_template` SET `dmg_max1`=125 WHERE `entry`=13248;
UPDATE `item_template` SET `Duration`=240 WHERE `entry`=33797;
UPDATE `item_template` SET `Duration`=590400 WHERE `entry`=39878;
UPDATE `item_template` SET `Duration`=1200 WHERE `entry`=18488;
UPDATE `item_template` SET `Duration`=590400 WHERE `entry`=44717;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22120;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22121;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22123;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22140;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22141;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22144;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22173;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22174;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22176;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22289;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22290;
UPDATE `item_template` SET `Duration`=604800 WHERE `entry`=22291;
UPDATE `item_template` SET `stat_type1`=32 WHERE `entry`=11743;
UPDATE `item_template` SET `stat_value1`=8 WHERE `entry`=11743;
UPDATE `item_template` SET `stat_type3`=32 WHERE `entry`=28833;

# Forum_FIX
DELETE FROM `quest_start_scripts` WHERE `id`=11073;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11073, 0, 10, 21838, 900000, '0', -3787.68, 3508.25, 287.015, 0.0517542);
UPDATE `quest_template` SET `StartScript` = 11073 WHERE `entry` = 11073;
DELETE FROM `quest_start_scripts` WHERE `id`=13664;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(13664, 0, 10, 33785, 900000, '0', 8428.58, 949.49, 544.674, 1.37907);
UPDATE `quest_template` SET `StartScript` = 13664 WHERE `entry` = 13664;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 38607;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83 WHERE `entry` = 38610;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 39055;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 37734;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 37982;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80 WHERE `entry` = 36965;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 37036;
UPDATE `gameobject` SET `state` = 0 WHERE `guid` = 1804;

# NeatElves
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =14483;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =24792;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =24793;
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =11135;
UPDATE `quest_template` SET `RequiredRaces` = '690' WHERE `entry` =11220;
DELETE FROM `creature_questrelation` WHERE `id` = 23973 AND `quest` = 11405;
DELETE FROM `creature_involvedrelation` WHERE `id` = 23973 AND `quest` = 11405;
DELETE FROM `creature_questrelation` WHERE `id` = 23973 AND `quest` = 11401;
DELETE FROM `creature_involvedrelation` WHERE `id` = 23973 AND `quest` = 11401;
UPDATE `quest_template` SET `PrevQuestId` = '11392' WHERE `entry` =11404;
UPDATE `quest_template` SET `PrevQuestId` = '11392' WHERE `entry` =11405;
UPDATE `quest_template` SET `PrevQuestId` = '11392' WHERE `entry` =11401;
DELETE FROM `quest_end_scripts` WHERE `id` = 11404;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(11404, 0, 10, 23682, 1200000, 0, 1799.04, 1377.62, 18.8875, 4.65);
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('37527', '24594'), ('37527', '24596');
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('36642', '24800');
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('30116', '24800');
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('36642', '24798');
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('30116', '24798');
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('36642', '24596');
UPDATE `quest_template` SET `PrevQuestId` = '24563', `ExclusiveGroup` = '24564' WHERE `entry` in (24596,24594);

# darkshines
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` IN (29310,31465);
DELETE FROM `gameobject` WHERE `guid`=1804;

# FIX
UPDATE `creature` SET `spawntimesecs` = 3600 WHERE `guid` = 102488;
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `guid` = 131739;
UPDATE quest_template SET `OfferRewardText`= 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!' WHERE `Title` LIKE '%Candy Bucket%';
REPLACE INTO `exploration_basexp` (`level`, `basexp`) VALUES
(71, 1330),
(72, 1370),
(73, 1410),
(74, 1440),
(75, 1470),
(76, 1510),
(77, 1530),
(78, 1600),
(79, 1630);

# NeatElves
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `id`=8035;
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '100',`groupid` = '0' WHERE `entry` =37586 AND `item` =37583;
UPDATE `gameobject` SET `spawntimesecs` = '-1200' WHERE `id` =186887;
UPDATE `quest_template` SET `CompleteScript` = '12133' WHERE `entry` =12133;
UPDATE `quest_template` SET `CompleteScript` = '12133' WHERE `entry` =12155;
INSERT INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES ('12133', '1', '15', '44242', '0', '0', '0', '0', '0', '0');
DELETE FROM `creature_template_addon` WHERE `entry`=28394; 
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(28394,1, '29266 0 29266 1');
DELETE FROM `creature_template_addon` WHERE `entry`=33775; 
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(33775,1, '29266 0 29266 1');
DELETE FROM `creature_template_addon` WHERE `entry`=33774; 
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(33774,1, '29266 0 29266 1');

# FIX
DELETE FROM `creature_loot_template` WHERE (`entry`=10184) AND (`item`=21108);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (10184, 21108, 100, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=36538) AND (`item`=21108);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (36538, 21108, 100, 0, 1, 1);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 23775;
DELETE FROM `creature` WHERE `id`=3950;
UPDATE `gameobject` SET `animprogress` = 100 WHERE `guid` = 51700;

# conditions
REPLACE INTO `gossip_menu_option` VALUES ('9739', '0', '0', 'Salanar, I must return to the country of shadows', '1', '1', '0', '0', '9739', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9739', '1', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9754', '0', '0', 'Noth, where is Heigan?', '1', '1', '50003', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('9754', '1', '0', 'GOSSIP_OPTION_QUESTGIVER', '2', '2', '0', '0', '0', '0', '0', null);
REPLACE INTO `gossip_menu_option` VALUES ('10210', '2', '1', 'Let me browse your goods.', '3', '128', '0', '0', '0', '0', '0', '');
REPLACE INTO `conditions` VALUES ('15', '9739', '0', '0', '9', '12687', '0', '0', '0', '', null);
# REPLACE INTO `conditions` VALUES ('15', '10210', '2', '0', '17', '60867', '0', '0', '0', '', null);
REPLACE INTO `conditions` VALUES ('15', '10210', '2', '0', '7', '202', '450', '0', '0', '', null);


# FIX
DELETE FROM conditions WHERE SourceTypeOrReferenceId=1 AND SourceEntry=11446;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup=50001;
# DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=3186;


# WDB_Check
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1922;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1923;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1926;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=2847;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=2884;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=61929;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=142127;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148998;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=150081;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=153468;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175630;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=176165;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=176166;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177669;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177670;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177671;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177672;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177747;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179512;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179664;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179665;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179667;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179911;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180207;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180209;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180212;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180249;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180250;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180346;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180401;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180402;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180404;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180444;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180453;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180671;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180672;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=183449;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185519;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185520;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185522;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=187371;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=187771;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=187929;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=187950;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188148;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188149;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188150;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=192262;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=192496;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194312;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194324;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194338;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194339;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194360;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194361;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194362;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194363;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194364;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194462;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194789;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=369;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1922;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1923;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1926;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=11713;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=38028;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=38030;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=61929;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=150081;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=164690;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=164882;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175630;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175765;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177368;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178443;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178670;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179286;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179945;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180207;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180209;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180212;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180324;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180328;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180329;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180330;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180332;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180333;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180334;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180346;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180373;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181045;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181083;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=182063;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186175;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186683;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190523;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194361;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194364;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177644;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179664;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180324;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180328;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180329;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180330;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180332;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180333;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180334;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180373;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180753;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186763;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=187371;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188498;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190367;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190368;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190386;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=193426;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=333;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=334;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1730;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1922;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1923;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=1926;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=2563;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=2872;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=11713;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=20737;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=20805;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=20917;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=21145;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=21146;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=21147;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=21148;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=55535;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=61929;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=92252;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=92388;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=93192;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=102413;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=102988;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=103813;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=105168;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=109515;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=111148;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=130358;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=137167;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=146082;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=146083;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=147136;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148672;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148673;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148676;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148687;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148688;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148689;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=148998;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=150081;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=164690;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174621;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174883;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174884;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174889;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174890;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174892;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174893;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174894;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174895;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174898;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174899;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174901;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174902;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174903;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=174909;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175630;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=175644;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=176110;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=176306;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177276;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177304;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177644;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177669;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177670;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177671;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177672;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177747;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=177844;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178443;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=178666;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179286;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179911;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=179945;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180206;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180207;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180208;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180209;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180210;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180211;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180212;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180213;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180214;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180324;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180326;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180328;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180329;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180330;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180332;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180333;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180334;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180337;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180340;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180341;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180342;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180345;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180346;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180347;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180348;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180349;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180350;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180351;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180352;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180353;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180370;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180371;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180372;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180373;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180374;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180404;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180434;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180453;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180515;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180606;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180607;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180608;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180651;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180652;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180653;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180753;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180857;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=180864;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181488;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181489;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181755;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181852;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181964;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=181965;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=182019;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=182020;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=182021;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=182022;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=182063;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=184604;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185041;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185046;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185047;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185475;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185476;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185491;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185492;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185493;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185494;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185495;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185503;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185504;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185518;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185527;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185541;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=185581;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186173;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186183;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186184;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186185;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186186;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186187;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186189;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186217;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186221;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186229;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186250;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186252;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186331;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186478;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186680;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186681;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186682;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186683;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186685;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186709;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186714;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186717;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186737;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186748;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186750;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186807;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186808;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186809;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=186880;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=188508;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189989;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=189990;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190363;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190523;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=190552;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=191125;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=191145;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=191146;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=191147;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=191179;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=192262;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=193975;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194361;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194519;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194543;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194628;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=194821;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195253;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195254;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195255;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195256;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195257;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195259;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195260;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195263;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195264;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195265;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195266;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=195273;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=201294;
UPDATE `gameobject_template` SET `WDBVerified`=12340 WHERE `entry`=202083;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33023;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33797;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=38587;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=100;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=119;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=5623;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=6715;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=6766;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=7725;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=7809;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=7996;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=8427;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=9380;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=9423;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=9484;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=9602;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=10590;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=11743;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=12588;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=13175;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=13247;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=13248;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=13262;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=13906;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=14480;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=14812;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=15754;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=15777;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=15886;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16171;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16317;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16318;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16320;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16327;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16329;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16346;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16348;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16349;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16352;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16353;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16354;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16355;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16356;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16359;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16360;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16362;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16372;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16376;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16386;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=16999;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=17224;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=17325;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=17782;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=17982;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=18488;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=18566;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=18583;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=18807;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=19105;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=19111;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=19113;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=20680;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=21176;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=21482;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=21513;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=21725;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22120;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22121;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22123;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22140;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22141;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22144;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22162;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22173;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22174;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22176;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22180;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22289;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22290;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22291;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22328;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22472;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=22737;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23129;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23130;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23131;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23141;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23144;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23151;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=23461;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28291;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28596;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28833;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28872;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28873;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28917;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=28942;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=31576;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=31583;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=31921;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=31923;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=32588;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33023;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33797;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=34221;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=35212;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=35216;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=35225;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=37488;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=37489;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=37491;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=37495;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=37498;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=37499;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=38050;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=38576;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=38587;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=42327;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=42495;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=44164;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=45693;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=46544;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=46812;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=49282;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=49284;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=49343;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=56806;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33023;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33797;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=38587;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=49284;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33023;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=33797;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=35216;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=38587;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=45693;
UPDATE `item_template` SET `WDBVerified`=12340 WHERE `entry`=49282;


# Temp_FIX
UPDATE `gossip_scripts` SET `command` = '34' WHERE `command` =19;
UPDATE `gossip_scripts` SET `command` = '17' WHERE `command` =20;
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `npcflag` = `npcflag`|32;
UPDATE `gossip_menu_option` SET `box_text`='Are you sure you wish to purchase a Dual Talent Specialization?' WHERE `option_id` =18;
DELETE FROM `gossip_menu_option` WHERE `option_text`= 'GOSSIP_OPTION_QUESTGIVER' AND `menu_id`>0;
UPDATE creature_template_addon SET path_id=0;

# NPC_FIX
UPDATE
`creature_template_addon`, `creature_template`
SET
`creature_template`.`unit_flags`=IF(`creature_template`.`unit_flags` &  33554432=33554432,570721024,537166592),
`creature_template`.`dynamicflags`=`creature_template`.`dynamicflags` | 32
WHERE
`creature_template`.`entry`=`creature_template_addon`.`entry`
AND `creature_template_addon`.`auras`='29266 0 29266 1';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1732';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '1733';
UPDATE `creature_template` SET `faction_A` = '1802' WHERE `faction_A` = '84';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1732';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '1733';
UPDATE `creature_template` SET `faction_H` = '1802' WHERE `faction_H` = '84';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1735';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '1734';
UPDATE `creature_template` SET `faction_A` = '1801' WHERE `faction_A` = '83';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1735';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '1734';
UPDATE `creature_template` SET `faction_H` = '1801' WHERE `faction_H` = '83';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1735';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '1734';
UPDATE `gameobject_template` SET `faction` = '1801' WHERE `faction` = '83';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1732';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '1733';
UPDATE `gameobject_template` SET `faction` = '1802' WHERE `faction` = '84';
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_1`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_2`;
UPDATE
`creature_template`, `creature_template` AS `copy`
SET
`copy`.`unit_class`=`creature_template`.`unit_class`,
`copy`.`unit_flags`=`creature_template`.`unit_flags`,
`copy`.`npcflag`=`creature_template`.`npcflag`,
`copy`.`dynamicflags`=`creature_template`.`dynamicflags`,
`copy`.`equipment_id`=`creature_template`.`equipment_id`,
`copy`.`faction_A`=`creature_template`.`faction_A`,
`copy`.`faction_H`=`creature_template`.`faction_H`,
`copy`.`speed_run`=`creature_template`.`speed_run`,
`copy`.`speed_walk`=`creature_template`.`speed_walk`,
`copy`.`scale`=`creature_template`.`scale`,
`copy`.`dmgschool`=`creature_template`.`dmgschool`,
`copy`.`mingold`=`creature_template`.`mingold`,
`copy`.`maxgold`=`creature_template`.`maxgold`,
`copy`.`VehicleId`=`creature_template`.`VehicleId`,
`copy`.`mechanic_immune_mask`=`creature_template`.`mechanic_immune_mask`
WHERE
`copy`.`entry`=`creature_template`.`difficulty_entry_3`;

# FINAL_ITEM_FIX
UPDATE `item_template` SET `StatsCount`=1 WHERE `stat_type1`>0 AND `stat_value1`<>0; 
UPDATE `item_template` SET `StatsCount`=2 WHERE `stat_type2`>0 AND `stat_value2`<>0; 
UPDATE `item_template` SET `StatsCount`=3 WHERE `stat_type3`>0 AND `stat_value3`<>0; 
UPDATE `item_template` SET `StatsCount`=4 WHERE `stat_type4`>0 AND `stat_value4`<>0; 
UPDATE `item_template` SET `StatsCount`=5 WHERE `stat_type5`>0 AND `stat_value5`<>0; 
UPDATE `item_template` SET `StatsCount`=6 WHERE `stat_type6`>0 AND `stat_value6`<>0; 
UPDATE `item_template` SET `StatsCount`=7 WHERE `stat_type7`>0 AND `stat_value7`<>0; 
UPDATE `item_template` SET `StatsCount`=8 WHERE `stat_type8`>0 AND `stat_value8`<>0; 
UPDATE `item_template` SET `StatsCount`=9 WHERE `stat_type9`>0 AND `stat_value9`<>0; 
UPDATE `item_template` SET `StatsCount`=10 WHERE `stat_type10`>0 AND `stat_value10`<>0;
UPDATE `item_template` SET `DisenchantID` = 0 WHERE `RequiredDisenchantSkill` = -1;

# Final_FIX
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|4096;
UPDATE quest_template SET SpecialFlags=SpecialFlags|1 WHERE QuestFlags=QuestFlags|32768;
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_linked_respawn` WHERE `linkedGuid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `spawntimesecs` = 25;
UPDATE `creature_template` SET `scale` = 1 WHERE `scale` = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 0;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 3;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 10;
update gameobject_template, gameobject set gameobject.animprogress = 100 where gameobject_template.entry = gameobject.id and gameobject_template.type = 25;
UPDATE `gameobject` SET `state`=1 WHERE `state`=0 AND `id` IN (SELECT entry FROM `gameobject_template` WHERE `type`=3);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
# UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE `spellid_2` = 0 AND `spelltrigger_2` = 6;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `AIName` = 'EventAI' AND `ScriptName` = 'generic_creature';
UPDATE `creature_template` SET npcflag = npcflag|1 WHERE `gossip_menu_id` > 0;

UPDATE
`creature`, `waypoint_data`
SET
`creature`.`spawndist`=0,
`creature`.`MovementType`=2
WHERE
`creature`.`guid`=`waypoint_data`.`id`;

DELETE
`waypoint_data`
FROM
`waypoint_data`
LEFT JOIN
(`creature`)
ON
(`creature`.`guid`=`waypoint_data`.`id`)
WHERE
`creature`.`guid` IS NULL;

ALTER TABLE `waypoint_data` ADD INDEX `temp_action` (`action`);
ALTER TABLE `waypoint_scripts` ADD INDEX `temp_id` (`id`);
DELETE
`waypoint_scripts`
FROM
`waypoint_scripts`
LEFT JOIN
(`waypoint_data`)
ON
(`waypoint_data`.`action`=`waypoint_scripts`.`id`)
WHERE
`waypoint_data`.`action` IS NULL;
ALTER TABLE `waypoint_data` DROP INDEX `temp_action`;
ALTER TABLE `waypoint_scripts` DROP INDEX `temp_id`;

update creature_addon set path_id=0;
UPDATE
`creature_addon`, `waypoint_data`
SET
`creature_addon`.`path_id`=`creature_addon`.`guid`
WHERE
`creature_addon`.`guid`=`waypoint_data`.`id`;

UPDATE version SET `cache_id`= '569';
UPDATE version SET `core_revision`= '10254';
UPDATE version SET `db_version`= 'YTDB_0.13.9_R569_TC_R10254_TDBAI_335.0.1_RuDB_R38.3';
