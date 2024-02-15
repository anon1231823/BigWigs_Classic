local L = BigWigs:NewBossLocale("Grubbis Discovery", "ptBR")
if not L then return end
if L then
	L.bossName = "Grúdio"
	L.aoe = "Dano corpo a corpo em área"
	L.cloud = "Uma nuvem chegou ao chefe"
	L.cone = "Cone \"frontal\"" -- "Frontal" Cone, it's a rear cone (he's farting)
	--L.warmup_say_chat_trigger = "Gnomeregan" -- There are still ventilation shafts actively spewing radioactive material throughout Gnomeregan.
end

L = BigWigs:NewBossLocale("Viscous Fallout Discovery", "ptBR")
if L then
	L.bossName = "Precipitação Radioativa Viscosa"
	--L.desiccated_fallout = "Desiccated Fallout" -- NPC ID 216810
end

L = BigWigs:NewBossLocale("Crowd Pummeler 9-60 Discovery", "ptBR")
if L then
	L.bossName = "Espanca-gente 9-60"
end

L = BigWigs:NewBossLocale("Electrocutioner 6000 Discovery", "ptBR")
if L then
	L.bossName = "Eletrocutor 6000"
	L.ready = "|cff20ff20Pronto|r"
end

L = BigWigs:NewBossLocale("Mechanical Menagerie Discovery", "ptBR")
if L then
	L.bossName = "Viveiro Mecânico"
	L.attack_buff = "+50% de velocidade de ataque"
	--L.boss_at_hp = "%s at %d%%" -- BOSS_NAME at 50%

	L[218242] = "|T134153:0:0:0:0:64:64:4:60:4:60|tDragão"
	L[218243] = "|T136071:0:0:0:0:64:64:4:60:4:60|tOvelha"
	L[218244] = "|T133944:0:0:0:0:64:64:4:60:4:60|tEsquilo"
	L[218245] = "|T135996:0:0:0:0:64:64:4:60:4:60|tFrango"
end

L = BigWigs:NewBossLocale("Mekgineer Thermaplugg Discovery", "ptBR")
if L then
	L.bossName = "Mecangenheiro Termaplugue"
	L.interruptable = "Interrompível"
	L.ready = "|cff20ff20Pronto|r"
end
