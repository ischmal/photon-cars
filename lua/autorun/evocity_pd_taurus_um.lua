AddCSLuaFile()

EMV_DEBUG = false

local name = "ECPD Taurus (Unmarked)"

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

EMV.Color = Color(65, 75, 81)
EMV.Skin = 0

EMV.BodyGroups = {
	{5, 1}, -- equipment
	{7, 1}, -- rims
}

EMV.Props = {
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector(48, 33, 51.2),
		Ang = Angle( 172, 0, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector(-48, 33, 51.2),
		Ang = Angle( 188, 0, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = .8,
		Pos = Vector(-25, -94, 74.5),
		Ang = Angle( 0, 0, 0)
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = .4,
		Pos = Vector(-20, -98, 65),
		Ang = Angle( 0, 0, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(-11, 115, 32.9),
		Ang = Angle( -10, 100, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(11, 115, 32.9),
		Ang = Angle( -10, 80, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .7,
		Pos = Vector(-43.3, 52.6, 39.4),
		Ang = Angle( -2, 181, 3)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .7,
		Pos = Vector(43.3, 52.6, 39.4),
		Ang = Angle( -2, -1, -3)
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector(-12, -119, 26),
		Ang = Angle( 80, -90, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector(12, -119, 26),
		Ang = Angle( 80, -90, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/lonewolfie/whelenavenger_double.mdl",
		Scale = 1,
		Pos = Vector(16, 27.6, 66),
		Ang = Angle( 0, 90, 0 ),
	},
	{
		Model = "models/lonewolfie/whelenavenger_double.mdl",
		Scale = 1,
		Pos = Vector(-16, -62, 66.4),
		Ang = Angle( 0, -90, 0 ),
	},
}

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
		Scale = 1.6,
		WMult = .1
	},
	mirror = {
		AngleOffset = "R",
		W = 1.4,
		H = 1.4,
		Sprite = "sprites/emv/circular_src",
		Scale = 1,
		Speed = 10
	},
	side = {
		AngleOffset = -90,
		W = 4.1,
		H = 4.1,
		Sprite = "sprites/emv/emv_whelen_mini_3"
	},
	grille = {
		AngleOffset = -90,
		W = 3.6,
		H = 3.6,
		Sprite = "sprites/emv/emv_whelen_mini_3"
	},
	bullbar = {
		AngleOffset = -90,
		W = 2,
		H = 2,
		Sprite = "sprites/emv/circular_src",
	},
	rear = {
		AngleOffset = 90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/circular_src",
	},
	avng_frnt = {
		AngleOffset = -90,
		W = 5.7,
		H = 5.8,
		Sprite = "sprites/emv/emv_whelen_src"
	},
	avng_rear = {
		AngleOffset = 90,
		W = 5.7,
		H = 5.8,
		Sprite = "sprites/emv/emv_whelen_src"
	},
}

EMV.Positions = {

	[1] = { Vector( -30.5, 104, 37 ), Angle( 0, 0, 0 ), "headlight" },
	[2] = { Vector( 30.5, 104, 37 ), Angle( 0, 0, 0 ), "headlight" },

	[3] = { Vector( -26.4, -108.9, 49.2 ), Angle( 177, -20, 200 ), "reverse_lights" },
	[4] = { Vector( 26.4, -108.9, 49.2 ), Angle( 3, 20, -20 ), "reverse_lights" },

	[5] = { Vector( -48, 33, 50.8 ), Angle( 0, 0, -8 ), "mirror" },
	[6] = { Vector( 48, 33, 50.8 ), Angle( 0, 0, 8 ), "mirror" },

	[7] = { Vector( -43.6, 52.56, 39.4 ), Angle( 2, 92, 2 ), "side" },
	[8] = { Vector( 43.6, 52.6, 39.4 ), Angle( -2, -92, 2 ), "side" },

	[9] = { Vector( -11.06, 115.23, 32.92 ), Angle( 0, 10, 10 ), "grille" },
	[10] = { Vector( 11.06, 115.23, 32.92 ), Angle( 0, -10, 10 ), "grille" },

	[11] = { Vector( -12, -119.4, 26 ), Angle( 0, 0, 10 ), "rear" },
	[12] = { Vector( 12, -119.4, 26 ), Angle( 0, 0, 10 ), "rear" },

	[13] = { Vector(13.4, 26.9, 65.1), Angle( 0, 0, 0 ), "avng_frnt" },
	[14] = { Vector(18.6, 26.9, 65.1), Angle( 0, 0, 0 ), "avng_frnt" },

	[15] = { Vector(-13.4, -61.3, 65.5), Angle( 0, 0, 0 ), "avng_rear" },
	[16] = { Vector(-18.6, -61.3, 65.55), Angle( 0, 0, 0 ), "avng_rear" },


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
	["mirror"] = {
		{ { 6, R } },
		{ { 5, B } },
		{ { 5, B }, { 6, R } },
	},
	["grille"] = {
		{ {9, R}, {10, B} },
		{ {9, R} },
		{ {10, B} },
	},
	["side"] = {
		{ {7, R}, {8, B} }
	},
	["rear"] = {
		{ {11, R}, {12, B} },
		{ {12, B} },
		{ {11, R} },
	},
	["front"] = {
		{ {13, R}, {14, B} },
		{ {13, R} },
		{ {14, B} },
	},
	["up_rear"] = {
		{ {15, R}, {16, B} },
		{ {15, R} },
		{ {16, B} },
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
	["mirror"] = {
		["urgent"] = {
			3
		}
	},
	["grille"] = {
		["all"] = {
			1
		},
		["urgent"] = {
			2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0
		}
	},
	["side"] = {
		["all"] = {
			1
		},
		["urgent"] = {
			1, 1, 0, 1, 1, 0, 1, 1, 0,
			1, 0, 1, 0, 1, 0, 1, 0, 1,
			0, 0, 0, 1, 1, 1, 0, 0, 0,
		}
	},
	["rear"] = {
		["all"] = {
			1
		},
		["urgent"] = {
			2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0
		}
	},
	["front"] = {
		["all"] = {
			1
		},
		["urgent"] = {
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 2, 2, 3, 3, 3,
			2, 2, 2, 3, 3, 3,
			2, 2, 2, 3, 3, 3,
		}
	},
	["up_rear"] = {
		["all"] = {
			1
		},
		["warning"] = {
			2, 2, 2, 3, 3, 3
		},
		["urgent"] = {
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 2, 2, 3, 3, 3,
			2, 2, 2, 3, 3, 3,
			2, 2, 2, 3, 3, 3,
		}

	}
}

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Components = {
				["rear"] = "urgent",
				["up_rear"] = "warning",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Components = {
				["rear"] = "urgent",
				["grille"] = "urgent",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {
				["headlights"] = "wig-wag",
				["rear_hideaways"] = "urgent",
				["mirror"] = "urgent",
				["grille"] = "urgent",
				["side"] = "urgent",
				["rear"] = "urgent",
				["front"] = "urgent",
				["up_rear"] = "urgent",
			},
			Disconnect = { 15, 16 }
		},
	}
}

local V = {
				// Required information
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "Evo City Police",

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