--------------------------------------------------------------------------------
-- Module declaration
--

local mod = BigWigs:NewBoss("Razorgore the Untamed", 469, 1529)
if not mod then return end
mod:RegisterEnableMob(12435, 12557) -- Razorgore, Grethok the Controller
mod:SetEncounterID(610)

--------------------------------------------------------------------------------
-- Locals
--

local eggs = 0

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale()
if L then
	L.start_trigger = "Intruders have breached"
	L.start_message = "Razorgore engaged! Mobs in 45sec!"
	L.start_soon = "Mob Spawn in 5sec!"
	L.start_mob = "Mob Spawn"

	L.eggs = "Count Eggs"
	L.eggs_desc = "Count the destroyed eggs."
	L.eggs_icon = "inv_egg_03" -- inv_egg_03 / Lay Egg / icon 132834
	L.eggs_message = "%d/30 eggs destroyed!"

	L.phase2_message = "All eggs destroyed, Razorgore loose!"
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		14515, -- Dominate Mind
		{23023, "ICON"}, -- Conflagration
		"eggs",
		"stages",
	}
end

function mod:OnBossEnable()
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	self:Log("SPELL_AURA_APPLIED", "DominateMind", 14515)
	self:Log("SPELL_AURA_APPLIED", "Conflagration", 23023)
	self:Log("SPELL_AURA_REMOVED", "ConflagrationOver", 23023)
	self:Log("SPELL_CAST_SUCCESS", "Phase2", 23040)
	self:Log("SPELL_CAST_SUCCESS", "DestroyEgg", 19873)
end

function mod:OnEngage()
	self:Message("stages", "orange", L.start_message, false)
	self:Bar("stages", 45, L.start_mob, "Spell_Holy_PrayerOfHealing")
	self:DelayedMessage("stages", 40, "red", L.start_soon)
	eggs = 0
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:CHAT_MSG_MONSTER_YELL(_, msg)
	if msg:find(L.start_trigger, nil, true) then
		self:Engage()
	end
end

function mod:DominateMind(args)
	self:TargetMessage(14515, "red", args.destName)
	if self:Me(args.destGUID) then
		self:PlaySound(14515, "alert")
	end
end

function mod:DestroyEgg()
	eggs = eggs + 1
	if eggs < 30 then
		self:Message("eggs", "green", L.eggs_message:format(eggs), L.eggs_icon)
	end
end

function mod:Phase2()
	self:Message("stages", "red", L.phase2_message, false)
end

function mod:Conflagration(args)
	self:TargetMessage(23023, "orange", args.destName)
	if self:Me(args.destGUID) then
		self:PlaySound(23023, "info")
	end
	self:TargetBar(23023, 10, args.destName)
	self:PrimaryIcon(23023, args.destName)
end

function mod:ConflagrationOver(args)
	self:StopBar(23023, args.destName)
	self:PrimaryIcon(23023)
end

