AddCSLuaFile()

local name = "Police Dodge Charger 2015"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local EMV = {}

--util.PrecacheModel( "models/schmal/fedsig_visionslr/vision_lightbar.mdl" )

EMV.Siren = 2

EMV.Color = Color( 235, 235, 235 )

EMV.Skin = 0

EMV.BodyGroups = {
}

EMV.Props = {
	// {
	// 	Model = "models/schmal/whelen_justice/justice_lightbar.mdl",
	// 	Scale = 1.07,
	// 	Pos = Vector( 0, -17, 77.25 ),
	// 	Ang = Angle( 0, 90, 0)
	// },
	// {
	// 	Model = "models/schmal/whelen_legacy/legacy_lightbar.mdl",
	// 	Scale = 1.02,
	// 	Pos = Vector( 0, -17, 75.2 ),
	// 	Ang = Angle( 0, 90, 0)
	// },
	// {
	// 	Model = "models/schmal/fedsig_visionslr/vision_lightbar.mdl",
	// 	Scale = .90,
	// 	Pos = Vector( 0, -17, 77.3 ),
	// 	Ang = Angle( 0, 90, 0),
	// 	Skin = 1
	// },
	// {
	// 	Model = "models/schmal/fedsig_valor/valor_lightbar.mdl",
	// 	Scale = .90,
	// 	Pos = Vector( 0, -15, 76.25 ),
	// 	Ang = Angle( 0, 90, 0)
	// },
	// {
	// 	Model = "models/schmal/fedsig_integrity/integrity_lightbar.mdl",
	// 	Scale = .96,
	// 	Pos = Vector( 0, -18, 75.2 ),
	// 	Ang = Angle( 0, 90, 0)
	// },
	// {
	// 	Model = "models/schmal/whelen_liberty/liberty_lightbar.mdl",
	// 	Scale = .96,
	// 	Pos = Vector( 0, -18, 75.3 ),
	// 	Ang = Angle( 0, 90, 0)
	// },
}

EMV.Positions = {}

EMV.Sections = {}

EMV.Patterns = {}

EMV.Sequences = {
		Sequences = {
		{
			Name = "CODE 1",
			Components = {	},
			Preset_Components = {
				[1] = {
					["auto_fedsig_integrity"] = "pattern_1",
				},
				[2] = {
					["auto_fedsig_legend"] = "pattern_7",
				},
				[3] = {
					["auto_fedsig_valor"] = "all"
				},
				[4] = {
					["auto_fedsig_visionslr"] = "code2",
					["auto_fedsig_visionslr_traffic"] = "warn",
				},
				[5] = {
					["auto_whelen_justice"] = "all"
				},
				[6] = {
					["auto_whelen_legacy"] = "all"
				},
				[7] = {
					["auto_whelen_liberty_sx"] = "all",
				},
			},
			Disconnect = {}
		},
		{
			Name = "CODE 2",
			Components = {	},
			Preset_Components = {
				[1] = {
					["auto_fedsig_integrity"] = "code2",
					["auto_fedsig_integrity_corner"] = "alt_slow"
				},
				[2] = {
					["auto_fedsig_legend"] = "code2",
					["auto_fedsig_legend_corner"] = "code2"
				},
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {	},
			Preset_Components = {
				[1] = {
					["auto_fedsig_integrity"] = "code3",
					["auto_fedsig_integrity_corner"] = "code3"
				},
			},
			Disconnect = {}
		}
	},
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity",
		Scale = .96,
		Pos = Vector( 0, -18, 75.2 ),
		Ang = Angle( 0, 90, 0)
	},
	[2] = {
		ID = "Federal Signal Legend",
		Scale = 1,
		Pos = Vector( 0, -18, 76.1 ),
		Ang = Angle( 0, 90, 0)
	},
	[3] = {
		ID = "Federal Signal Valor",
		Scale = .9,
		Pos = Vector( 0, -15, 76.25 ),
		Ang = Angle( 0, 90, 0)
	},
	[4] = {
		ID = "Federal Signal Vision SLR",
		Scale = .90,
		Pos = Vector( 0, -17, 77.3 ),
		Ang = Angle( 0, 90, 0),
	},
	[5] = {
		ID = "Whelen Justice",
		Scale = 1.07,
		Pos = Vector( 0, -17, 77.25 ),
		Ang = Angle( 0, 90, 0)
	},
	[6] = {
		ID = "Whelen Legacy",
		Scale = 1.02,
		Pos = Vector( 0, -17, 75.2 ),
		Ang = Angle( 0, 90, 0)
	},
	[7] = {
		ID = "Whelen Liberty SX",
		Scale = .96,
		Pos = Vector( 0, -18, 75.3 ),
		Ang = Angle( 0, 90, 0)
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1 },
		Props = {}
	},
	[2] = {
		Name = "Federal Signal Legend",
		Bodygroups = {},
		Auto = { 2 },
		Props = {}
	},
	[3] = {
		Name = "Federal Signal Valor",
		Bodygroups = {},
		Auto = { 3 },
		Props = {}
	},
	[4] = {
		Name = "Federal Signal Vision SLR",
		Bodygroups = {},
		Auto = { 4 },
		Props = {}
	},
	[5] = {
		Name = "Whelen Justice",
		Bodygroups = {},
		Auto = { 5 },
		Props = {}
	},
	[6] = {
		Name = "Whelen Legacy",
		Bodygroups = {},
		Auto = { 6 },
		Props = {}
	},
	[7] = {
		Name = "Whelen Liberty",
		Bodygroups = {},
		Auto = { 7 },
		Props = {}
	},
}

EMV.Meta = {}

local PI = {}

