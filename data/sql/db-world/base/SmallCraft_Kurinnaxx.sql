-- SmallCraft: allow Kurinnaxx (15348) to be stunned, enabling the stun-to-chase mechanic.
-- The boss AI's DatabaseScript points Kurinnaxx's creature_template.CreatureImmunitiesId at 15348.
-- Row 15348 mirrors Kurinnaxx's default immunities (shared auto-row -273, MechanicsMask 0x24CB3F5B
-- = 1234599606) minus MECHANIC_STUN (bit 12, 4096): 1234599606 - 4096 = 1234595510 (0x24CB2F5B).
DELETE FROM `creature_immunities` WHERE `ID` = 15348;
INSERT INTO `creature_immunities`
  (`ID`, `SchoolMask`, `DispelTypeMask`, `MechanicsMask`, `Effects`, `Auras`, `ImmuneAoE`, `ImmuneChain`, `Comment`) VALUES
  (15348, 0, 0, 1234595510, '', '', 0, 0, 'SmallCraft: Kurinnaxx defaults minus STUN (allow stun-to-chase)');
