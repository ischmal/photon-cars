AddCSLuaFile()

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

EMV.Siren = 44

EMV.Liveries = {
	["Police"] = {
		["Patrol"] = { "photon/emv_liveries/sgm_taurus/police-patrol", "pp" },
		["K-9"] = { "photon/emv_liveries/sgm_taurus/police-traffic", "pd" },
		["Traffic"] = { "photon/emv_liveries/sgm_taurus/police-traffic", "pt" },
		["Traffic (Stealth)"] = { "photon/emv_liveries/sgm_taurus/police-traffic", "pg" },
		["Unmarked"] = { "photon/emv_liveries/sgm_taurus/police-unmarked", "pu" },
	}
}

EMV.Skin = "photon/emv_liveries/sgm_taurus/police-patrol"

EMV.Color = Color(255, 255, 255)

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
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	},
	Illumination = {
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 0, 75 ), Angle( 45, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 160,
		FOV = 120,
		Distance = 800,
	},
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
		Scale = .94,
		Pos = Vector( 0, -7, 76 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[3] = {
		ID = "Federal Signal Valor",
		Scale = .83,
		Pos = Vector( 0, -4, 75.7 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[4] = {
		ID = "Federal Signal Vision SLR",
		Scale = .87,
		Pos = Vector( 0, -9, 75.7 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[5] = {
		ID = "Whelen Justice",
		Scale = .95,
		Pos = Vector( 0, -6.8, 76.8 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[6] = {
		ID = "Whelen Legacy",
		Scale = .93,
		Pos = Vector( 0, -7, 75.1 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[7] = {
		ID = "Whelen Liberty SX",
		Scale = .88,
		Pos = Vector( 0, -7, 75 ),
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
		Pos = Vector( 0, 28, 65),
		Ang = Angle( 0, 90, 0 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "RED"
	},
	[10] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = .87,
		Pos = Vector( 0, -9, 75.7 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[11] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = .87,
		Pos = Vector( 0, -9, 75.7 ),
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
		Pos = Vector( -11.5, -119.4, 26.1),
		Ang = Angle( 0, -7, 90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A"
	},
	[20] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 11.5, -119.4, 26.1),
		Ang = Angle( 0, 7, 90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B"
	},
	[21] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 23, 27.2, 64),
		Ang = Angle( 0, 80, 4 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "WHITE",
		Phase = "A"
	},
	[22] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -23, 27.2, 64),
		Ang = Angle( 0, 100, -4 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "WHITE",
		Phase = "B"
	},
	[23] = {
		ID = "Whelen Legacy",
		Scale = 1.06,
		Pos = Vector( 0, -7.5, 88.2 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[24] = {
		ID = "Federal Signal Arjent",
		Scale = .78,
		Pos = Vector( 0, -6.4, 74.6 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[25] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 23, 27.2, 64),
		Ang = Angle( 0, 80, 4 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
	[26] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -23, 27.2, 64),
		Ang = Angle( 0, 100, -4 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "RED",
		Phase = "B"
	}
		
}

EMV.Presets = {
	{
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Federal Signal Legend",
		Bodygroups = {},
		Auto = { 2, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Federal Signal Valor",
		Bodygroups = {},
		Auto = { 3, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Federal Signal Arjent",
		Bodygroups = {},
		Auto = { 24, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Federal Signal Vision SLR (NYPD)",
		Bodygroups = {},
		Auto = { 4, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Federal Signal Vision SLR R/B",
		Bodygroups = {},
		Auto = { 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Federal Signal Vision SLR Clear",
		Bodygroups = {
			
		},
		Auto = { 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Whelen Justice",
		Bodygroups = {
			
		},
		Auto = { 5, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Whelen Legacy",
		Bodygroups = {
			
		},
		Auto = { 6, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Whelen Liberty",
		Bodygroups = {
			
		},
		Auto = { 7, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	{
		Name = "Slicktop",
		Bodygroups = {

		},
		Auto = { 25, 26, 12, 13, 14, 15, 16, 17, 18, 19, 20 },
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