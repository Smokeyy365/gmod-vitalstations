include("shared.lua")
AddCSLuaFile()

surface.CreateFont("FontMain", {font = "Roboto Bold", size = 21*11, antialiasing = true})


function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()
	self:SetColor( Color( 64, 0, 5, 255 ) )
	self:SetMaterial( "models/shiny" )

	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or DarkRP.getPhrase("unknown")
	
	local health_amount = self:GetNWInt("Health_amount")

	surface.SetFont("FontMain")
	local text = "Health"
	local text2 = "Station"
	local TextWidth = surface.GetTextSize(text)
	local TextWidth4 = surface.GetTextSize(text2)
	local TextWidth2 = surface.GetTextSize(owner)
	local TextWidth3 = surface.GetTextSize(health_amount)

	Ang:RotateAroundAxis(Ang:Up(), 90)

	cam.Start3D2D(Pos + Ang:Up() * 8, Ang, 0.02)-- 11.5
		draw.RoundedBox( 0, -95*5.8, -95*5.8, 190*5.8, 170*5.8, Color( 255,0,5, 255 ) ) 
		draw.RoundedBox( 0, -95*5.65, -95*5.65, 190*5.65, 170*5.4, Color( 55,0,10, 255 ) ) -- Color( 255, 0, 0, 255 )
		draw.WordBox(0, -TextWidth*0.5, -90*5.8, text, "FontMain", Color(0, 255, 63, 0), Color(255, 255, 255))
		draw.WordBox(0, -TextWidth4*0.5, -60*5.8, text2, "FontMain", Color(0, 255, 63, 0), Color(255,255,255))
		draw.WordBox(0, -TextWidth3*0.5, 0, health_amount, "FontMain", Color(140, 0, 0, 0), Color(255, 255,255))
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( Material( "icon16/heart.png" ) )
		surface.DrawTexturedRect( 0-94/2, -80, 94, 94 )
	cam.End3D2D()
	
	Ang:RotateAroundAxis( Ang:Forward(), 90 )
	
	cam.Start3D2D(Pos + Ang:Up() * 10.5, Ang, 0.02)-- 11.5
		draw.RoundedBox( 0, -100*5.6, -70*5.6, 200*5.6, 60*5.6, Color( 255,0,5, 255 ) ) 
		draw.RoundedBox( 0, -100*5.2, -70*5.1, 200*5.2, 60*4.3, Color( 55,0,10, 255 ) ) -- Color( 255, 0, 0, 255 )
		draw.WordBox(2, -TextWidth2*0.5, -60*5.9, owner, "FontMain", Color(140, 0, 0, 0), Color(255, 255, 255))
	cam.End3D2D()
	
end

function ENT:Think()
end
