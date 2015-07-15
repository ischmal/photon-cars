AddCSLuaFile()

EMV_DEBUG = false

local name = "ECPD Taurus"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 3 -- SmartSiren

EMV.Color = Color(255, 255, 255)
EMV.Skin = 4

EMV.BodyGroups = {
	{5, 1}, -- equipment
	{7, 1}, -- rims
}

EMV.Props = {
	{
		Model = "models/lonewolfie/whelenliberty_sub.mdl",
		Scale = .92,
		Pos = Vector(0, -7, 74.1),
		Ang = Angle( -2, -90, 0),
		BodyGroups = {
			{ 1, 1 }
		},
	},
	{
		Model = "models/lonewolfie/setinabullbar.mdl",
		Scale = .8,
		Pos = Vector(0, 120, 28),
		Ang = Angle( 7, -90, 0)
	},
	-- {
	-- 	Model = "models/lonewolfie/ledlightholder.mdl",
	-- 	Scale = .7,
	-- 	Pos = Vector(45, 38, 54),
	-- 	Ang = Angle( -2, 60, 0)
	-- },
	-- {
	-- 	Model = "models/lonewolfie/ledlightholder.mdl",
	-- 	Scale = .7,
	-- 	Pos = Vector(-45, 38, 54),
	-- 	Ang = Angle( -2, 120, 0)
	-- },
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
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector(19, 123.6, 26),
		Ang = Angle( 90, 0, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector(-19, 123.6, 26),
		Ang = Angle( -90, 0, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
}

EMV.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 7.5,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2,
		Scale = 1.4
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 3.6,
		H = 3.6,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1.2
	},
	liberty_f_ang = {
		AngleOffset = -90,
		W = 15,
		H = 14,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 3,
		Scale = 1.6,
		VisRadius = 0
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 15,
		H = 14,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 3,
		Scale = 1.6
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 7.5,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2,
		Scale = 1.4
	},
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
}

EMV.Positions = {

	 [1] = { Vector( -3.37, -.25, 76.32 ), Angle(0,0,-2), "liberty_f_main" },
	 [2] = { Vector( 3.37, -0.25, 76.32 ), Angle(0,0,-2), "liberty_f_main" },

	 [3] = { Vector( -9.45, -.25, 76.32 ), Angle(0,0,-2), "liberty_f_main" },
	 [4] = { Vector( 9.45, -.25, 76.32 ), Angle(0,0,-2), "liberty_f_main" },
	
	 [5] = { Vector( -24.23, -2.62, 76.37 ), Angle(1,32.4,-2), "liberty_f_ang" },
	 [6] = { Vector( 24.33, -2.66, 76.37 ), Angle(-1,-32.4,-2), "liberty_f_ang" },

	 [7] = { Vector( -24.3, -11.65, 76.7 ), Angle(-1,-33,-2), "liberty_r_ang" },
	 [8] = { Vector( 24.3, -11.65, 76.7 ), Angle(1,33,-2), "liberty_r_ang" },

	 [9] = { Vector( -15.5, -14.05, 76.8 ), Angle(0,0,-2), "liberty_r_main" },
	[10] = { Vector( 15.5, -14.05, 76.8 ), Angle(0,0,-2), "liberty_r_main" },

	[11] = { Vector( -9.45, -14.05, 76.8 ), Angle(0,0,-2), "liberty_r_main" },
	[12] = { Vector( 9.45, -14.05, 76.8 ), Angle(0,0,-2), "liberty_r_main" },

	[13] = { Vector( -3.37, -14.05, 76.8 ), Angle(0,0,-2), "liberty_r_main" },
	[14] = { Vector( 3.37, -14.05, 76.8 ), Angle(0,0,-2), "liberty_r_main" },

	[15] = { Vector( -15.58, .15, 76.15 ), Angle(0,0,-2), "liberty_takedown" },
	[16] = { Vector( 15.58, .15, 76.15 ), Angle(0,0,-2), "liberty_takedown" },

	[17] = { Vector( -28.8, -7.15, 76.4 ), Angle(0,90,0), "liberty_takedown" },
	[18] = { Vector( 28.8, -7.15, 76.4 ), Angle(0,-90,0), "liberty_takedown" },

	[19] = { Vector( -30.5, 104, 37 ), Angle( 0, 0, 0 ), "headlight" },
	[20] = { Vector( 30.5, 104, 37 ), Angle( 0, 0, 0 ), "headlight" },

	[21] = { Vector( -26.4, -108.9, 49.2 ), Angle( 177, -20, 200 ), "reverse_lights" },
	[22] = { Vector( 26.4, -108.9, 49.2 ), Angle( 3, 20, -20 ), "reverse_lights" },

	[23] = { Vector( -48, 33, 50.8 ), Angle( 0, 0, -8 ), "mirror" },
	[24] = { Vector( 48, 33, 50.8 ), Angle( 0, 0, 8 ), "mirror" },

	[25] = { Vector( -43.6, 52.56, 39.4 ), Angle( 2, 92, 2 ), "side" },
	[26] = { Vector( 43.6, 52.6, 39.4 ), Angle( -2, -92, 2 ), "side" },

	[27] = { Vector( -11.06, 115.23, 32.92 ), Angle( 0, 10, 10 ), "grille" },
	[28] = { Vector( 11.06, 115.23, 32.92 ), Angle( 0, -10, 10 ), "grille" },

	[29] = { Vector(-19, 123.6, 26), Angle( 0, 90, 0 ), "bullbar" },
	[30] = { Vector(19.2, 123.6, 26), Angle( 0, -90, 0 ), "bullbar" },

	[31] = { Vector( -12, -119.4, 26 ), Angle( 0, 0, 10 ), "rear" },
	[32] = { Vector( 12, -119.4, 26 ), Angle( 0, 0, 10 ), "rear" },


}

