DELETE FROM `spell_bonus_data` WHERE `entry` IN ('33110');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('33110','0.8068','0','0','0','Priest - Prayer of Mending Heal Proc');
DROP TABLE IF EXISTS `pool_quest`;
CREATE TABLE `pool_quest` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`),
  KEY `idx_guid` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- Add script name to the Adventurous Dwarf
UPDATE `creature_template` SET `npcflag`=1, `ScriptName`='npc_adventurous_dwarf' WHERE `entry`=28604;
DELETE FROM `script_texts` WHERE `entry` IN (-1571043,-1571042);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(28604,-1571042,'Ouch! Watch where you''re tugging!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'adventurous dwarf SAY_DWARF_OUCH'),
(28604,-1571043,'Glad I could help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'adventurous dwarf SAY_DWARF_HELP');
DELETE FROM `spell_script_names` WHERE `spell_id`=51840 AND `ScriptName`='spell_q12634_despawn_fruit_tosser';
DELETE FROM `spell_script_names` WHERE `spell_id`=49587 AND `ScriptName`='spell_q12459_seeds_of_natures_wrath';
DELETE FROM `spell_script_names` WHERE `spell_id`=19512 AND `ScriptName`='spell_q6124_6129_apply_salve';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(51840,'spell_q12634_despawn_fruit_tosser'),
(49587,'spell_q12459_seeds_of_natures_wrath'),
(19512,'spell_q6124_6129_apply_salve');
ALTER TABLE `quest_poi_points` ADD COLUMN `idx` int(10) unsigned NOT NULL DEFAULT '0' AFTER `id`;
DELETE FROM `spell_script_names` WHERE `spell_id`=24751 AND `ScriptName`='spell_gen_trick_or_treat';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (24751,'spell_gen_trick_or_treat');
DELETE FROM `spell_script_names` WHERE `spell_id`=24750 AND `ScriptName`='spell_gen_trick';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (24750,'spell_gen_trick');
DELETE FROM `spell_script_names` WHERE `spell_id`=-8129 AND `ScriptName`='spell_pri_mana_burn';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-8129,'spell_pri_mana_burn');
DELETE FROM `command` WHERE `name` IN ('ban character','ban playeraccount');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('ban character',3,'Syntax: .ban character $Name $bantime $reason\nBan character and kick player.\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".'),
('ban playeraccount',3,'Syntax: .ban playeraccount $Name $bantime $reason\nBan account and kick player.\n$bantime: negative value leads to permban, otherwise use a timestring like "4d20h3s".');
DELETE FROM `trinity_string` WHERE `entry` IN (1131,1132,1133);
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(1131, 'The following characters match your query:'),
(1132, 'Currently Banned Characters:'),
(1133, '|   Character   |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |');
