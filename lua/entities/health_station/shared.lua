AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Health Station"
ENT.Author = "Hackcraft"
ENT.Spawnable = true
ENT.AdminSpawnable = true

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "price")
	self:NetworkVar("Entity", 0, "owning_ent")
end
 