AddCSLuaFile()

local name = "SenCo Dodge Ram 1500 Outdoorsman"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local EMV = {}

--util.PrecacheModel( "models/schmal/fedsig_visionslr/vision_lightbar.mdl" )

EMV.Siren = 0

EMV.Color = Color( 235, 235, 235 )

EMV.Skin = 0

EMV.BodyGroups = {
	{ 2, 5 },
	{ 10, 4 },
	{ 16, 1 },
	{ 15, 0 },
	{ 8, 1 },
	{ 4, 1 },
}

EMV.Props = {}

EMV.Positions = {}

EMV.Sections = {}

EMV.Patterns = {}

EMV.Sequences = {
		Sequences = {
		{
			Name = "STAGE 1",
			Stage = "M1",
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
		{
			Name = "STAGE 2",
			Stage = "M2",
			Components = {	},
			Preset_Components = {},
			Disconnect = {}
		},
		{
			Name = "STAGE 3",
			Stage = "M3",
			Components = {	},
			Preset_Components = {},
			Disconnect = {}
		}
	},
	Traffic = {
		{
			Name = "LEFT",
			Stage = "L",
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	    {
			Name = "RIGHT",
			Stage = "R",
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	    {
			Name = "DIVERGE",
			Stage = "D",
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	}
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity SenCo",
		Scale = 1.02,
		Pos = Vector( 0, 16, 93 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[2] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 10, 143.2, 44 ),
		Ang = Angle( 0, -6, -90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "A",
	},
	[3] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -10, 143.2, 44 ),
		Ang = Angle( 0, 6, -90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "B",
	},
	[4] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 19, -125, 32 ),
		Ang = Angle( 0, 2.5, 90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "A",
	},
	[5] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -19, -125, 32 ),
		Ang = Angle( 0, -2.5, 90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "B",
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 2, 3, 4, 5 },
		Props = {}
	},
}

EMV.Meta = {}

local PI = {}

PI.Meta = {}

PI.StateMaterials = {
	["taillights"] = {
		Index = 15,
		States = {
			["running"] = "photon/override/lw_dc15_tail",
			["brake"] = "photon/override/lw_dc15_tail_br"
		}
	}
}

PI.Positions = {}

PI.States = {}
PI.States.Headlights = {}
PI.States.Brakes = {}
PI.States.Blink_Left = {}
PI.States.Blink_Right = {}
PI.States.Reverse = {}
PI.States.Running = {}

local V = {
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "SenCo",
				Author = "LoneWolfie, TheSenDest",
				Information = "",
				Model =	"models/LoneWolfie/dodge_ram_1500_outdoorsman.mdl",			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/LWCars/dodge_ram_1500_outdoorsman.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end