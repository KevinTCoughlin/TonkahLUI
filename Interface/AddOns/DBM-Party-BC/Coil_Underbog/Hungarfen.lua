local mod	= DBM:NewMod(576, "DBM-Party-BC", 5, 262)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 598 $"):sub(12, -3))
mod:SetCreatureID(17770)
mod:SetEncounterID(1946)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 31673"
)

local warnFoulSpores  = mod:NewSpellAnnounce(31673)--Iffy, this may not work. Dry-coded off wowhead.

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 31673 then
		warnFoulSpores:Show()
	end
end