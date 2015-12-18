AddCSLuaFile()

local VehicleName = "Schasmdflas"

local EMV = {}

EMV.Siren = 22
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 },
	{ 1, 0 },
	{ 2, 0 },
	{ 3, 1 },
	{ 4, 0 },
	{ 5, 0 },
	{ 6, 0 },
	{ 7, 0 },
}

EMV.Auto = {
	{
		ID = "Federal Signal Legend",
		Scale = 1,
		Pos = Vector( 0, 0, 100 ),
		Ang = Angle( 0, 90, 0 ),
		AutoPatterns = true
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

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "asdf",
	Author = "Schmal",
	Model = "models/lonewolfie/cad_eldorado.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/cad_eldorado.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
