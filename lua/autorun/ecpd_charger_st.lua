AddCSLuaFile()

EMV_DEBUG = false

local name = "ECPD Dodge Charger Hellcat"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 3

EMV.Color = nil
EMV.Skin = 2

EMV.BodyGroups = {}

EMV.Props = {
	{
		Model = "models/lonewolfie/whelenliberty_sub.mdl",
		Scale = .97,
		Pos = Vector(0, -7, 73.8),
		Ang = Angle( -1, -90, 0),
	},
	{
		Model = "models/lonewolfie/setinabullbar.mdl",
		Scale = .9,
		Pos = Vector(0, 126, 27),
		Ang = Angle( 7, -90, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(-14, 121, 33.7),
		Ang = Angle(  0, 100, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(-7, 121.9, 33.7),
		Ang = Angle(  0, 94, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(14, 121, 33.7),
		Ang = Angle(  0, 80, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(7, 121.9, 33.7),
		Ang = Angle(  0, 86, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(-47.2, 36.1, 53.45),
		Ang = Angle(  0, 115, 2)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(47.2, 36.1, 53.45),
		Ang = Angle(  0, 65, -2)
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector( -12, -122.6, 29 ),
		Ang = Angle( 80, -90, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector( 12, -122.8, 29 ),
		Ang = Angle( 80, -90, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(21.3, 130, 26.4),
		Ang = Angle( 0, 0, 90)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .6,
		Pos = Vector(-21.3, 130, 26.4),
		Ang = Angle( 0, 180, 90)
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector( 44, -100, 29 ),
		Ang = Angle( 80, 0, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/props_phx/construct/glass/glass_dome360.mdl",
		Scale = .02,
		Pos = Vector( -44, -100, 29 ),
		Ang = Angle( 80, 180, 0),
		Material = "phoenix_storms/gear",
		Color = Color( 255, 255, 255, 140 ),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	{
		Model = "models/lonewolfie/intlightbarsmall.mdl",
		Scale = Vector( 1, 1.3, .4),
		Pos = Vector( -.6, -83, 56.17),
		Ang = Angle( 0, -90, 0),
		Skin = 4
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = .8,
		Pos = Vector(-27, -104, 70.8),
		Ang = Angle( 0, 0, 0)
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = .4,
		Pos = Vector(-22, -108, 63),
		Ang = Angle( 0, 0, 0)
	},
	{
		Model = "models/lonewolfie/policelamp.mdl",
		Scale = .85,
		Pos = Vector(-41, 43, 56.2),
		Ang = Angle( 0, -90, 0)
	},
}

EMV.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 7.8,
		H = 7.3,
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
		W = 15.6,
		H = 14.3,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 3,
		Scale = 1.6,
		VisRadius = 0
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 15.6,
		H = 14.3,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 3,
		Scale = 1.6
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 7.8,
		H = 7.3,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2,
		Scale = 1.4
	},
	mirror = {
		AngleOffset = -90,
		W = 3.6,
		H = 3.6,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1.5,
	},
	grille = {
		AngleOffset = -90,
		W = 3.6,
		H = 3.6,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		WMult = 1.5
	},
	bullbar = {
		AngleOffset = -90,
		W = 3.6,
		H = 3.6,
		Sprite = "sprites/emv/emv_whelen_mini_3"
	},
	rear_vertex = {
		AngleOffset = 90,
		W = 2,
		H = 2,
		Sprite = "sprites/emv/emv_whelen_vertex",
	},
	rear_inner = {
		AngleOffset = 90,
		W =  8,
		H = 8,
		Sprite = "sprites/emv/st_charger_rear_inner",
		Scale = 1,
		WMult = 2,
		VisRadius = 5,
	},
	rear_outer_a = {
		AngleOffset = 90,
		W =  7,
		H = 5,
		Sprite = "sprites/emv/st_charger_rear_outer_a",
		Scale = 1.25,
		WMult = 2,
		VisRadius = 5,
		SourceOnly = false,
	},
	rear_outer_b = {
		AngleOffset = 90,
		W =  4.3,
		H = 2.4,
		Sprite = "sprites/emv/square",
		Scale = .8,
		WMult = 2,
		VisRadius = 5,
		SourceOnly = false,
	},
	rear_outer_c = {
		AngleOffset = 90,
		W =  1.7,
		H = 1,
		Sprite = "sprites/emv/square",
		Scale = .6,
		WMult = 2,
		VisRadius = 5,
		SourceOnly = false,
	},
	traffic = {
		AngleOffset = 90,
		Sprite = "sprites/emv/ta_1x6",
		W = 7.6,
		H = 6.3,
		Scale = 1.2,
		WMult = 2,
	},
	headlight = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
	},
}

EMV.Positions = {
	[1] = { Vector( -24.9, -116.72, 46.7 ), Angle( 180, -13.8, 180 ), "rear_inner" },
	[2] = { Vector( 24.9, -116.72, 46.7 ), Angle( 0, 13.8, 0 ), "rear_inner" },

	[3] = { Vector( -31.02, -114.83, 46.4 ), Angle( 180, -21.2, 180 ), "rear_outer_a" },
	[4] = { Vector( 31.02, -114.83, 46.4 ), Angle( 0, 21.2, 0 ), "rear_outer_a" },

	[5] = { Vector( -35.02, -112.77, 46.2 ), Angle( 0, -32.4, 0 ), "rear_outer_b" },
	[6] = { Vector( 35.02, -112.77, 46.2 ), Angle( 0, 32.4, 0 ), "rear_outer_b" },

	[7] = { Vector( -37.52, -111.17, 45.8 ), Angle( 0, -33.6, 0 ), "rear_outer_c" },
	[8] = { Vector( 37.52, -111.17, 45.8 ), Angle( 0, 33.6, 0 ), "rear_outer_c" },

	[9] = { Vector( -3.5, 0.1, 76.23 ), Angle( 0, 0, -1 ), "liberty_f_main" },
	[10] = { Vector( 3.5, 0.1, 76.23 ), Angle( 0, 0, -1 ), "liberty_f_main" },

	[11] = { Vector( -9.9, 0.1, 76.23 ), Angle( 0, 0, -1 ), "liberty_f_main" },
	[12] = { Vector( 9.9, 0.1, 76.23 ), Angle( 0, 0, -1 ), "liberty_f_main" },

	[13] = { Vector( -25.58, -2.43, 76.25 ), Angle( 0, 32.8, -1 ), "liberty_f_ang" },
	[14] = { Vector( 25.58, -2.43, 76.25 ), Angle( 0, -32.8, -1 ), "liberty_f_ang" },

	[15] = { Vector( -25.58, -11.96, 76.47 ), Angle( -0.5, -32.8, -1 ), "liberty_r_ang" },
	[16] = { Vector( 25.58, -11.96, 76.47 ), Angle( 0.5, 32.8, -1 ), "liberty_r_ang" },

	[17] = { Vector( -16.33, -14.47, 76.49 ), Angle( 0, 0, -1 ), "liberty_r_main" },
	[18] = { Vector( 16.33, -14.47, 76.49 ), Angle( 0, 0, -1 ), "liberty_r_main" },

	[19] = { Vector( -9.9, -14.47, 76.49 ), Angle( 0, 0, -1 ), "liberty_r_main" },
	[20] = { Vector( 9.9, -14.47, 76.49 ), Angle( 0, 0, -1 ), "liberty_r_main" },

	[21] = { Vector( -3.5, -14.47, 76.49 ), Angle( 0, 0, -1 ), "liberty_r_main" },
	[22] = { Vector( 3.5, -14.47, 76.49 ), Angle( 0, 0, -1 ), "liberty_r_main" },

	[23] = { Vector( -16.42, 0.54, 76.16 ), Angle( 0, 0, -1 ), "liberty_takedown" },
	[24] = { Vector( 16.52, 0.54, 76.16 ), Angle( 0, 0, -1 ), "liberty_takedown" },

	[25] = { Vector( -30.37, -7.23, 76.24 ), Angle( 0, 90, -1 ), "liberty_takedown" },
	[26] = { Vector( 30.37, -7.23, 76.24 ), Angle( 0, -90, -1 ), "liberty_takedown" },

	[27] = { Vector( -7, 122.22, 33.7 ), Angle( 0, 4, 0 ), "grille" },
	[28] = { Vector( 7, 122.22, 33.7 ), Angle( 0, -4, 0 ), "grille" },

	[29] = { Vector( -14, 121.27, 33.7 ), Angle( 0, 10, 0 ), "grille" },
	[30] = { Vector( 14, 121.27, 33.7 ), Angle( 0, -10, 0 ), "grille" },

	[31] = { Vector( -47.31, 36.38, 53.45 ), Angle( 2, 25, 0 ), "mirror" },
	[32] = { Vector( 47.31, 36.38, 53.45 ), Angle( -2, -25, 0 ), "mirror" },

	[33] = { Vector( -22.12, -83.54, 56.7 ), Angle( 0, 0, 0 ), "traffic" },
	[34] = { Vector( 22.12, -83.54, 56.7 ), Angle( 0, 0, 0 ), "traffic" },

	[35] = { Vector( -13.42, -83.54, 56.7 ), Angle( 0, 0, 0 ), "traffic" },
	[36] = { Vector( 13.42, -83.54, 56.7 ), Angle( 0, 0, 0 ), "traffic" },

	[37] = { Vector( -4.76, -83.54, 56.7 ), Angle( 0, 0, 0 ), "traffic" },
	[38] = { Vector( 4.76, -83.54, 56.7 ), Angle( 0, 0, 0 ), "traffic" },

	[39] = { Vector( -44.23, -100.04, 28.99 ), Angle( 0, -81.6, 0 ), "rear_vertex" },
	[40] = { Vector( 44.23, -100.04, 28.99 ), Angle( 0, 81.6, 0 ), "rear_vertex" },

	[41] = { Vector( -12, -122.85, 29 ), Angle( 0, 0, -7 ), "rear_vertex" },
	[42] = { Vector( 12, -122.85, 29 ), Angle( 0, 0, -7 ), "rear_vertex" },

	[43] = { Vector( -21.54, 130, 26.4 ), Angle( -90, 90, 0 ), "bullbar" },
	[44] = { Vector( 21.54, 130, 26.4 ), Angle( 90, -90, 0 ), "bullbar" },

	[45] = { Vector( 36.7, 108.38, 35.58 ), Angle( 0, 0, 0 ), "headlight" },
	[46] = { Vector( -36.7, 108.38, 35.58 ), Angle( 0, 0, 0 ), "headlight" },

}


EMV.Sections = {
	["liberty_corner"] = {
		{ { 13, R }, { 14, B }, { 15, R }, { 16, B } },
		{ { 13, R }, { 15, R } },
		{ { 14, B }, { 16, B } },
	},
	["liberty_inboard"] = {
		{ { 9, R }, { 10, B }, { 21, R }, { 22, B } },
		{ { 9, R }, { 22, B } },
		{ { 21, R }, { 10, B } },
	},
	["liberty_outboard"] = {
		{ { 11, R }, { 12, B }, { 17, R }, { 18, B }, { 19, R }, { 20, B } },
		{ { 11, R }, { 17, R }, { 19, R } },
		{ { 12, B }, { 18, B }, { 20, B } },
	},
	["liberty_takedowns"] = {
		{ { 23, W }, { 24, W } }
	},
	["liberty_alley"] = {
		{ { 25, W }, { 26, W } }
	},
	["front_lamp"] = {

	},
	["traffic_advisor"] = {
		{ { 33, A }, { 34, A }, { 35, A }, { 36, A }, { 37, A }, { 38, A } },
		{ { 33, A } },
		{ { 33, A }, { 35, A }, },
		{ { 35, A }, { 37, A }, },
		{ { 37, A }, { 38, A }, },
		{ { 38, A }, { 36, A }, },
		{ { 36, A }, { 34, A }, },
		{ { 34, A } },
		{ { 37, A }, { 38, A } },
		{ { 35, A }, { 36, A } },
		{ { 33, A }, { 34, A } },
		{ { 33, A }, { 34, A }, { 35, A }, { 36, A },}
	},
	["grille_lights"] = {
		{ { 27, B }, { 28, R }, { 29, B }, { 30, R } },
		{ { 27, B }, { 29, B }, },
		{ { 28, R }, { 30, R }, },
		{ { 27, B }, { 30, R }, },
		{ { 28, R }, { 29, B }, },
	},
	["bullbar"] = {
		{ { 43, W }, { 44, W }, }
	},
	["rear_vertex"] = {
		{ { 41, R }, { 42, B } },
		{ { 41, R } },
		{ { 42, B } },
	},
	["side_vertex"] = {
		{ { 39, W }, { 40, W } },
	},
	["mirrors"] = {
		{ { 31, R }, { 32, B } },
		{ { 31, R } },
		{ { 32, B } },
	},
	["headlights"] = {
		{ { 45, CW, { 16, 0, 10 } }, { 46, CW, { 16, 0, 0 } }, }
	},
	["rear_hideaways"] = {
		{ { 1, B }, { 2, B }, { 3, R }, { 4, R }, { 5, R }, { 6, R }, { 7, R }, { 8, R } },
		{ { 1, B }, { 2, B }, },
		{ { 3, R }, { 4, R }, { 5, R }, { 6, R }, { 7, R }, { 8, R } },
		{ { 1, B }, { 4, R }, { 6, R }, { 8, R } },
		{ { 2, B }, { 3, R }, { 5, R }, { 7, R } },
	}
}

EMV.Patterns = {
	["liberty_corner"] = {
		["all"] = {
			1
		},
		["flash"] = {
			1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0,
		},
		["priority"] = {
			1, 0, 1, 0,
			2, 0, 2, 0,
			3, 0, 3, 0,
			1, 0, 1, 0,
			3, 3, 0, 3, 0,
			2, 2, 0, 2, 0
		}
	},
	["liberty_inboard"] = {
		["all"] = {
			1
		},
		["alt"] = {
			2, 0, 3, 0
		}
	},
	["liberty_outboard"] = {
		["all"] = {
			1
		},
		["alt"] = {
			2, 2, 0, 3, 3, 0
		},
		["priority"] = {
			1, 3, 2, 3, 0,
			3, 0, 3, 0, 3,
			0, 1, 0, 2, 0,
			3, 1, 3, 2, 0
		}
	},
	["liberty_takedowns"] = {
		["all"] = {
			1
		},
	},
	["liberty_alley"] = {
		["all"] = {
			1
		},
	},
	["front_lamp"] = {
		["on"] = {

		},
	},
	["traffic_advisor"] = {
		["all"] = {
			1
		},
		["right"] = {
			2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 0, 8, 0, 8, 0, 8, 0, 0, 0, 0, 0,
		},
		["left"] = {
			8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0,
		},
		["diverge"] = {
			9, 9, 10, 10, 11, 11, 0, 11, 0, 11, 0, 11, 0, 0, 0, 0, 0
		},
		["warn"] = {
			12, 0, 12, 0, 12, 0, 9, 0, 9, 0, 9, 0
		},
	},
	["grille_lights"] = {
		["all"] = {
			1
		},
		["code1"] = {
			2, 2, 2, 0, 3, 3, 3, 0
		},
		["flash"] = {
			2, 0, 2, 0, 3, 0, 3, 0, 0, 0
		},
		["priority"] = {
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 0, 2, 0, 3, 0, 3, 0,
			2, 0, 2, 0, 3, 0, 3, 0,
			4, 0, 4, 0, 5, 0, 5, 0,
			4, 0, 4, 0, 5, 0, 5, 0,
			4, 0, 4, 0, 5, 0, 5, 0,
		}
	},
	["bullbar"] = {
		["all"] = {
			1
		},
		["flash"] = {
			1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0,
		}
	},
	["rear_vertex"] = {
		["all"] = {
			1
		},
		["flash"] = {
			2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0
		},
		["alt"] = {
			2, 0, 2, 0, 2, 0,
			3, 0, 3, 0, 3, 0
		}
	},
	["side_vertex"] = {
		["all"] = {
			1
		},
		["flash"] = {
			1, 0, 1, 0, 1, 0, 0, 0, 0, 0,
		}
	},
	["mirrors"] = {
		["all"] = {
			1
		},
		["alt"] = {
			2, 0, 2, 0, 2, 0, 0,
			3, 0, 3, 0, 3, 0, 0,
			2, 0, 2, 0, 2, 0, 0,
			3, 0, 3, 0, 3, 0, 0,
			2, 0, 2, 0, 2, 0, 0,
			3, 0, 3, 0, 3, 0, 0,
			2, 0, 2, 0, 2, 0, 0,
			3, 0, 3, 0, 3, 0, 0,
			3, 3, 0, 2, 2, 0, 3,
			3, 0, 2, 2, 0, 0, 0,
		}
	},
	["headlights"] = {
		["wig-wag"] = {
			1
		},
	},
	["rear_hideaways"] = {
		["all"] = {
			1
		},
		["flash"] = {
			2, 0, 2, 0, 3, 0, 3, 0
		},
		["alt"] = {
			4, 0, 4, 0, 5, 0, 5, 0
		}
	}
}


EMV.Sequences = {
	Sequences = {
		-- {
		-- 	Name = "ALL",
		-- 	Components = {
		-- 		["rear_hideaways"] = "all",
		-- 		["liberty_inboard"] = "all",
		-- 		["liberty_outboard"] = "all",
		-- 		["liberty_corner"] = "all",
		-- 		["mirrors"] = "all",
		-- 		["grille_lights"] = "all",
		-- 		["traffic_advisor"] = "all",
		-- 		["side_vertex"] = "all",
		-- 		["rear_vertex"] = "all",
		-- 		["bullbar"] = "all",
		-- 	}
		-- },
		{
			Name = "CODE 1",
			Components = {
				["rear_hideaways"] = "alt",
				["traffic_advisor"] = "warn",
				["grille_lights"] = "code1"
			}
		},
		{
			Name = "CODE 2",
			Components = {
				["liberty_corner"] = "flash",
				["liberty_outboard"] = "alt",
				["grille_lights"] = "flash",
				["rear_hideaways"] = "alt",
				["traffic_advisor"] = "warn",
			},
		},
		{
			Name = "CODE 3",
			Components = {
				["liberty_corner"] = "priority",
				["side_vertex"] = "flash",
				["rear_hideaways"] = "alt",
				["traffic_advisor"] = "warn",
				["rear_vertex"] = "alt",
				["bullbar"] = "flash",
				["mirrors"] = "alt",
				["grille_lights"] = "priority",
				["liberty_inboard"] = "alt",
				["liberty_outboard"] = "alt",
				["headlights"] = "wig-wag"
			},
			Disconnect = {
				1, 2
			}
		}
	},
	Traffic = {
		{
			Name = "LEFT",
			Components = {
				["traffic_advisor"] = "left",
			},
		},
		{
			Name = "DIVERGE",
			Components = {
				["traffic_advisor"] = "diverge"
			},
		},
		{
			Name = "RIGHT",
			Components = {
				["traffic_advisor"] = "right",
			},
		},
		{
			Name = "WARN",
			Components = {
				["traffic_advisor"] = "warn",
			}
		}
	},
	Illumination = {
		{
			Name = "TAKEDOWN",
			Components = {
				{ 23, W, 2 }, { 24, W, 2 }
			},
			Lights = {
				{ Vector( -16.42, 0.54, 76.16 ), Angle( 5, 90, 0 ), "takedowns" },
				{ Vector( 16.42, 0.54, 76.16 ), Angle( 5, 90, 0 ), "takedowns" },
			},
		},
		{
			Name = "ALLEY",
			Components = {
				{ 25, W, 2 }, { 26, W, 2 }
			},
			Lights = {
				{ Vector( -34, -7.23, 90 ), Angle( 10, 0, 0 ), "alley" },
				{ Vector( 34, -7.23, 90 ), Angle( 10, 180, 0 ), "alley" },
			},
		},
	}
}

EMV.Lamps = {
	["takedowns"] = {
		Color = Color(96,96,116,255),
		Texture = "effects/flashlight001",
		Near = 8,
		FOV = 70,
		Distance = 700,
	},
	["alley"] = {
		Color = Color(48,48,64,255),
		Texture = "effects/flashlight001",
		Near = 100,
		FOV = 60,
		Distance = 500,
	}
}


local V = {
				// Required information
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "Evo City Police",

				// Optional information
				Author = "StateTrooper, Turn10, Schmal",
				Information = "vroom vroom",
				Model =	"models/sentry/15hellcat.mdl",

			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/sentry/hellcat.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = "st_charger"

}

list.Set( "Vehicles", V.Name, V )

hook.Add( "Initialize", "Photon.STCharger.PhotonCheck", function() 
	timer.Simple( 5, function()
	if not Photon then
		if CLIENT then
			if LocalPlayer() then
					LocalPlayer():ChatPrint( "\n[WARNING]: You have downloaded the ECPD Charger pack, however you do not have the Photon lighting engine. The car will not spawn correctly.\n\nPlease visit https://photon.lighting/ to download Photon.")
				end
			end
		end
	end)
end)