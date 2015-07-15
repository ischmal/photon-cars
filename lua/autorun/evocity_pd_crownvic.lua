AddCSLuaFile()

EMV_DEBUG = false

local name = "ECPD Crown Victoria"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 12

EMV.Color = Color(255, 255, 255)
EMV.Skin = 2

EMV.BodyGroups = {
	{5, 1}, -- equipment
	{7, 1}, -- rims
}

EMV.Props = {
	{
		Model = "models/lonewolfie/halogenlightbarmed.mdl",
		Scale = .92,
		Pos = Vector(.6, -8, 66),
		Ang = Angle( 0, -90, 0),
	}
}

EMV.Meta = {
	f_for = {
		AngleOffset = -90,
		W = 10,
		H = 6,
		Sprite = "sprites/emv/lightbar",
	},
	r_low = {
		AngleOffset = 90,
		W = 18,
		H = 10,
		Sprite = "sprites/emv/lightbar",
		Scale = 2,
		WMult = 2
	},
	reverse = {
		AngleOffset = 90,
		W = 10,
		H = 11,
		Sprite = "sprites/emv/crownvic_reverse",
		Scale = 1,
		WMult = .5
	},
	headlight = {
		AngleOffset = -90,
		W = 13,
		H = 14,
		Sprite = "sprites/emv/crownvic_headlight",
		Scale = 3,
		WMult = 1
	},
	lightbar_cir = {
		AngleOffset = -90,
		W = 8,
		H = 8,
		Sprite = "sprites/emv/circular_src",
		Scale = 3,
	},
	lightbar_r = {
		AngleOffset = "R",
		W = 7,
		H = 7,
		Sprite = "sprites/emv/circular_src",
		Scale = 2,
		Speed = 10,
	},
	lightbar_l = {
		AngleOffset = "R",
		W = 7,
		H = 7,
		Sprite = "sprites/emv/circular_src",
		Scale = 2,
		Speed = -10,
	},
}

EMV.Positions = {

	[1] = { Vector(-8.6, 118.9, 32.4), Angle(0,0,0), "f_for" },
	[2] = { Vector(8.6, 118.9, 32.4), Angle(0,0,0), "f_for" },

	[3] = { Vector(-11.2, -68.4, 50.7), Angle(0,-6,0), "r_low" },
	[4] = { Vector(11.2, -68.4, 50.7), Angle(0,6,0), "r_low" },

	[5] = { Vector( -11.3, -112.2, 36.2 ), Angle( 180, -1, 183.1 ), "reverse" },
	[6] = { Vector( 11.3, -112.2, 36.2 ), Angle( 0, 1, -3.1 ), "reverse" },

	[7] = { Vector( -28, 116.7, 32 ), Angle(0,14,20), "headlight" },
	[8] = { Vector( 28, 116.7, 32 ), Angle(180,-14,160), "headlight" },

	[9] = { Vector( -23.7, -8, 72.4 ), Angle(0,0,0), "lightbar_cir" },
	[10] = { Vector( 24, -8, 72.4 ), Angle(0,0,0), "lightbar_cir" },

	[11] = { Vector( -18, -10, 72.4 ), Angle(0,0,0), "lightbar_l" },
	[12] = { Vector( 18, -10, 72.4 ), Angle(0,0,0), "lightbar_r" },

	[13] = { Vector( -12, -7, 72.4 ), Angle(0,0,0), "lightbar_r" },
	[14] = { Vector( 12, -7, 72.4 ), Angle(0,0,0), "lightbar_l" },

	[15] = { Vector( -20, -13, 72.4 ), Angle(0,0,0), "lightbar_r" },
	[16] = { Vector( 20, -13, 72.4 ), Angle(0,0,0), "lightbar_l" },

	[17] = { Vector( -12, -13, 72.4 ), Angle(0,0,0), "lightbar_r" },
	[18] = { Vector( 12, -13, 72.4 ), Angle(0,0,0), "lightbar_l" },

}

EMV.Sections = {
	["lightbar_out"] = {
		{ {9, R, {16, 0, 8} }, {10, B, {16, 0, 0}} }
	},
	["lightbar_in"] = {
		{ {11, R}, {12, B}, {13, R}, {14, B}, {15, R}, {16, B}, {17, R}, {18, B} }
	},
	["grille"] = { 
		{ {1, R}, {2, B} },
		{ {1, R} },
		{ {2, B} },
	},
	["rear"] = {
		{ {3, B}, {4, R} },
		{ {4, R} },
		{ {3, B} },
	},
	["reverse"] = {
		{ {5, W}, {6, W} }
	},
	["headlights"] = {
		{ {7, SW, {16, 0, 0} }, { 8, SW, {16, 0, 10} } }
	}
}

EMV.Patterns = {
	["lightbar_out"] = {
		["all"] = {
			1
		}
	},
	["lightbar_in"] = {
		["all"] = {
			1
		}
	},
	["grille"] = {
		["all"] = {
			1
		},
		["code2"] = {
			2, 2, 2, 0, 3, 3, 3, 0
		},
		["code3"] = {
			2, 0, 2, 0, 2, 0, 3, 0, 3, 0, 3, 0, 1, 0, 1, 0, 1, 0, 1, 0
		}
	},
	["rear"] = {
		["all"] = {
			1
		},
		["code1"] = {
			2, 2, 2, 2, 3, 3, 3, 3, 1, 1, 1, 1
		},
		["code2"] = {
			2, 2, 2, 0, 3, 3, 3, 0
		},
		["code3"] = {
			2, 2, 0, 3, 3, 0, 2, 2, 0, 3, 3, 0, 2, 2, 0, 3, 3, 0, 2, 2, 0, 3, 3, 0,
			2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 2, 3, 0, 0
		}
	},
	["reverse"] = {
		["code2"] = {
			1, 1, 0, 0
		}
	},
	["headlights"] = {
		["wigwag"] ={
			1
		}
	}
}


EMV.Sequences = {
	Sequences = {
		{
			Name = "CODE 1",
			Components = {
				["lightbar_out"] = "all",
			}
		},
		{
			Name = "CODE 2",
			Components = {
				["lightbar_out"] = "all",
				["lightbar_in"] = "all",
			}
		},
		{
			Name = "CODE 3",
			Components = {
				["lightbar_out"] = "all",
				["lightbar_in"] = "all",
				["grille"] = "code2",
				["rear"] = "code2",
				["reverse"] = "code2",
				["headlights"] = "wigwag",
			},
			Disconnect = {
				6, 7, 10, 11
			}
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
				Model =	"models/sentry/07crownvic_uc.mdl",

			
				KeyValues = {				
					vehiclescript =	"scripts/vehicles/sentry/07crownvic.txt"
			    },
					    
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = "sgm_cvpi"
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end