EMV.Sections = {
	["liberty"] = {
		{ { 1, R }, { 2, B }, { 3, R }, { 4, B }, { 5, R }, { 6, B }, { 7, R }, { 8, B }, { 9, R }, { 10, B },  { 11, R }, { 12, B },  { 13, R }, { 14, B }, { 15, W }, { 16, W }, { 17, W }, { 18, W }, },
		{ { 1, R }, { 3, R }, { 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, },
		{ { 2, B }, { 4, B }, { 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, },
		{ { 1, R, .75 }, { 2, B, .75 }, { 3, R, .75 }, { 4, B, .75 }, { 5, R, .75 }, { 6, B, .75 }, { 7, R, .75 }, { 8, B, .75 }, { 9, R, .75 }, { 10, B, .75 },  { 11, R, .75 }, { 12, B, .75 },  { 13, R, .75 }, { 14, B, .75 }, },
		{ { 1, R, 1 }, { 2, B, 1 }, { 3, R, 1 }, { 4, B, 1 }, { 5, R, 1 }, { 6, B, 1 }, { 7, R, 1 }, { 8, B, 1 }, { 9, R, 1 }, { 10, B, 1 },  { 11, R, 1 }, { 12, B, 1 },  { 13, R, 1 }, { 14, B, 1 }, },
		{ { 3, R, 1 }, { 4, B, 1 }, { 5, R, 1 }, { 6, B, 1 }, { 7, R, 1 }, { 8, B, 1 }, { 15, W }, { 16, W }, { 17, W }, { 18, W } },
		{ { 3, R, .75 }, { 4, B, .75 }, { 5, R, .75 }, { 6, B, .75 }, { 7, R, .75 }, { 8, B, .75 }, { 15, W }, { 16, W }, { 17, W }, { 18, W } },
	},
	["liberty_corner"] = {
		{ { 5, R }, { 7, R } },
		{ { 6, B }, { 8, B } },
		{ { 6, B }, { 8, B }, { 5, R }, { 7, R } },
		{ { 6, B, .75 }, { 8, B, .75 }, { 5, R, .75 }, { 7, R, .75 } },
	},
	["liberty_front"] = {
		{ { 1, R} },
		{ { 2, B} },
		{ { 3, R} },
		{ { 4, B} },
		{ { 1, R}, {3, R} },
		{ { 2, B}, {4, B} },
	},
	["liberty_rear"] = {
		{ { 11, R } },
		{ { 9, R }, { 13, R }, },
		{ { 12, B } },
		{ { 10, B }, { 14, B }, },
		{ { 9, R }, { 11, R }, { 13, R }, },
		{ { 10, B }, { 12, B }, { 14, B }, },

		{ { 9, R }, { 11, R } },
		{ { 13, R }, { 14, B } },
		{ { 12, B }, { 10, B } },
	},
	["headlights"] = {
		{ { 19, SW, { 16, .5, 10 } }, { 20, SW, { 16, .5, 0 } }, }
	},
	["rear_hideaways"] = {
		{ { 21, B } },
		{ { 22, R } },
		{ { 21, B }, { 22, R } },
	},
	["mirror"] = {
		{ { 24, R } },
		{ { 23, B } },
		{ { 23, B }, { 24, R } },
	},
	["grille"] = {
		{ {27, R}, {28, B} },
		{ {27, R} },
		{ {28, B} },
	},
	["bullbar"] = {
		{ {29, W}, {30, W} }
	},
	["side"] = {
		{ {25, R}, {26, B} }
	},
	["rear"] = {
		{ {31, R}, {32, B} },
		{ {32, B} },
		{ {31, R} },
	}
}

EMV.Patterns = { -- 0 = blank
	["liberty"] = {
		["all"] = {
			1
		},
		["alt"] = {
			2, 2, 2, 3, 3, 3
		},
		["alt_urgent"] = {
			2, 2, 3, 3, 0, 3, 3, 2, 2, 0
		},
		["onscene"] = {
			6, 7
		},
		["pulse"] = {
			8
		},
	},
	["liberty_corner"] = {
		["tri_flash"] = {
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0
		},
		["duo_flash"] = {
			1, 0, 1, 0, 2, 0, 2, 0,
		},
		["marker"] = {
			3, 4
		}
	},
	["liberty_front"] = {
		["alt"] = {
			5, 5, 6, 6, 0, 6, 6, 5, 5, 0
		},
		["alt_urgent"] = {
			5, 6, 0, 6, 5, 0
		}
	},
	["liberty_rear"] = {
		["trio"] = {
			1, 1, 3, 3, 2, 2, 4, 4
		},
		["alt"] = {
			5, 5, 6, 6, 0, 6, 6, 5, 5, 0
		},
		["alt_urgent"] = {
			5, 6, 0, 6, 5, 0
		},
		["slide"] = {
			7, 7, 8, 8, 9, 9, 8, 8
		}
	},
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
	["bullbar"] = {
		["all"] = {
			1
		},
		["urgent"] = {
			1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0
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
	}

}

EMV.Sequences = {
		Sequences = {
		{
			Name = "MARKER",
			Components = {
				["liberty_corner"] = "marker",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 1",
			Components = {
				["liberty_corner"] = "marker",
				["liberty_rear"] = "slide",
				["rear"] = "urgent",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Components = {
				["liberty_corner"] = "tri_flash",
				["liberty_front"] = "alt",
				["liberty_rear"] = "alt",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {
				["liberty_corner"] = "tri_flash",
				["liberty_front"] = "alt_urgent",
				["liberty_rear"] = "alt_urgent",
				["headlights"] = "wig-wag",
				["rear_hideaways"] = "urgent",
				["mirror"] = "urgent",
				["grille"] = "urgent",
				["bullbar"] = "urgent",
				["side"] = "urgent",
				["rear"] = "urgent",
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

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end