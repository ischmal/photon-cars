AddCSLuaFile()

local name = "Ford F150 Police Interceptor"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 38

EMV.Color = Color( 255, 255, 255 )

EMV.Liveries = {
	["Police"] = {
		["Patrol"] = { "photon/emv_liveries/tal_f150/police-patrol" },
	}
}

EMV.Skin = "photon/emv_liveries/tal_f150/police-patrol"
// EMV.Skin = 0

EMV.BodyGroups = {
	{ 3, 0 },
	{ 7, 2 },
	{ 8, 2 },
	{ 9, 2 },
	{ 10, 4 },
	{ 11, 3 },
	{ 12, 2 },
	{ 13, 1 },
}

EMV.Props = {}

EMV.Meta = {}

EMV.Positions = {}

EMV.Sections = {}

EMV.Patterns = {}


EMV.Sequences = {
	Sequences = {
		{
			Name = "CODE 1",
			Stage = "M1",
			Components = {},
			BG_Components = {
				["Lightbar"] = {
					["1"] = {
						["def_lightbar"] = "marker",
					}
				},
				["Lights_grill"] = {
					["1"] = {
						["grille"] = "code1",
					}
				}
			}
		},
		{
			Name = "CODE 2",
			Stage = "M2",
			Components = {},
			BG_Components = {}
		},
		{
			Name = "CODE 3",
			Stage = "M3",
			Components = {},
			BG_Components = {
				["Lightbar"] = {
					["1"] = {
						["def_lightbar"] = "code3",
					}
				},
				["Lights_grill"] = {
					["1"] = {
						["grille"] = "alt",
					}
				},
				["Lights_rearwindow"] = {
					["1"] = {
						["rear"] = "dir_alt"
					}
				},
				["Lights_frontwindow"] = {
					["1"] = {
						["front_window"] = "code3",
					}
				},
				["Bullbar"] = {
					["1"] = {
						["bullbar"] = "flash",
					}
				}
			},
			Disconnect = {
				14, 15, 1, 2, 3, 4
			}
		},
	},
	Traffic = {
		{
			Name = "LEFT",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	    {
			Name = "RIGHT",
			Stage = "R",
			BG_Components = {},
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	    {
			Name = "DIVERGE",
			Stage = "D",
			BG_Components = {},
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	},
	Illumination = {
		{
			Name = "Takedown",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 0, 90 ), Angle( 45, 90, 0 ), "takedown" },
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
		Scale = 1,
		Pos = Vector( 1, -6.5, 90.5 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},	
	[2] = {
		ID = "Federal Signal Legend",
		Scale = 1.07,
		Pos = Vector( 0, -7.4, 90 ),
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
	//-0.000668 0.000063 -1.000000

	[8] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( -37, -38, 63.5),
		Ang = Angle( 0, 90, -90),
		AutoPatterns = true,
	},
	[9] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( 38, -38, 63.5),
		Ang = Angle( 0, -90, -90 ),
		AutoPatterns = true,
	},
	[10] = {
		ID = "Whelen 700",
		Scale = .66,
		Pos = Vector( 11, -112.5, 50),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "BLUE",
		Phase = "A",
		AutoPatterns = true,
	},
	[11] = {
		ID = "Whelen 700",
		Scale = .66,
		Pos = Vector( -11, -112.5, 50),
		Ang = Angle( 0, -6, 90 ),
		Color1 = "RED",
		Phase = "B",
		AutoPatterns = true,
	},
	[12] = {
		ID = "Tomar 200S Rear",
		Scale = .8,
		Pos = Vector( 1, -55, 87.6 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
	},
	[13] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, 29.5, 78.6),
		Ang = Angle( 0, 90, 0 ),
		AutoPatterns = true,
	},
	[14] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = .98,
		Pos = Vector( 0, -9, 89.4 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[15] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = .98,
		Pos = Vector( 0, -9, 89.4 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[16] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0, 58.5, 67 ),
		Ang = Angle( 0, 90, 0),
		AutoPatterns = true,
	},
	[17] = {
		ID = "Whelen 700",
		Scale = .8,
		Pos = Vector( 18, 120.8, 45.5 ),
		Ang = Angle( 0, -7, -80),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A"
	},
	[18] = {
		ID = "Whelen 700",
		Scale = .8,
		Pos = Vector( -16, 120.8, 45.5 ),
		Ang = Angle( 0, 7, -80),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B"
	},
	[19] = {
		ID = "Whelen 700",
		Scale = .8,
		Pos = Vector( 10, 121.8, 45.5 ),
		Ang = Angle( 0, -7, -80),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B",
	},
	[20] = {
		ID = "Whelen 700",
		Scale = .8,
		Pos = Vector( -7.5, 121.8, 45.5 ),
		Ang = Angle( 0, 7, -80),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A",
	},
	[21] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -26, 128, 41 ),
		Ang = Angle( 0, -90, 90),
		AutoPatterns = true,
	},
	[22] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 28.6, 129, 40 ),
		Ang = Angle( 0, 90, 90),
		AutoPatterns = true,
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 1, 8, 9, 10, 11, 12, 16, 17, 18, 19, 20, 21, 22 },
		Props = {}
	},
	[2] = {
		Name = "Federal Signal Legend",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 2, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[3] = {
		Name = "Federal Signal Valor",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 3, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[4] = {
		Name = "Federal Signal Vision SLR (NYPD)",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 4, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[5] = {
		Name = "Federal Signal Vision SLR R/B",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 14, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[6] = {
		Name = "Federal Signal Vision SLR Clear",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 15, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[7] = {
		Name = "Whelen Justice",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 5, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[8] = {
		Name = "Whelen Legacy",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 6, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[9] = {
		Name = "Whelen Liberty",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 7, 8, 9, 10, 11, 12 },
		Props = {}
	},
	[10] = {
		Name = "Slicktop",
		Bodygroups = {
			{5, 0},
			{9, 0},
		},
		Auto = { 8, 9, 10, 11, 12, 13 },
		Props = {}
	}
}

PI = {}

PI.States = {}

PI.States.Headlights = {}
PI.States.Brakes = {

}
PI.States.Blink_Left = {

}
PI.States.Blink_Right = {

}
PI.States.Reverse = {

}
PI.States.Running = {}

local V = {
	Name =	name,
	Class = "prop_vehicle_jeep",
	Category = "Emergency Vehicles",

	Author = "Talon733, Dalax, Schmal",
	Model =	"models/talonvehicles/tal_f150_pol.mdl",

	KeyValues = {				
			vehiclescript =	"scripts/vehicles/tal_f150pol.txt"
		    },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end