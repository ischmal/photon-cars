AddCSLuaFile()

EMV_DEBUG = false

local name = "ECPD Dodge Charger Hellcat (Unmarked)"

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
EMV.Skin = 0

EMV.BodyGroups = {}

EMV.Props = {
	{
		Model = "models/lonewolfie/whelenavenger_double.mdl",
		Scale = 1,
		Pos = Vector( 18, 26, 65),
		Ang = Angle( 0, 90, 0)
	},
	{
		Model = "models/lonewolfie/whelenavenger_double.mdl",
		Scale = 1,
		Pos = Vector( -18, -63, 65),
		Ang = Angle( 0, -90, 0)
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
	avenger_f = {
		AngleOffset = -90,
		W = 5.6,
		H = 5.9,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2,
		Scale = 1.4
	},
	avenger_r = {
		AngleOffset = 90,
		W = 5.6,
		H = 5.9,
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
	headlight = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
	},
	lamp = {
		AngleOffset = -90,
		W = 6,
		H = 6,
		Sprite = "sprites/emv/light_circle",
		Scale = 3,
	}
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

	[9] = { Vector( -7, 122.22, 33.7 ), Angle( 0, 4, 0 ), "grille" },
	[10] = { Vector( 7, 122.22, 33.7 ), Angle( 0, -4, 0 ), "grille" },

	[11] = { Vector( -14, 121.27, 33.7 ), Angle( 0, 10, 0 ), "grille" },
	[12] = { Vector( 14, 121.27, 33.7 ), Angle( 0, -10, 0 ), "grille" },

	[13] = { Vector( -47.31, 36.38, 53.45 ), Angle( 2, 25, 0 ), "mirror" },
	[14] = { Vector( 47.31, 36.38, 53.45 ), Angle( -2, -25, 0 ), "mirror" },

	[15] = { Vector( -44.23, -100.04, 28.99 ), Angle( 0, -81.6, 0 ), "rear_vertex" },
	[16] = { Vector( 44.23, -100.04, 28.99 ), Angle( 0, 81.6, 0 ), "rear_vertex" },

	[17] = { Vector( -12, -122.85, 29 ), Angle( 0, 0, -7 ), "rear_vertex" },
	[18] = { Vector( 12, -122.85, 29 ), Angle( 0, 0, -7 ), "rear_vertex" },

	[19] = { Vector( -21.54, 130, 26.4 ), Angle( -90, 90, 0 ), "bullbar" },
	[20] = { Vector( 21.54, 130, 26.4 ), Angle( 90, -90, 0 ), "bullbar" },

	[21] = { Vector( 36.7, 108.38, 35.58 ), Angle( 0, 0, 0 ), "headlight" },
	[22] = { Vector( -36.7, 108.38, 35.58 ), Angle( 0, 0, 0 ), "headlight" },

	[23] = { Vector( 20.62, 25.25, 64.13 ), Angle( 0, 0, 0 ), "avenger_f" },
	[24] = { Vector( 15.39, 25.25, 64.13 ), Angle( 0, 0, 0 ), "avenger_f" },

	[25] = { Vector( -20.6, -62.32, 64.13 ), Angle( 0, 0, 0 ), "avenger_r" },
	[26] = { Vector( -15.4, -62.32, 64.13 ), Angle( 0, 0, 0 ), "avenger_r" },

	[27] = { Vector( -39.03, 45.89, 51.81 ), Angle( -17.12, 2.23, -7.15 ), "lamp" },

}


EMV.Sections = {
	["avenger_front"] = {
		{ { 23, B }, { 24, R } },
		{ { 23, B }, },
		{ { 24, R } },

	},
	["avenger_rear"] = {
		{ { 25, R }, { 26, B } },
		{ { 26, B } },
		{ { 25, R } },
	},
	["grille_lights"] = {
		{ { 9, B }, { 10, R }, { 11, B }, { 12, R } },
		{ { 9, B }, { 11, B }, },
		{ { 10, R }, { 12, R }, },
		{ { 9, B }, { 12, R }, },
		{ { 10, R }, { 11, B }, },
	},
	["bullbar"] = {
		{ { 19, W }, { 20, W }, }
	},
	["rear_vertex"] = {
		{ { 17, R }, { 18, B } },
		{ { 17, R } },
		{ { 18, B } },
	},
	["side_vertex"] = {
		{ { 15, W }, { 16, W } },
	},
	["mirrors"] = {
		{ { 13, R }, { 14, B } },
		{ { 13, R } },
		{ { 14, B } },
	},
	["headlights"] = {
		{ { 21, CW, { 16, 0, 10 } }, { 22, CW, { 16, 0, 0 } }, }
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
	["avenger_front"] = {
		["all"] = {
			1
		},
		["flash"] = {
			2, 0, 3, 0
		}
	},
	["avenger_rear"] = {
		["all"] = {
			1
		},
		["flash"] = {
			2, 0, 3, 0
		}
	},
	["front_lamp"] = {
		["on"] = {

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
		-- 		["mirrors"] = "all",
		-- 		["grille_lights"] = "all",
		-- 		["side_vertex"] = "all",
		-- 		["rear_vertex"] = "all",
		-- 		["bullbar"] = "all",
		-- 		["avenger_front"] = "all",
		-- 		["avenger_rear"] = "all"
		-- 	}
		-- },
		{
			Name = "CODE 1",
			Components = {
				["rear_hideaways"] = "alt",
				["grille_lights"] = "code1"
			}
		},
		{
			Name = "CODE 2",
			Components = {
				["grille_lights"] = "flash",
				["rear_hideaways"] = "alt",
				["avenger_front"] = "flash",
				["avenger_rear"] = "flash",
			},
		},
		{
			Name = "CODE 3",
			Components = {
				["avenger_front"] = "flash",
				["side_vertex"] = "flash",
				["rear_hideaways"] = "alt",
				["rear_vertex"] = "alt",
				["bullbar"] = "flash",
				["mirrors"] = "alt",
				["grille_lights"] = "priority",
				["headlights"] = "wig-wag",
				["avenger_rear"] = "flash",
			},
			Disconnect = {
				1, 2
			}
		}
	},
	Illumination = {
		{
			Name = "LAMP",
			Components = {
				{ 27, W },
			},
			Lights = {
				{ Vector( -39.03, 45.89, 52 ), Angle( 0, 90, 0 ), "lamp" },
			},
		},
	}
}

EMV.Lamps = {
	["lamp"] = {
		Color = Color(96,96,116,255),
		Texture = "effects/flashlight001",
		Near = 8,
		FOV = 70,
		Distance = 700,
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