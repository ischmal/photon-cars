AddCSLuaFile()

local name = "SenCo Mercedes Sprinter SWB"

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

EMV.Skin = 3

EMV.BodyGroups = {}

EMV.Props = {}

EMV.Positions = {}

EMV.Sections = {}

EMV.Patterns = {}

EMV.Sequences = {
	Sequences = {
		{
			Name = "STAGE 1",
			Stage = "M1",
			Components = {	},
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
	},
	Illumination = {
		{
			Name = "FLOOD",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, -160, 110 ), Angle( 45, -90, 0 ), "flood" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["flood"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 100,
		FOV = 140,
		Distance = 900,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Whelen Liberty SX",
		Scale = 1.02,
		Pos = Vector( 0, 24, 109.6 ),
		Ang = Angle( 0, 90, 0),
		AutoPatterns = true,
	},
	[2] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 10, 132.6, 36.55 ),
		Ang = Angle( 0, -6, -82 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "A",
	},
	[3] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -10, 132.6, 36.55 ),
		Ang = Angle( 0, 6, -82 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "B",
	},
	[4] = {
		ID = "Whelen 700",
		Scale = .8,
		Pos = Vector( 26, -114.3, 17.4 ),
		Ang = Angle( 0, 2.5, 90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "A",
	},
	[5] = {
		ID = "Whelen 700",
		Scale = .8,
		Pos = Vector( -26, -114.3, 17.4 ),
		Ang = Angle( 0, -2.5, 90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "B",
	},
	[6] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 38.3, -111, 24 ),
		Ang = Angle( 0, 4, 90 ),
		AutoPatterns = true,
		Color1 = "GREEN",
		Phase = "B",
	},
	[7] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -38.3, -111, 24 ),
		Ang = Angle( 0, -4, 90 ),
		AutoPatterns = true,
		Color1 = "GREEN",
		Phase = "A",
	},
	[8] = {
		ID = "Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -94, 109.6 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 2, 3, 4, 5, 6, 7, 8 },
		Props = {}
	},
}

EMV.Meta = {}

local PI = {}

PI.Meta = {}

PI.StateMaterials = {}

PI.Positions = {}

PI.States = {}
PI.States.Headlights = {}
PI.States.Brakes = {}
PI.States.Blink_Left = {}
PI.States.Blink_Right = {}
PI.States.Reverse = {}
PI.States.Running = {}

local V = {
			Name = name, 
			Class = "prop_vehicle_jeep",
			Category = "SenCo",
			Author = "LoneWolfie",
			Information = "Driveable merc_sprinter_swb by LoneWolfie",
			Model = "models/LoneWolfie/merc_sprinter_swb.mdl",
							
			KeyValues = {
							vehiclescript	=	"scripts/vehicles/LWCars/merc_sprinter_swb.txt"
							},
			IsEMV = true,
			EMV = EMV,
			HasPhoton = true,
			Photon = PI,
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end