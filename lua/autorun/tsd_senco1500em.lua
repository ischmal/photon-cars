AddCSLuaFile()

local name = "SenCo EM Dodge Ram 1500 Outdoorsman"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local EMV = {}

EMV.Siren = 0

EMV.Color = Color( 255, 255, 255 )

EMV.Skin = 4

EMV.BodyGroups = {
	{ 2, 3 },
	{ 10, 4 },
	{ 16, 2 },
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
	},
	Illumination = {
		{
			Name = "FRNT",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 15.37, 30, 93.75 ), Angle( 20, 90, -0 ), "forward" },
				{ Vector( -15.37, 30, 93.75 ), Angle( 20, 90, -0 ), "forward" },
			},
			Disconnect = {}
		},
	    {
			Name = "FULL",
			Icon = "lamp",
			Stage = "A",
			Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 15.37, 30, 93.75 ), Angle( 20, 90, -0 ), "forward" },
				{ Vector( -15.37, 30, 93.75 ), Angle( 20, 90, -0 ), "forward" },
				{ Vector( 29.12, 16.63, 93.88 ), Angle( 20, 0, -0 ), "side" },
				{ Vector( -29.12, 16.63, 93.88 ), Angle( 20, 180, -0 ), "side" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["forward"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 150,
		FOV = 60,
		Distance = 700,
	},
	["side"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 5,
		FOV = 60,
		Distance = 700,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity",
		Scale = 1.02,
		Pos = Vector( 0, 16, 93 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true
	},
	[2] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 10, 143.2, 44 ),
		Ang = Angle( 0, -6, -90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "A",
	},
	[3] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -10, 143.2, 44 ),
		Ang = Angle( 0, 6, -90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "B",
	},
	[4] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 19, -125, 32 ),
		Ang = Angle( 0, 2.5, 90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A",
	},
	[5] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -19, -125, 32 ),
		Ang = Angle( 0, -2.5, 90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B",
	},
	[6] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -47, -105, 52 ),
		Ang = Angle( 0, -90, 90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B",
	},
	[7] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -47, -105, 49 ),
		Ang = Angle( 0, -90, 90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A",
	},
	[8] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 47, -105, 52 ),
		Ang = Angle( 0, 90, 90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B",
	},
	[9] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 47, -105, 49 ),
		Ang = Angle( 0, 90, 90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A",
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
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