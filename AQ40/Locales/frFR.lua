local L = BigWigs:NewBossLocale("Viscidus", "frFR")
if not L then return end
if L then
	--L.freeze = "Freezing States"
	--L.freeze_desc = "Warn for the different frozen states."
	L.freeze_trigger1 = "%s commence à ralentir !"

	L.freeze_trigger2 = "%s est gelé !"
	L.freeze_trigger3 = "%s est congelé !"
	L.freeze_trigger4 = "%s commence à se briser !"
	L.freeze_trigger5 = "%s semble prêt à se briser !"

	--L.freeze_warn1 = "First freeze phase!"
	--L.freeze_warn2 = "Second freeze phase!"
	--L.freeze_warn3 = "Viscidus is frozen!"
	--L.freeze_warn4 = "Cracking up - keep going!"
	--L.freeze_warn5 = "Cracking up - almost there!"
	--L.freeze_warn_melee = "%d melee attacks - %d more to go"
	--L.freeze_warn_frost = "%d frost attacks - %d more to go"
end

L = BigWigs:NewBossLocale("Ouro", "frFR")
if L then
	--L.engage_message = "Ouro engaged! Possible Submerge in 90sec!"
	--L.possible_submerge_bar = "Possible submerge"

	--L.emerge_message = "Ouro has emerged"
	--L.emerge_bar = "Emerge"

	--L.submerge_message = "Ouro has submerged"
	--L.submerge_bar = "Submerge"

	--L.scarab = "Scarab Despawn"
	--L.scarab_desc = "Warn for Scarab Despawn."
	--L.scarab_bar = "Scarabs despawn"
end

L = BigWigs:NewBossLocale("C'Thun", "frFR")
if L then
	--L.claw_tentacle = "Claw Tentacle"
	--L.claw_tentacle_desc = "Timers for the claw tentacle."

	--L.giant_claw_tentacle = "Giant Claw"
	--L.giant_claw_tentacle_desc = "Timers for the giant claw tentacle."

	--L.eye_tentacles = "Eye Tentacles"
	--L.eye_tentacles_desc = "Timers for the 8 eye tentacles."

	--L.giant_eye_tentacle = "Giant Eye"
	--L.giant_eye_tentacle_desc = "Timers for the giant eye tentacle."

	--L.weakened_desc = "Warn for weakened state."
	L.weakenedtrigger = "%s est affaibli"

	--L.dark_glare_message = "%s: %s (Group %s)" -- Dark Glare: PLAYERNAME (Group 1)
end

L = BigWigs:NewBossLocale("Ahn'Qiraj Trash", "frFR")
if L then
	L.sentinel = "Sentinelle Anubisath" -- NPC 15264
	L.brainwasher = "Lave-cerveaux qiraji" -- NPC 15247
	L.defender = "Défenseur Anubisath" -- NPC 15277
	L.crawler = "Rampant de la ruche vekniss" -- NPC 15240

	--L.target_buffs = "Target Buff Warnings"
	--L.target_buffs_desc = "When your target is an Anubisath Sentinel, show a warning for what buff it has."
	--L.target_buffs_message = "Target Buffs: %s"
	L.detect_magic_missing_message = "Détection de la magie is missing from your target"
	L.detect_magic_warning = "A Mage must cast \124cff71d5ff\124Hspell:2855:0\124h[Détection de la magie]\124h\124r on your target for buff warnings to work."
end
