AddCSLuaFile()

local name = "SenCo Ford 350 SuperDuty"

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

EMV.Skin = 3
// EMV.Skin = "photon/override/lw_dc15_tail"

EMV.BodyGroups = {
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
				{ Vector( 16.6, 15, 102 ), Angle( 20, 90, -0 ), "forward" },
				{ Vector( -16.6, 15, 102 ), Angle( 20, 90, -0 ), "forward" },
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
				{ Vector( 16.6, 15, 102 ), Angle( 20, 90, -0 ), "forward" },
				{ Vector( -16.6, 15, 102 ), Angle( 20, 90, -0 ), "forward" },
				{ Vector( 31, 6.7, 102 ), Angle( 20, 0, -0 ), "side" },
				{ Vector( -31, 6.7, 102 ), Angle( 20, 180, -0 ), "side" },
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
		Near = 10,
		FOV = 60,
		Distance = 700,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Vision SLR Amber",
		Scale = 1.1,
		Pos = Vector( 0, 6, 104.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[2] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 12.7, 139, 54.75 ),
		Ang = Angle( 0, -6, -90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "A",
	},
	[3] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -12.7, 139, 54.75 ),
		Ang = Angle( 0, 6, -90 ),
		AutoPatterns = true,
		Color1 = "WHITE",
		Phase = "A",
	},
	[4] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 12.7, 139, 48.5 ),
		Ang = Angle( 0, -6, -90 ),
		AutoPatterns = true,
		Color1 = "WHITE",
		Phase = "B",
	},
	[5] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -12.7, 139, 48.5 ),
		Ang = Angle( 0, 6, -90 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "B",
	},
	[6] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 34, -157, 61 ),
		Ang = Angle( 0, 0, 85 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "A",
	},
	[7] = {
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -34, -157, 61 ),
		Ang = Angle( 0, 0, 85 ),
		AutoPatterns = true,
		Color1 = "AMBER",
		Phase = "B",
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 2, 3, 4, 5, 6, 7 },
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
				Author = "TDM, TheSenDest",
				Information = "",
				Model =	"models/tdmcars/for_f350.mdl",

			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/TDMCars/f350.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end