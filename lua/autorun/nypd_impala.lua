local name = "NYPD Impala"

local A = "AMBER"
local R = "RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 4

EMV.Color = nil
EMV.Skin = 3

EMV.BodyGroups = {
	{2, 2}, -- equipment
	{7, 1}, -- rear window lights
	{8, 1}, -- bumper
	{9, 1}, -- laptop
	{10, 1}, -- lamp
	{13, 1}, -- antenne
	{14, 1}, -- alpr
	{15, 1}, -- rims
}

EMV.Props = {
	{
		Model = "models/lonewolfie/vector_lightbar10.mdl",
		Scale = 1.14,
		Pos = Vector( -.2, -8, 74.15 ),
		Ang = Angle( 0, 90, 0),
		Skin = 5
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .8,
		Pos = Vector(-10, 115.5, 29),
		Ang = Angle( 0, 100, 0)
	},
	{
		Model = "models/lonewolfie/ledlightholder.mdl",
		Scale = .8,
		Pos = Vector(10, 115.5, 29),
		Ang = Angle( 0, 80, 0)
	},
}

local height = 76.4

EMV.Positions = {

	{ Vector(0,-1,height), Angle(0,180,0), "vector_white" }, --  1

	{ Vector(-7.8,-5,height), Angle(0,0,0), "vector_red" }, --  2 right
	{ Vector(7.8,-5,height), Angle(0,0,0), "vector_red" }, -- 3 left

	{ Vector(-14.3,-8.5,height), Angle(0,270,0), "vector_white" }, --  4 right
	{ Vector(14.3,-8.5,height), Angle(0,270,0), "vector_white" }, -- 5 left

	{ Vector(-22,-13,height), Angle(0,90,0), "vector_red" }, --  6 right
	{ Vector(22,-13,height), Angle(0,90,0), "vector_red" }, -- 7 left

	{ Vector(20.9, -60.3, 63), Angle(0,0,0), "r_win" }, -- 8
	{ Vector(-19.4, -60.3, 63), Angle(0,0,0), "r_win" }, -- 9

	{ Vector(15.7, -60.3, 63), Angle(0,0,0), "r_win" }, -- 10
	{ Vector(-14.2, -60.3, 63), Angle(0,0,0), "r_win" }, -- 11

	{ Vector(10, 115.9, 29), Angle(0,-10,0), "f_grille" }, -- 12
	{ Vector(-10, 115.9, 29), Angle(0,10,0), "f_grille" }, -- 13

	{ Vector(2.3, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 14
	{ Vector(-3, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 15

	{ Vector(7.8, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 16
	{ Vector(-8.5, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 17

	{ Vector(13.3, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 18
	{ Vector(-14.05, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 19

	{ Vector(18.8, -21.81, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 20
	{ Vector(-19.35, -21.8, 72.5), Angle(0,0,0), "r_trf_advisor" }, -- 21

	{ Vector(-33.4,101,32.5), Angle(0,30,0), "head_low" }, --  22
	{ Vector(33.4,101,32.5), Angle(0,-30,0), "head_low" }, --  23

	{ Vector(-28,106,31.5), Angle(0,30,0), "head_high" }, --  24
	{ Vector(28,106,31.5), Angle(0,-30,0), "head_high" }, --  25

	{ Vector(-32,-114,40), Angle(0,-20,-15), "reverse" }, --  26
	{ Vector(32,-114,40), Angle(0,20,-15), "reverse" }, --  27
	
	{ Vector( -40.7, 41.5, 51.39 ), Angle( 0, 0, 0 ), "lamp" }, --- 28
	
}

EMV.Sections = {
	["lightbar"] = {
		{ {6, R}, {7, R} },
		{ {1, W}, {2, R}, {3, R}, {4, W}, {5, W}, {6, R}, {7, R} },
	},
	["rear"] = {
		{ {8, R}, {9, R} },
		{ {10, B}, {11, B} },
	},
	["bumper"] = {
		{ {12, R} },
		{ {13, R} },
		{ {12, R}, {13, R} }
	},
	["traffic"] = {
	--- CENTER TRAFFIC
		{ {21, A}, {20, A}, {19, A}, {18, A}, },
		{ {17, A}, {16, A}, {15, A}, {14, A}, },
	--- LEFT TRAFFIC 
	    { {21, A} },
		{ {21, A}, {19, A} },
		{ {19, A}, {17, A} },
		{ {17, A}, {15, A} },
		{ {15, A}, {14, A} },
		{ {14, A}, {16, A} },
		{ {16, A}, {18, A} },
		{ {18, A}, {20, A} },
		{ {21, A}, {19, A}, {17, A}, {15, A}, {14, A}, {16, A}, {18,A}, {20, A} },
	--- RIGHT TRAFFIC
	    { {20, A} },
		{ {20, A}, {18, A} },
		{ {18, A}, {16, A} },
		{ {16, A}, {14, A} },
		{ {14, A}, {15, A} },
		{ {15, A}, {17, A} },
		{ {17, A}, {19, A} },
		{ {19, A}, {21, A} },
		{ {21, A}, {19, A}, {17, A}, {15, A}, {14, A}, {16, A}, {18,A}, {20, A} },	    
	},
	["low beams"] = {
		{ {22, CW, 1} },
		{ {23, CW, 1} },
	},
	["high beams"] = {
		{ {24, SW, .5}, {25, SW, 1} },
		{ {25, SW, .5}, {24, SW, 1} },
		{ {25, SW, 1}, {24, SW, 1} },
	},
	["rearhide"] = {
		{ {26, CW, 1} },
		{ {27, CW, 1} },
		{ {27, CW, 1}, {26, CW, 1} }
	}
}

EMV.Patterns = { -- 0 = blank
	["lightbar"] = {
		["code1"] = {
			1
		},
		["code2"] = {
			2
		}
	},
	["rear"] = {
		["alt_slow"] = {
			1, 1, 1, 1, 1, 2, 2, 2, 2, 2
		},
		["alt_med"] = {
			1, 1, 1, 2, 2, 2
		},
		["flash"] = {
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0
		}
	},
	["traffic"] = {
		["code2"] = {
			1, 1, 1, 1, 2, 2, 2, 2
		},
		["code3"] = {
			1, 1, 0, 1, 1, 0, 2, 2, 0, 2, 2, 0
		},
		["left"] = {
		    3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10,11,11,0,11,11
		},
		["right"] = {
		    12,12,12,13,13,13,14,14,14,15,15,15,16,16,16,17,17,17,18,18,18,19,19,19,20,20,0,20,20,
		},
		["center"] = {
			1, 1, 1, 1, 2, 2, 2, 2
		}
	},
	["bumper"] = {
		["alt_slow"] = {
			1, 1, 1, 1, 2, 2, 2, 2
		},
		["flash"] = {
			1, 0, 1, 0, 2, 0, 2, 0
		}
	},
	["low beams"] = {
		["flash"] = {
			1, 0, 1, 0, 2, 0, 2, 0
		}
	},
	["high beams"] = {
		["wigwag"] = {
			1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2
		},
		["steady"] = {
			3
		}
	},
	["rearhide"] = {
		["flash"] = {
			1, 0, 1, 0, 2, 0, 2, 0
		},
		["steady"] = {
			3
		}
	}
}

EMV.Lamps = {
	["lamp"] = {
		Color = Color(200,200,200,255),
		Texture = "effects/flashlight001",
		Near = 8,
		FOV = 80,
		Distance = 1300,
	},
}

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Components = {
				["lightbar"] = "code1", 
				["rear"] = "alt_slow"
			},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Components = {
				["lightbar"] = "code2", 
				["rear"] = "alt_med",
				["traffic"] = "code2",
				["bumper"] = "alt_slow",
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {
				["lightbar"] = "code2", 
				["rear"] = "flash",
				["traffic"] = "code3",
				["bumper"] = "flash",
				["low beams"] = "flash",
				["high beams"] = "wigwag",
				["rearhide"] = "flash",
			},
			Disconnect = { 10, 11 }
		},
	},
	Traffic = {
		{
			Name = "LEFT",
			Components = {
			["traffic"] = "left",
			},
			Disconnect = {}
		},
	    {
			Name = "RIGHT",
			Components = {
			["traffic"] = "right",
			
			},
			Disconnect = {}
		},
	    {
			Name = "DIVERGE",
			Components = {
			["traffic"] = "center",
			
			},
			Disconnect = {}
		},
	},
	Illumination = {
		{
			Name = "LAMP",
			Components = {
				{ 28, W, 3 }
			},
			Lights = {
				{ Vector( -41.4, 45.5, 71.89 ), Angle( 20, 90, -0 ), "lamp" },
			},
			Disconnect = { }
		},
	}
}

EMV.Meta = {
	vector_red = {
		AngleOffset = "R",
		Scale = 2.4,
		W = 12,
		H = 12,
		Sprite = "sprites/emv/emv_lightglow",
		Speed = 10,
		VisRadius = 1
	},
	vector_white = {
		AngleOffset = "R",
		Scale = 1,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/emv_lightglow",
		Speed = -8,
	},
	lamp = {
		AngleOffset = -90,
		W = 10,
		H = 10,
		Scale = 1,
		Sprite = "sprites/emv/circular_src"
	},
	r_win = {
		AngleOffset = 90,
		W = 5.7,
		H = 5.8,
		Sprite = "sprites/emv/emv_whelen_src"
	},
	f_grille = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		Sprite = "sprites/emv/emv_whelen_mini_3"
	},
	r_trf_advisor = {
		AngleOffset = 90,
		W = 5,
		H = 7,
		Sprite = "sprites/emv/led_lightbar"
	},
	head_low = {
		AngleOffset = -90,
		W = 12,
		H = 10,
		Sprite = "sprites/emv/circular_src",
		Scale = 1,
		VisRadius = 16,
	},
	head_high = {
		AngleOffset = -90,
		W = 10,
		H = 10,
		Sprite = "sprites/emv/circular_src",
		Scale = 2,
		VisRadius = 16,
	},
	reverse = {
		AngleOffset = 90,
		W = 12,
		H = 12,
		Sprite = "sprites/emv/impala_reverse",
		Scale = .6,
		WMult = 1.2
	},
}

local V = {
				// Required information
				Name =	"NYPD Impala",
				Class = "prop_vehicle_jeep",
				Category = "Emergency Vehicles",

				// Optional information
				Author = "LoneWolfie, Schmal",
				Information = "vroom vroom",
				Model =	"models/LoneWolfie/chev_impala_09.mdl",

			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/LWCars/chev_impala_09.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = "lw_impala"
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end