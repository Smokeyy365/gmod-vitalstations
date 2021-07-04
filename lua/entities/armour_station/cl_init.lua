AddCSLuaFile()
include("shared.lua")

surface.CreateFont("FontMain", {font = "Roboto Bold", size = 21*11, antialiasing = true})

function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()
	self:SetColor( Color(6, 22, 136) )
	self:SetMaterial( "models/shiny" )

	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")
	
	local health_amount = self:GetNWInt("Armour_amount")

	surface.SetFont("FontMain")
	local text = "Armour"
	local text2 = "Station"
	local TextWidth = surface.GetTextSize(text)
	local TextWidth4 = surface.GetTextSize(text2)
	local TextWidth2 = surface.GetTextSize(owner)
	local TextWidth3 = surface.GetTextSize(health_amount)

	Ang:RotateAroundAxis(Ang:Up(), 90)

	surface.CreateFont("FontMain", {font = "Roboto Bold", size = 21*11, antialiasing = true})


	cam.Start3D2D(Pos + Ang:Up() * 8, Ang, 0.02)-- 11.5
		draw.RoundedBox( 0, -100*5.52, -100*5.43, 200*5.52, 170*5.52, Color( 126, 249, 255 ) ) -- Color( 255, 0, 0, 255 )
		draw.RoundedBox( 0, -95*5.6, -95*5.5, 190*5.6, 160*5.6, Color(19, 31, 91) ) -- Color( 255, 0, 0, 255 )
		draw.WordBox(2, -TextWidth*0.5, -90*5.6, text, "FontMain", Color(0, 161, 255, 0), Color(255, 255,255))
		draw.WordBox(2, -TextWidth4*0.5, -60*5.6, text2, "FontMain", Color(0, 255, 63, 0), Color(255, 255, 255))
		draw.WordBox(2, -TextWidth3*0.5, 0, health_amount, "FontMain", Color(140, 0, 0, 0), Color(255, 255,255))
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( Material( "icon16/shield.png" ) )
		surface.DrawTexturedRect( 0-94/2, -80, 94, 94 )
	cam.End3D2D()
	
	Ang:RotateAroundAxis( Ang:Forward(), 90 )
	
	cam.Start3D2D(Pos + Ang:Up() * 10.5, Ang, 0.02)-- 11.5
		draw.RoundedBox( 0, -100*5.5, -100*4, 200*5.52, 60*5.2, Color( 126, 249, 255 ) ) -- Color( 255, 0, 0, 255 )
		draw.RoundedBox( 0, -100*5.2, -70*5.1, 200*5.2, 60*4.3, Color(19, 31, 91) ) -- Color( 255, 0, 0, 255 )
		draw.WordBox(2, -TextWidth2*0.5, -60*5.9, owner, "FontMain", Color(140, 0, 0, 0), Color(255, 255,255))
		--surface.SetDrawColor( 255, 255, 255, 255 )
		--surface.SetMaterial( Material( "icon16/star.png" ) )
		--surface.DrawTexturedRect( 0, 0, 128, 128 )
	cam.End3D2D()
	
end

function ENT:Think()
end
