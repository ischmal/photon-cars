AddCSLuaFile()

EMV_DEBUG = false

local name = "2013 Ford Police Interceptor Utility"

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
// EMV.Siren = 3 -- SmartSiren

EMV.Liveries = {
	["Police"] = {
		// ["Patrol"] = { "photon/emv_liveries/sgm_taurus/police-patrol", "pp" },
		// ["Patrol"] = { "photon/emv_liveries/sgm_taurus/lapd" },
		// ["Traffic"] = { "photon/emv_liveries/sgm_taurus/police-traffic", "pt" }
	}
}

EMV.Skin = "photon/emv_liveries/sgm_explorer/police-patrol"

EMV.Color = Color(255, 255, 255)

EMV.BodyGroups = {
	{5, 1}, -- equipment
	{7, 1}, -- rims
}

EMV.SubMaterials = {
	["7"] = "photon/override/sgm_fordexplorer/interior",
	["13"] = "photon/override/sgm_fordexplorer/glass",
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
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	},
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity",
		Scale = 1,
		Pos = Vector( 0, -10.4, 84.5 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},	
	[2] = {
		ID = "Federal Signal Legend",
		Scale = 1.05,
		Pos = Vector( 0, -8.5, 85.5 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[3] = {
		ID = "Federal Signal Valor",
		Scale = .95,
		Pos = Vector( 0, -4, 85.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[4] = {
		ID = "Federal Signal Vision SLR",
		Scale = 1.03,
		Pos = Vector( 0, -10.5, 85.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[5] = {
		ID = "Whelen Justice",
		Scale = 1.06,
		Pos = Vector( 0, -7.1, 86.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[6] = {
		ID = "Whelen Legacy",
		Scale = 1.04,
		Pos = Vector( 0, -8, 84.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[7] = {
		ID = "Whelen Liberty SX",
		Scale = .98,
		Pos = Vector( 0, -8, 84.6 ),
		Ang = Angle( 1, 90, 0),
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
		Scale = 1.12,
		Pos = Vector( 0, 30, 73),
		Ang = Angle( 0, 90, 0 ),
		AutoPatterns = true,
	},
	[10] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = 1.03,
		Pos = Vector( 0, -10.5, 85.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[11] = {
		ID = "Federal Signal Vision SLR Amber",
		Scale = 1.03,
		Pos = Vector( 0, -10.5, 85.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[12] = {
		ID = "TDM Pushbar LED",
		Scale = 1.15,
		Pos = Vector( 0, 122.5, 15 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
	},
	[13] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( -39, -80, 62.5),
		Ang = Angle( 0, 95, -90),
		AutoPatterns = true,
	},
	[14] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( 39, -80, 62.5),
		Ang = Angle( 0, 85, 90),
		AutoPatterns = true,
	},
	[15] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -45.6, 97, 30),
		Ang = Angle( -70, -100, 80 ),
		AutoPatterns = true
	},
	[16] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 45.6, 97, 30),
		Ang = Angle( -70, -80, -80 ),
		AutoPatterns = true
	},
	[17] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 18, -60, 65.6),
		Ang = Angle( 0, -80, -4 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
	[18] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -18, -60, 65.6),
		Ang = Angle( 0, -100, 4 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "RED",
		Phase = "B"
	},
	[19] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -15, -119.4, 23),
		Ang = Angle( 0, -10, 90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A"
	},
	[20] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 15, -119.4, 23),
		Ang = Angle( 0, 10, 90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B"
	},
	[21] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 29, 29.62, 72),
		Ang = Angle( 0, 85, 2 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "WHITE",
		Phase = "A"
	},
	[22] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -29, 29.6, 72),
		Ang = Angle( 0, 95, -2 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "WHITE",
		Phase = "B"
	},
	[23] = {
		ID = "Federal Signal Arjent",
		Scale = .85,
		Pos = Vector( 0, -7.5, 84.3 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[24] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = .8,
		Pos = Vector( 0, -99, 73),
		Ang = Angle( 0, -90, 0 ),
		AutoPatterns = true,
	},
	[25] = {
		ID = "Whelen Ultra Freedom",
		Scale = 1,
		Pos = Vector( 0, -8.1, 86.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true
	},
}

EMV.Presets = {
	{
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Federal Signal Legend",
		Bodygroups = {},
		Auto = { 2, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Federal Signal Valor",
		Bodygroups = {},
		Auto = { 3, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Federal Signal Vision SLR (NYPD)",
		Bodygroups = {},
		Auto = { 4, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Federal Signal Vision SLR R/B",
		Bodygroups = {},
		Auto = { 10, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Federal Signal Vision SLR Clear",
		Bodygroups = {
			
		},
		Auto = { 11, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Federal Signal Arjent",
		Bodygroups = {},
		Auto = { 12, 12, 13, 14, 15, 16, 19, 20, 24, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Whelen Justice",
		Bodygroups = {
			
		},
		Auto = { 5, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Whelen Legacy",
		Bodygroups = {
			
		},
		Auto = { 6, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Whelen Liberty",
		Bodygroups = {
			
		},
		Auto = { 7, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Whelen Ultra Freedom",
		Bodygroups = {
			
		},
		Auto = { 25, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
		Props = {}
	},
	{
		Name = "Slicktop",
		Bodygroups = {

		},
		Auto = { 9, 12, 13, 14, 15, 16, 19, 20, 21, 22, 24 },
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
				-- Model =	"models/schmal/fpiu/fpiu_high.mdl",
				Model =	"models/sentry/explorer.mdl",

			
				KeyValues = {				
					vehiclescript =	"scripts/vehicles/sentry/explorer.txt"
			    },
					    
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = "sgm_explorer"
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end