DELETE FROM `spell_bonus_data` WHERE `entry`=31707;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(31707,0.8333,0,0,0, 'Mage - Water Elemental Waterbolt');
DELETE FROM `spell_script_names`  WHERE `ScriptName` IN ('spell_generic_clone', 'spell_generic_clone_weapon');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(45785, 'spell_generic_clone'),
(49889, 'spell_generic_clone'),
(50218, 'spell_generic_clone'),
(51719, 'spell_generic_clone'),
(57528, 'spell_generic_clone'),
(69828, 'spell_generic_clone'),
(41055, 'spell_generic_clone_weapon'),
(63416, 'spell_generic_clone_weapon'),
(69891, 'spell_generic_clone_weapon'),
(45206, 'spell_generic_clone_weapon'),
(69892, 'spell_generic_clone_weapon'),
(57593, 'spell_generic_clone_weapon');