PI.Meta = {
		headlight = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
	},
	front_signal = {
		AngleOffset = -90,
		W = 9,
		H = 8,
		Sprite = "sprites/emv/st_charger_front",
		Scale = 2,
		VisRadius = 2,
		WMult = 1.75
	},
	rear_inner = {
		AngleOffset = 90,
		W =  8,
		H = 8,
		Sprite = "sprites/emv/st_charger_rear_inner",
		Scale = 1.2,
		WMult = 2,
		VisRadius = 5,
	},
	rear_outer_a = {
		AngleOffset = 90,
		W =  7,
		H = 5,
		Sprite = "sprites/emv/st_charger_rear_outer_a",
		Scale = 1.75,
		WMult = 2,
		VisRadius = 5,
		SourceOnly = false,
	},
	rear_outer_b = {
		AngleOffset = 90,
		W =  4.3,
		H = 2.4,
		Sprite = "sprites/emv/square",
		Scale = 1,
		WMult = 2,
		VisRadius = 5,
		SourceOnly = false,
	},
	rear_outer_c = {
		AngleOffset = 90,
		W =  1.7,
		H = 1,
		Sprite = "sprites/emv/square",
		Scale = 1,
		WMult = 2,
		VisRadius = 5,
		SourceOnly = false,
	},
	turn_inner = {
		AngleOffset = 90,
		W =  4,
		H = 1.2,
		Sprite = "sprites/emv/square",
		Scale = .8,
		WMult = 2,
		VisRadius = 5,
	},
	turn_outer_a = {
		AngleOffset = 90,
		W =  4,
		H = 1.2,
		Sprite = "sprites/emv/square",
		WMult = 2,
		Scale = .8,
		VisRadius = 5,
	},
}

PI.StateMaterials = {
	["taillights"] = {
		Index = 15,
		States = {
			["running"] = "photon/override/lw_dc15_tail",
			["brake"] = "photon/override/lw_dc15_tail_br"
		}
	}
}

PI.Positions = {
	[1] = { Vector( 37.3, 108.06, 35.94 ), Angle( 0, 0, 0 ), "headlight" },
	[2] = { Vector( -37.3, 108.06, 35.94 ), Angle( 0, 0, 0 ), "headlight" },

	[3] = { Vector( 30.52, 113.91, 34.75 ), Angle( 180 - 5.27, -29.78, 180 - 3.97), "front_signal" },
	[4] = { Vector( -30.52, 113.91, 34.75 ), Angle( 5.27, 29.78, 3.97 ), "front_signal" },

	[5] = { Vector( 25.28, -119.68, 47.2 ), Angle( 0, 13.8, 0 ), "rear_inner" },
	[6] = { Vector( -25.28, -119.68, 47.2 ), Angle( 180, -13.8, 180 ), "rear_inner" },

	[7] = { Vector( 31.36, -117.75, 47 ), Angle( 0, 21.2, 0 ), "rear_outer_a" },
	[8] = { Vector( -31.36, -117.75, 47 ), Angle( 180, -21.2, 180 ), "rear_outer_a" },

	[9] = { Vector( 35.38, -115.63, 46.75 ), Angle( 0, 32.4, 0 ), "rear_outer_b" },
	[10] = { Vector( -35.38, -115.63, 46.75 ), Angle( 0, -32.4, 0 ), "rear_outer_b" },

	[11] = { Vector( 37.88, -113.95, 46.33 ), Angle( 0, 33.6, 0 ), "rear_outer_c" },
	[12] = { Vector( -37.88, -113.95, 46.33 ), Angle( 0, -33.6, 0 ), "rear_outer_c" },

	[13] = { Vector( 26.46, -119.6, 45.1 ), Angle( 0, 11.8, 0 ), "turn_inner" },
	[14] = { Vector( -26.46, -119.6, 45.1 ), Angle( 0, -11.8, 0 ), "turn_inner" },

	[15] = { Vector( 30.63, -118.28, 45.06 ), Angle( 0, 20.6, 0 ), "turn_outer_a" },
	[16] = { Vector( -30.63, -118.28, 45.06 ), Angle( 0, -20.6, 0 ), "turn_outer_a" },

	[17] = { Vector( 34.19, -116.5, 45.01 ), Angle( 0, 31.7, 0 ), "turn_outer_a" },
	[18] = { Vector( -34.19, -116.5, 45.01 ), Angle( 0, -31.7, 0 ), "turn_outer_a" },

	[19] = { Vector( 37.51, -114.26, 44.93 ), Angle( 0, 36, 0 ), "turn_outer_a" },
	[20] = { Vector( -37.51, -114.26, 44.93 ), Angle( 0, -36, 0 ), "turn_outer_a" },
}

PI.States = {}
PI.States.Headlights = {}
PI.States.Brakes = {
	{ 7, R }, { 8, R },
	{ 9, R }, { 10, R },
	{ 11, R }, { 12, R },
	{ "_taillights", "brake" }
}
PI.States.Blink_Left = {
	{ 14, R }, { 16, R }, { 18, R }, { 20, R },
}
PI.States.Blink_Right = {
	{ 13, R }, { 15, R }, { 17, R }, { 19, R },
}
PI.States.Reverse = {
	{ 5, W }, { 6, W },
}
PI.States.Running = {
	{ 1, CW }, { 2, CW },
	{ 3, A }, { 4, A },
	{ "_taillights", "running" }
}

local V = {
				// Required information
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "Emergency Vehicles",

				// Optional information
				Author = "LoneWolfie, Schmal",
				Information = "vroom vroom",
				Model =	"models/lonewolfie/dodge_charger_2015_undercover.mdl",

			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/lwcars/dodge_charger_2015_police.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end