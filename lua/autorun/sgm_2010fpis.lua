AddCSLuaFile()

EMV_DEBUG = false

local name = "2010 Ford Taurus Police Interceptor"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local EMV = {}

EMV.Siren = 3 -- SmartSiren

EMV.Color = Color(255, 255, 255)
EMV.Skin = 0

EMV.BodyGroups = {
	{5, 1}, -- equipment
	{7, 1}, -- rims
}

EMV.Props = {}

EMV.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 3,
		VisRadius = 0
	},
	reverse_lights = {
		AngleOffset = 90,
		W = 7,
		H = 6.2,
		Sprite = "sprites/emv/taurus_reverse",
		Scale = 1,
		WMult = 1
	},
}

EMV.Positions = {

	[1] = { Vector( -30.5, 104, 37 ), Angle( 0, 0, 0 ), "headlight" },
	[2] = { Vector( 30.5, 104, 37 ), Angle( 0, 0, 0 ), "headlight" },

	[3] = { Vector( -26.4, -108.9, 49.2 ), Angle( 177, -20, 200 ), "reverse_lights" },
	[4] = { Vector( 26.4, -108.9, 49.2 ), Angle( 3, 20, -20 ), "reverse_lights" },

}

EMV.Sections = {
	["headlights"] = {
		{ { 1, SW, { 16, .5, 10 } }, { 2, SW, { 16, .5, 0 } }, }
	},
	["rear_hideaways"] = {
		{ { 3, B } },
		{ { 4, R } },
		{ { 3, B }, { 4, R } },
	},
}

EMV.Patterns = { -- 0 = blank
	["headlights"] = {
		["wig-wag"] = {
			1
		},
	},
	["rear_hideaways"] = {
		["urgent"] = {
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0,
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 
			1, 1, 0, 2, 2, 0,
			1, 1, 0, 2, 2, 0,
			1, 1, 0, 2, 2, 0,
			1, 1, 0, 2, 2, 0,
			1, 1, 0, 2, 2, 0,
			1, 1, 2, 2,
			1, 1, 2, 2,
			1, 1, 2, 2,
			1, 1, 2, 2,
			1, 1, 2, 2,
		},
	},
}

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Stage = "M1",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Stage = "M2",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Stage = "M3",
			Components = {
				["headlights"] = "wig-wag",
				["rear_hideaways"] = "urgent",
			},
			Disconnect = { 15, 16 }
		},
	}
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity",
		Scale = .92,
		Pos = Vector( 0, -8, 75 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},	
	[2] = {
		ID = "Federal Signal Legend",
		Scale = 1.07,
		Pos = Vector( 0, -7.4, 89.5 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[3] = {
		ID = "Federal Signal Valor",
		Scale = .93,
		Pos = Vector( 0, -4, 88.9 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[4] = {
		ID = "Federal Signal Vision SLR",
		Scale = .98,
		Pos = Vector( 0, -9, 89.4 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[5] = {
		ID = "Whelen Justice",
		Scale = 1.1,
		Pos = Vector( 0, -7.1, 90.2 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[6] = {
		ID = "Whelen Legacy",
		Scale = 1.06,
		Pos = Vector( 0, -7.5, 88.2 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[7] = {
		ID = "Whelen Liberty SX",
		Scale = .98,
		Pos = Vector( 0, -7.2, 88.7 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[8] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = .95,
		Pos = Vector( 0, -82, 59),
		Ang = Angle( 0, -90, 0 ),
		AutoPatterns = true,
	},
	[9] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, 29.5, 78.6),
		Ang = Angle( 0, 90, 0 ),
		AutoPatterns = true,
	},
	[10] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = .98,
		Pos = Vector( 0, -9, 89.4 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[11] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = .98,
		Pos = Vector( 0, -9, 89.4 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[12] = {
		ID = "TDM Pushbar LED",
		Scale = .98,
		Pos = Vector( 0, 120, 15 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
	},
	[13] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( -35, -43, 56.2),
		Ang = Angle( 3, 90, -80),
		AutoPatterns = true,
	},
	[14] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( 35, -43, 56.2),
		Ang = Angle( 3, 90, 80),
		AutoPatterns = true,
	},
	[15] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -43, 92, 30),
		Ang = Angle( -45, -100, 70 ),
		AutoPatterns = true
	},
	[16] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 43, 92, 30),
		Ang = Angle( -45, -80, -70 ),
		AutoPatterns = true
	},
	[17] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 18, -60, 65.6),
		Ang = Angle( 0, -80, -4 ),
		AutoPatterns = true
	},
	[18] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -18, -60, 65.6),
		Ang = Angle( 0, -100, 4 ),
		AutoPatterns = true
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 12, 13, 14, 15, 16, 17, 18 },
		Props = {}
	},
	[2] = {
		Name = "Federal Signal Legend",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[3] = {
		Name = "Federal Signal Valor",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[4] = {
		Name = "Federal Signal Vision SLR (NYPD)",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[5] = {
		Name = "Federal Signal Vision SLR R/B",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[6] = {
		Name = "Federal Signal Vision SLR Clear",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[7] = {
		Name = "Whelen Justice",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[8] = {
		Name = "Whelen Legacy",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[9] = {
		Name = "Whelen Liberty",
		Bodygroups = {
			
		},
		Auto = {},
		Props = {}
	},
	[10] = {
		Name = "Slicktop",
		Bodygroups = {

		},
		Auto = {},
		Props = {}
	},
}

local V = {
				// Required information
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "Emergency Vehicles",

				// Optional information
				Author = "SentryGunMan, Schmal",
				Information = "vroom vroom",
				Model =	"models/sentry/taurussho.mdl",

			
				KeyValues = {				
					vehiclescript =	"scripts/vehicles/sentry/taurus.txt"
			    },
					    
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = "sgm_taurus"
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end