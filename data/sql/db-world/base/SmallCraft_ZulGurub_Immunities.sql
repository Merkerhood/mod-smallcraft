-- SmallCraft: reduced mechanic immunities for Zul'Gurub encounters, replacing the
-- old boss-script MechanicImmuneMask writes (that field is gone; immunities now live
-- in creature_immunities, referenced by creature_template.CreatureImmunitiesId, which
-- the boss DatabaseScripts point at these rows). Defaults (auto-rows -273/-225) held
-- only mechanics, so no school/dispel/effect/aura immunities are lost.
DELETE FROM `creature_immunities` WHERE `ID` IN (14515, 11348);
INSERT INTO `creature_immunities`
  (`ID`, `SchoolMask`, `DispelTypeMask`, `MechanicsMask`, `Effects`, `Auras`, `ImmuneAoE`, `ImmuneChain`, `Comment`) VALUES
  (14515, 0, 0, 550183697, '', '', 0, 0, 'SmallCraft: High Priestess Arlokk - reduced mechanic immunities; boss script toggles disorient/distract/root/snare/stun/freeze/daze'),
  (11348, 0, 0, 536936977, '', '', 0, 0, 'SmallCraft: Zealot Zath - kiteable, reduced mechanic immunities');
