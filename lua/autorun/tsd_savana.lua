AddCSLuaFile()

local VehicleName = "SenCo GMC Savana"

local EMV = {}

EMV.Siren = 0
EMV.Skin = 5
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- backlayout
	{ 2, 3 }, -- roof
	{ 3, 0 }, -- blank
	{ 4, 0 }, -- reardoor
	{ 5, 0 }, -- reardoor_windows
	{ 6, 0 }, -- side_windows
	{ 7, 0 }, -- logos
	{ 8, 0 }, -- trim
	{ 9, 0 }, -- wheels
	{ 10, 0 }, -- clamped1
}

EMV.Auto = {
	{
		ID = "Dome Light Amber",
		Scale = 1,
		Pos = Vector( -26.6, 12.5, 98.7 ),
		Ang = Angle( 0, 90, 0 ),
		Phase = "A"
	},
	{
		ID = "Dome Light Amber",
		Scale = 1,
		Pos = Vector( -26.6, -96.5, 98.7 ),
		Ang = Angle( 0, 90, 0 ),
		Phase = "B"
	}
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	}
}

PrintTable( EMV )

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "SenCo",
	Author = "Schmal",
	Model = "models/lonewolfie/gmc_savana.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/gmc_savana.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
