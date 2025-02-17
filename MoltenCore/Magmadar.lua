--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Magmadar", 409, 1520)
if not mod then return end
mod:RegisterEnableMob(11982)
mod:SetEncounterID(664)

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		19408, -- Panic
		19451, -- Enrage / Frenzy (different name on classic era)
		19428, -- Conflagration
	}
end

function mod:OnBossEnable()
	self:Log("SPELL_CAST_SUCCESS", "Panic", 19408)
	self:Log("SPELL_CAST_SUCCESS", "EnrageFrenzy", 19451)
	self:Log("SPELL_DISPEL", "EnrageFrenzyDispelled", "*")
	self:Log("SPELL_AURA_APPLIED", "Conflagration", 19428)

	self:Death("Win", 11982)
end

function mod:OnEngage()
	self:CDBar(19451, 8.1) -- Enrage / Frenzy
	self:CDBar(19408, 9.7) -- Panic
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Panic(args)
	self:CDBar(args.spellId, 31) -- 31-50, sometimes even higher
	self:Message(args.spellId, "orange")
	self:PlaySound(args.spellId, "long")
end

function mod:EnrageFrenzy(args)
	self:TargetBar(args.spellId, 8, args.destName)
	self:CDBar(args.spellId, 18) -- 18-21
	self:Message(args.spellId, "yellow", CL.buff_boss:format(args.spellName))
	self:PlaySound(args.spellId, "info")
end

function mod:EnrageFrenzyDispelled(args)
	if args.extraSpellId == 19451 then
		self:StopBar(args.extraSpellName, args.destName)
		self:Message(19451, "green", CL.removed_by:format(args.extraSpellName, self:ColorName(args.sourceName)))
	end
end

function mod:Conflagration(args)
	if self:Me(args.destGUID) then
		self:PersonalMessage(args.spellId, "underyou")
		self:PlaySound(args.spellId, "underyou")
	end
end
