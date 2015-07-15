local name = "NYPD Unmarked Impala"

local A = "AMBER"
local R = "RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 3

EMV.Color = Color(27, 32, 48)
EMV.Skin = 0

EMV.BodyGroups = {
	{2, 2}, -- equipment
	{6, 1}, -- front window lights
	{7, 1}, -- rear window lights
	{9, 1}, -- laptop
	{10, 1}, -- lamp
	{13, 1}, -- antenne
	{15, 1}, -- rims
}

EMV.Props = {
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
	}
}


EMV.Positions = {

	{ Vector(10, 115.9, 29), Angle(0,-10,0), "f_grille" }, -- 1
	{ Vector(-10, 115.9, 29), Angle(0,10,0), "f_grille" }, -- 2

	{ Vector(23.9, 22.6, 60.4), Angle(0,0,0), "f_win" }, -- 3
	{ Vector(-23.9, 22.6, 60.4), Angle(0,0,0), "f_win" }, -- 4

	{ Vector(20.9, -60.3, 63), Angle(0,0,0), "r_win" }, -- 5
	{ Vector(-19.4, -60.3, 63), Angle(0,0,0), "r_win" }, -- 6

	{ Vector(15.7, -60.3, 63), Angle(0,0,0), "r_win" }, -- 7
	{ Vector(-14.2, -60.3, 63), Angle(0,0,0), "r_win" }, -- 8


	{ Vector(-33.4,101,32.5), Angle(0,30,0), "head_low" }, --  9
	{ Vector(33.4,101,32.5), Angle(0,-30,0), "head_low" }, --  10

	{ Vector(-28,106,31.5), Angle(0,30,0), "head_high" }, --  11
	{ Vector(28,106,31.5), Angle(0,-30,0), "head_high" }, --  12

	{ Vector(-32,-114,40), Angle(0,-20,-15), "reverse" }, --  13
	{ Vector(32,-114,40), Angle(0,20,-15), "reverse" }, --  14
	
	{ Vector( -40.7, 41.5, 51.39 ), Angle( 0, 0, 0 ), "lamp" }, -- 15

}

EMV.Sections = {
	["front"] = {
		{ {3, W} },
		{ {4, R} },
		{ {3, W}, {4, R} }
	},
	["rear"] = {
		{ {5, R}, {6, R} },
		{ {7, B}, {8, B} },
		{ {7, B}, {8, B}, {5, B}, {6, B} },
	},
	["bumper"] = {
		{ {1, R} },
		{ {2, R} },
		{ {1, R}, {2, R} }
	},
	["low beams"] = {
		{ {9, CW, 1} },
		{ {10, CW, 1} },
	},
	["high beams"] = {
		{ {11, SW, .5}, {12, SW, 1} },
		{ {12, SW, .5}, {11, SW, 1} },
		{ {11, SW, 1}, {12, SW, 1} },
	},
	["rearhide"] = {
		{ {13, CW, 1} },
		{ {14, CW, 1} },
		{ {13, CW, 1}, {14, CW, 1} }
	}
}

EMV.Patterns = { -- 0 = blank
	["front"] = {
		["alt"] = {
			1, 1, 1, 2, 2, 2
		},
		["flash"] = {
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0
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

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Components = {
				["rear"] = "alt_slow"
			},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Components = {
				["front"] = "alt",
				["rear"] = "alt_med",
				["bumper"] = "alt_slow",
				
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {
				["front"] = "flash",
				["rear"] = "flash",
				["bumper"] = "flash",
				["low beams"] = "flash",
				["high beams"] = "wigwag",
				["rearhide"] = "flash",
			},
			Disconnect = { 10, 11 }
		},
	},
	Illumination = {
		{
			Name = "LAMP",
			Components = {
				{ 15, W, 3 }
			},
			Lights = {
				{ Vector( -41.4, 45.5, 71.89 ), Angle( 20, 90, -0 ), "lamp" },
			},
			Disconnect = { }
		},
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

EMV.Meta = {
	f_win = {
		AngleOffset = -90,
		W = 5.7,
		H = 5.8,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = .8,
		WMult = 2.3
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
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 2.3,
		Scale = .8
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
				Name =	"NYPD Unmarked Impala",
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

