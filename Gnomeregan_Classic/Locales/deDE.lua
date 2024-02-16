local L = BigWigs:NewBossLocale("Grubbis Discovery", "deDE")
if not L then return end
if L then
	L.bossName = "Grubbis"
	L.aoe = "AoE Nahkampfschaden"
	L.cloud = "Eine Wolke hat den Boss erreicht"
	L.cone = "\"Frontale\" Kegelattacke" -- "Frontal" Cone, it's a rear cone (he's farting)
	--L.warmup_say_chat_trigger = "Gnomeregan" -- There are still ventilation shafts actively spewing radioactive material throughout Gnomeregan.
	L.interruptable = "Unterbrechbar"
end

L = BigWigs:NewBossLocale("Viscous Fallout Discovery", "deDE")
if L then
	L.bossName = "Verflüssigte Ablagerung"
	--L.desiccated_fallout = "Desiccated Fallout" -- NPC ID 216810
end

L = BigWigs:NewBossLocale("Crowd Pummeler 9-60 Discovery", "deDE")
if L then
	L.bossName = "Meuteverprügler 9-60"
end

L = BigWigs:NewBossLocale("Electrocutioner 6000 Discovery", "deDE")
if L then
	L.bossName = "Elektrokutor 6000"
	L.ready = "|cff20ff20Bereit|r"
end

L = BigWigs:NewBossLocale("Mechanical Menagerie Discovery", "deDE")
if L then
	L.bossName = "Mechanische Menagerie"
	L.attack_buff = "+50% Angriffstempo"
	--L.boss_at_hp = "%s at %d%%" -- BOSS_NAME at 50%

	L[218242] = "|T134153:0:0:0:0:64:64:4:60:4:60|tDrache"
	L[218243] = "|T136071:0:0:0:0:64:64:4:60:4:60|tSchaf"
	L[218244] = "|T133944:0:0:0:0:64:64:4:60:4:60|tEichhörnchen"
	L[218245] = "|T135996:0:0:0:0:64:64:4:60:4:60|tHuhn"
end

L = BigWigs:NewBossLocale("Mekgineer Thermaplugg Discovery", "deDE")
if L then
	L.bossName = "Robogenieur Thermaplugg"
	L.interruptable = "Unterbrechbar"
	L.ready = "|cff20ff20Bereit|r"
	--L.red_button = "Red Button"
end
