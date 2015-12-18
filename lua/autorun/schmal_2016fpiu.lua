AddCSLuaFile()

EMV_DEBUG = false

local name = "2016 Ford Police Interceptor Utility"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local EMV = {}

EMV.Siren = 46

EMV.Skin = "fpiu16_liveries/Blank"

EMV.Color = Color(255, 255, 255)

EMV.BodyGroups = {}

EMV.SubMaterials = {

}

EMV.Props = {
	[1] = {
		Model = "models/schmal/whelen_cencom_panel.mdl",
		Scale = 1,
		Pos = Vector(.35, 30.7, 37.5),
		Ang = Angle( 0, 180, 85),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Pos = Vector(.35, 21.5, 36.4),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Skin = 1,
		Pos = Vector(.35, 26, 36.8),
		Ang = Angle( 0, 180, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .5,
		Pos = Vector(10, 33, 32),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(5, 24, 43),
		Ang = Angle( 0, 130, 0)
	},
	[6] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(.9, 51, 54.4),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/watchguard_screen.mdl",
		Scale = .75,
		Pos = Vector(5, 22, 74),
		Ang = Angle( 0, -100, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = .75,
		Pos = Vector(.35, 40, 65),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-39, 43, 62),
		Ang = Angle( 15, 120, -10),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[10] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -55, 90.8),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(8, -58, 90.6),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -63, 81),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = Vector( 1.4, 1.4, 1.6 ),
		Pos = Vector( 0, 119.5, 16 ),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	[14] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( -27, 10, 80.5 ),
		Ang = Angle( 10, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( 27, 10, 80.5 ),
		Ang = Angle( 10, 50, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[16] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( -27, -21, 82 ),
		Ang = Angle( 10, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[17] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( 27, -21, 82 ),
		Ang = Angle( 10, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[18] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(32, 105, 32.6),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[19] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(-32, 105, 32.6),
		Ang = Angle( 0, 90, 180),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[20] = {
		Model = "models/schmal/fpiu_airel.mdl",
		Scale = 1,
		Pos = Vector(0, -64, 80.8),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
		AirEL = true
	},
	[21] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -50, 92),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[22] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -77, 90.6),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[23] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -77, 81),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[24] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( 24, -50, 83.5 ),
		Ang = Angle( 10, 50, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[25] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( -24, -50, 83.5 ),
		Ang = Angle( 10, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[26] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( 24, -76, 82.9 ),
		Ang = Angle( 10, 0, 3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[27] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( -24, -76, 82.9 ),
		Ang = Angle( 10, 180, -3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[28] = {
		Model = "models/tdmcars/emergency/equipment/pushrod.mdl",
		Scale = 1.1,
		Pos = Vector( 0, 106, 16 ),
		Ang = Angle( 0, -90, 0),
		Color = Color( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
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
		Scale = 1,
		WMult = 1
	},
}

EMV.Positions = {


}

EMV.Sections = {

}

EMV.Patterns = { -- 0 = blank

}

EMV.Sequences = {
		Sequences = {
		{
			Name = "STAGE 1",
			Stage = "M1",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "STAGE 2",
			Stage = "M2",
			Components = {},
			Disconnect = {}
		},
		{
			Name = "STAGE 3",
			Stage = "M3",
			Components = {},
			Disconnect = {}
		},
	},
	Traffic = {
		{ Name = "CRUISE", Stage = "C", Components = {}, Disconnect = {} },
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
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "LEFT",
			Icon = "left",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( -10, 0, 70 ), Angle( 20, 180, 0 ), "alley" },
			},
			Disconnect = {}
		},
		{
			Name = "RIGHT",
			Icon = "right",
			Stage = "R",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 10, 0, 70 ), Angle( 20, 0, 0 ), "alley" },
			},
			Disconnect = {}
		},
		{
			Name = "FULL",
			Icon = "takedown",
			Stage = "F",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 90 ), Angle( 10, 90, 0 ), "flood" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["alley"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 90,
		Distance = 500,
	},
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 135,
		Distance = 800,
	},
	["flood"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 135,
		Distance = 1400,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity",
		Scale = 1,
		Pos = Vector( 0, -10.4, 82 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},	
	[2] = {
		ID = "Federal Signal Legend",
		Scale = 1.05,
		Pos = Vector( 0, -8.5, 83 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[3] = {
		ID = "Federal Signal Valor",
		Scale = .93,
		Pos = Vector( 0, -4, 83.6 ),
		Ang = Angle( 1.7, 90, 0),
		AutoPatterns = true,
		Phase = "A"
	},
	[4] = {
		ID = "Federal Signal Vision SLR",
		Scale = .90,
		Pos = Vector( 0, -10.5, 84.2 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[5] = {
		ID = "Whelen Justice",
		Scale = 1.06,
		Pos = Vector( 0, -7.1, 84 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[6] = {
		ID = "Whelen Legacy",
		Scale = 1.04,
		Pos = Vector( 0, -8.6, 82.4 ),
		Ang = Angle( 1.7, 90, 0),
		AutoPatterns = true,
	},
	[7] = {
		ID = "Whelen Liberty SX",
		Scale = .98,
		Pos = Vector( 0, -8, 83 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true,
	},
	[8] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = .95,
		Pos = Vector( 0, -82, 60),
		Ang = Angle( 0, -90, 0 ),
		AutoPatterns = true,
	},
	[9] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.12,
		Pos = Vector( 0, 28.1, 71.4),
		Ang = Angle( 0, 90, 0 ),
		AutoPatterns = true,
	},
	[10] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = .90,
		Pos = Vector( 0, -10.5, 84.2 ),
		Ang = Angle( 1, 90, 0),
	},
	[11] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = .90,
		Pos = Vector( 0, -10.5, 84.2 ),
		Ang = Angle( 1, 90, 0),
	},
	[12] = {
		ID = "TDM Pushbar LED",
		Scale = 1.15,
		Pos = Vector( 0, 116, 17 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
	},
	[13] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( -39, -80, 62.5),
		Ang = Angle( 0, 95, -90),
		AutoPatterns = true,
	},
	[14] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( 39, -80, 62.5),
		Ang = Angle( 0, 85, 90),
		AutoPatterns = true,
	},
	[15] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -45.6, 97, 30),
		Ang = Angle( -70, -100, 80 ),
		AutoPatterns = true
	},
	[16] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 45.6, 97, 30),
		Ang = Angle( -70, -80, -80 ),
		AutoPatterns = true
	},
	[17] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 22, -92, 72.5),
		Ang = Angle( 0, -80, 0 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "BLUE",
		Phase = "A"
	},
	[18] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -22, -92, 72.5),
		Ang = Angle( 0, -100, 0 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "RED",
		Phase = "B"
	},
	[19] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -15, -119.4, 23),
		Ang = Angle( 0, -10, 90 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "A"
	},
	[20] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 15, -119.4, 23),
		Ang = Angle( 0, 10, 90 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "B"
	},
	[21] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 29, 29.62, 72),
		Ang = Angle( 0, 85, 2 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "WHITE",
		Phase = "A"
	},
	[22] = {
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -29, 29.6, 72),
		Ang = Angle( 0, 95, -2 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "WHITE",
		Phase = "B"
	},
	[23] = {
		ID = "Federal Signal Arjent",
		Scale = .85,
		Pos = Vector( 0, -7.5, 84.3 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
	},
	[24] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = .9,
		Pos = Vector( 0, -94, 72.9),
		Ang = Angle( 0, -90, 0 ),
		AutoPatterns = true,
	},
	[25] = {
		ID = "Whelen Ultra Freedom",
		Scale = 1,
		Pos = Vector( 0, -8.1, 84 ),
		Ang = Angle( 1, 90, 0),
		AutoPatterns = true
	},
	[26] = {
		ID = "Whelen Legacy",
		Scale = 1.04,
		Pos = Vector( 0, -8.6, 82.4 ),
		Ang = Angle( 1.7, 90, 0),
		Color1 = "BLUE",
		Color2 = "BLUE"
	},
	[27] = {
		ID = "Whelen Legacy",
		Scale = 1.04,
		Pos = Vector( 0, -8.6, 82.4 ),
		Ang = Angle( 1.7, 90, 0),
		Color1 = "RED",
		Color2 = "RED"
	},
	[28] = {
		ID = "TDM Pushbar LED",
		Scale = 1.15,
		Pos = Vector( 0, 118, 17 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
		Color1 = "BLUE",
		Color2 = "BLUE"
	},
	[29] = {
		ID = "TDM Pushbar LED",
		Scale = 1.15,
		Pos = Vector( 0, 118, 17 ),
		Ang = Angle( 0, -90, 0),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "RED"
	},
	[30] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = .9,
		Pos = Vector( 0, -94, 72.6),
		Ang = Angle( 0, -90, 0 ),
		Color1 = "BLUE",
		Color2 = "BLUE"
	},
	[31] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = .9,
		Pos = Vector( 0, -94, 72.6),
		Ang = Angle( 0, -90, 0 ),
		Color1 = "RED",
		Color2 = "RED"
	},
	[32] = {
		ID = "Whelen Liberty II",
		Scale = 1.1,
		Pos = Vector( 0, -8.6, 83 ),
		Ang = Angle( 1.7, 90, 0),
		AutoPatterns = true,
	},
	[33] = {
		ID = "Code 3 RX2700",
		Scale = .96,
		Pos = Vector( 0, -8.6, 83 ),
		Ang = Angle( 1.7, 90, 0),
		AutoPatterns = true,
	},
	[34] = {
		ID = "Whelen Ion Split",
		Scale = .66,
		Pos = Vector( 7.8, 107.8, 44.4 ),
		Ang = Angle( 0, -6, 10 ),
		AutoPatterns = true,
	},
	[35] = {
		ID = "Whelen Ion Split",
		Scale = .66,
		Pos = Vector( -7.8, 107.8, 44.4 ),
		Ang = Angle( 0, 6, 10 ),
		AutoPatterns = true,
	},
	[36] = {
		ID = "Whelen Ion",
		Scale = .66,
		Pos = Vector( 7.8, 107.8, 44.4 ),
		Ang = Angle( 0, -6, 10 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "A"
	},
	[37] = {
		ID = "Whelen Ion",
		Scale = .66,
		Pos = Vector( -7.8, 107.8, 44.4 ),
		Ang = Angle( 0, 6, 10 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "B"
	},
	[38] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( 49.6, 37.8, 59.4 ),
		Ang = Angle( 0, -25, 2 ),
		AutoPatterns = true,
		Color1 = "BLUE",
		Phase = "A"
	},
	[39] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( -49.6, 37.8, 59.4 ),
		Ang = Angle( 0, 25, 2 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "B"
	},
	[40] = {
		ID = "FPIU16 Foglights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 )
	},
	[41] = {
		ID = "FPIU16 Front Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 )
	},
	[42] = {
		ID = "FPIU16 Turn Signal Hideaways",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 )
	},
	[43] = {
		ID = "FPIU16 Wig-Wag Headlights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 )
	},
	[44] = {
		ID = "Whelen Ion Trio",
		Scale = .75,
		Pos = Vector( -10.5, 116.6, 48.2 ),
		Ang = Angle( 0, 0, 0 ),
		Phase = "A"
	},
	[45] = {
		ID = "Whelen Ion Trio",
		Scale = .66,
		Pos = Vector( 10.5, 116.6, 48.2 ),
		Ang = Angle( 0, 0, 0 ),
		Phase = "B"
	},
	[46] = {
		ID = "FPIU16 Reverse Hideaways",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 )
	},
	[47] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -38.6, -45, 60 ),
		Ang = Angle( 2, 90, -90 )
	},
	[48] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 38.6, -45, 60 ),
		Ang = Angle( 2, 90, 90 )
	},
	[49] = {
		ID = "Tomar 200S Rear",
		Scale = .66,
		Pos = Vector( 0, -94, 72.5 ),
		Ang = Angle( 0, -90, 0 )
	},
	[50] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 34, -81, 62 ),
		Ang = Angle( 0, 0, -180 ),
		Phase = "C"
	},
	[51] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -34, -81, 62 ),
		Ang = Angle( 0, -180, -180 ),
		Phase = "C"
	},
	[52] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 12, -101, 63.5 ),
		Ang = Angle( 0, -90, -180 ),
		Phase = "NYA",
		Color1 = "BLUE",
		Color2 = "RED"
	},
	[53] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( -12, -101, 63.5 ),
		Ang = Angle( 0, -90, -180 ),
		Phase = "NYB"
	},
	[54] = {
		ID = "Whelen Liberty II CHP",
		Scale = 1.1,
		Pos = Vector( 0, -8.6, 83 ),
		Ang = Angle( 1.7, 90, 0)
	},
	[55] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( 49.6, 37.8, 59.4 ),
		Ang = Angle( 0, -25, 2 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "CHPB"
	},
	[56] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( -49.6, 37.8, 59.4 ),
		Ang = Angle( 0, 25, 2 ),
		AutoPatterns = true,
		Color1 = "RED",
		Phase = "CHPA"
	},
	[57] = {
		ID = "Whelen Ion",
		Scale = .75,
		Pos = Vector( -10.5, 116.6, 48.2 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "CHPA"
	},
	[58] = {
		ID = "Whelen Ion",
		Scale = .66,
		Pos = Vector( 10.5, 116.6, 48.2 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "CHPB"
	},
	[59] = {
		ID = "FPIU16 Foglights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "WHITE",
		Color2 = "WHITE",
		Phase = "CHP"
	},
	[60] = {
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( 0, 29.2, 72.3 ),
		Ang = Angle( 0, -90, 0 )
	},
	[61] = {
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
	},
	[62] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector(.35, 30.98, 37.5),
		Ang = Angle(0, 0, 5),
	},
}

EMV.Selections = { -- structured and flexible version of presets designed to mimic bodygroups
	{
		Name = "Pushbars",
		Options = {
			{ Category = "Setina Pushbar", Name = "R/B Trio", Props = { 13 }, Auto = { 44, 45 } },
			{ Category = "Setina Pushbar", Name = "CHP - Red", Props = { 13 }, Auto = { 57, 58 } },
			{ Category = "Setina Pushbar", Name = "Plain", Props = { 13 } },
			{ Category = "LED Pushbar", Name = "Red/Blue", Auto = { 12 } },
			{ Category = "LED Pushbar", Name = "Blue", Auto = { 28 } },
			{ Category = "LED Pushbar", Name = "Red", Auto = { 29 } },
			{ Name = "NYPD Pushrod", Props = { 28 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Bumper Layout",
		Options = {
			{ Category = "Fog Lights", Name = "Red/Blue", Auto = { 40 }, Bodygroups = { { 7, 1 } } },
			{ Category = "Fog Lights", Name = "CHP - White", Auto = { 59 }, Bodygroups = { { 7, 1 } } },
			{ Name = "None", Bodygroups = { { 7, 0 } } },
			{ Name = "Pushbar Wraparound", Props = { 18, 19 }, Bodygroups = { { 7, 0 } } },
		}
	},
	{
		Name = "Grille",
		Options = {
			{ Name = "None" },
			{ Name = "Whelen Ion R/B", Auto = { 36, 37 } },
			{ Name = "Whelen Ion R/B Split", Auto = { 34, 35 } },
		}
	},
	{
		Name = "Lightbar",
		Options = {
			{ Category = "Whelen Legacy", Name = "Red/Blue", Auto = { 6 } },
			{ Category = "Whelen Legacy", Name = "Blue", Auto = { 26 } },
			{ Category = "Whelen Legacy", Name = "Red", Auto = { 27 } },
			{ Category = "Whelen Liberty II", Name = "Default", Auto = { 32 } },
			{ Category = "Whelen Liberty II", Name = "CHP", Auto = { 54 } },
			{ Category = "Whelen Liberty SX", Name = "Default", Auto = { 7 } },
			{ Category = "Whelen Ultra Freedom", Name = "Red/Blue", Auto = { 25 } },
			{ Category = "Whelen Justice", Name = "Red/Blue", Auto = { 5 } },
			{ Category = "Code 3 RX2700", Name = "Red/Blue", Auto = { 33 } },
			{ Category = "Federal Signal Vision SLR", Name = "Red/Blue", Auto = { 10 } },
			{ Category = "Federal Signal Vision SLR", Name = "Red/Blue Clear", Auto = { 11 } },
			{ Category = "Federal Signal Vision SLR", Name = "NYPD", Auto = { 4 } },
			{ Category = "Federal Signal Integrity", Name = "Red/Blue", Auto = { 1 } },
			{ Category = "Federal Signal Legend", Name = "Red/Blue", Auto = { 2 } },
			{ Name = "Federal Signal Valor", Auto = { 3 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Headlight Wig-Wag",
		Options = {
			{ Name = "On", Auto = { 43 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Forward Hideaways",
		Options = {
			{ Name = "Red/Blue", Auto = { 41 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Turn Signal Hideaways",
		Options = {
			{ Name = "White", Auto = { 42 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Reverse Light Hideaways",
		Options = {
			{ Name = "Red/Blue", Auto = { 46 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Front Upper Deck",
		Options = {
			{ Name = "None" },
			{ Category = "Inner Bar", Name = "Red/Blue", Auto = { 9 } },
			{ Category = "Inner Bar Small", Name = "Red/Blue", Auto = { 60 } },
		}
	},
	{
		Name = "Rear Upper Deck",
		Options = {
			{ Category = "Inner Bar", Name = "Red/Blue", Auto = { 24 } },
			{ Category = "Inner Bar", Name = "Blue", Auto = { 30 } },
			{ Category = "Inner Bar", Name = "Red", Auto = { 31 } },
			{ Category = "Dual Vipers", Name = "Red/Blue", Auto = { 17, 18 } },
			{ Category = "Tomar 200S", Name = "Red/Blue/Amber", Auto = { 49 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Rear Lower Deck",
		Options = {
			{ Name = "None" },
			{ Name = "NYPD R/B", Auto = { 52, 53 } },
		}
	},
	{
		Name = "Mid-Level Side",
		Options = {
			{ Name = "Whelen 700 R/B/W", Auto = { 47, 48 } },
			{ Name = "Rear Vipers", Auto = { 50, 51 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Mirror Lights",
		Options = {
			{ Category = "Whelen Ion", Name = "Red/Blue", Auto = { 38, 39 } },
			{ Category = "Whelen Ion", Name = "CHP - Red", Auto = { 55, 56 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Roof",
		Options = {
			{ Name = "All", Category = "AirEL", Props = { 20, 21, 22, 23, 24, 25, 26, 27 } },
			{ Name = "Antennas", Category = "AirEL", Props = { 20, 21, 22, 23 } },
			{ Name = "ALPR", Category = "AirEL", Props = { 20, 24, 25, 26, 27 } },
			{ Name = "None", Category = "AirEL", Props = { 20 } },
			{ Name = "Antennas", Props = { 10, 11, 12 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Interior Equipment",
		Options = {
			{ Name = "Full", Props = { 2, 3, 4, 5, 6, 7, 8 }, Auto = { 62 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "Full", Auto = { 61 }, Props = { 9 } },
			-- { Name = "Full", Props = { 9 } },
			{ Name = "None" },
		}
	},
	{
		Name = "Forward ALPR",
		Options = {
			{ Name = "None" },
			{ Name = "All", Props = { 14, 15, 16, 17 } },
			{ Name = "Front", Props = { 16, 17 } },
			{ Name = "Reverse", Props = { 14, 15 } },
		}
	}
}

-- local PI = {}

-- PI.Meta = {

-- 	headlight = {
-- 		AngleOffset = -90,
-- 		W = 10,
-- 		H = 10,
-- 		Sprite = "sprites/emv/fpiu_headlight",
-- 		Scale = 2.5,
-- 		WMult = 1
-- 	},

-- 	running = {
-- 		AngleOffset = -90,
-- 		W = 7.5,
-- 		H = 10,
-- 		Sprite = "sprites/emv/fpiu_running",
-- 		Scale = 2.5,
-- 		WMult = 1
-- 	},

-- 	side_marker = {
-- 		AngleOffset = -90,
-- 		W = 13,
-- 		H = 13,
-- 		Sprite = "sprites/emv/fpiu_sidemarker",
-- 		Scale = 1.5,
-- 		WMult = .5
-- 	},

-- 	turn_signal = {
-- 		AngleOffset = -90,
-- 		W = 10,
-- 		H = 12,
-- 		Sprite = "sprites/emv/fpiu_turnsignal",
-- 		Scale = 1,
-- 		WMult = 1
-- 	},

-- 	front_hideaway = {
-- 		AngleOffset = -90,
-- 		W = 17,
-- 		H = 15,
-- 		Sprite = "sprites/emv/fpiu_hideaway",
-- 		Scale = 1,
-- 		WMult = 1
-- 	},

-- 	fog_lamp = {
-- 		AngleOffset = -90,
-- 		W = 22,
-- 		H = 17,
-- 		Sprite = "sprites/emv/fpiu_foglamp",
-- 		Scale = 2,
-- 		WMult = .6
-- 	},

-- 	brake_light = {
-- 		AngleOffset = 90,
-- 		W = 12,
-- 		H = 10,
-- 		Sprite = "sprites/emv/fpiu_brakelight",
-- 		Scale = 1.5,
-- 		WMult = 2.5
-- 	},

-- 	taillight = {
-- 		AngleOffset = 90,
-- 		W = 8,
-- 		H = 8,
-- 		Sprite = "sprites/emv/fpiu_taillight",
-- 		Scale = 1.5,
-- 		WMult = 1
-- 	},

-- 	rear_turn = {
-- 		AngleOffset = 90,
-- 		W = 14,
-- 		H = 14,
-- 		Sprite = "sprites/emv/fpiu_rearturn",
-- 		Scale = 2,
-- 		WMult = .75
-- 	},

-- 	rear_marker = {
-- 		AngleOffset = 90,
-- 		W = 10,
-- 		H = 10,
-- 		Sprite = "sprites/emv/fpiu_rearmarker",
-- 		Scale = .5,
-- 		WMult = 2
-- 	},

-- 	reverse = {
-- 		AngleOffset = 90,
-- 		W = 8,
-- 		H = 8,
-- 		Sprite = "sprites/emv/fpiu_reverse",
-- 		Scale = 1,
-- 		WMult = 1
-- 	},

-- }

-- PI.Positions = {
-- 	[1] = { Vector( -28, 103.33, 44.13 ), Angle( 0, 31, 17 ), "headlight" },
-- 	[2] = { Vector( 28, 103.33, 44.13 ), Angle( 180, (-31), 180-17 ), "headlight" },

-- 	[3] = { Vector( -39.27, 91.78, 44.53 ), Angle( 0, 65, 20 ), "side_marker" },
-- 	[4] = { Vector( 39.27, 91.78, 44.53 ), Angle( 180, -65, 180-20 ), "side_marker" },

-- 	[5] = { Vector( -34.04, 98.06, 44.38 ), Angle( 0, 37, 17 ), "running" },
-- 	[6] = { Vector( 34.04, 98.06, 44.38 ), Angle( 180, (-37), 180-17 ), "running" },

-- 	[7] = { Vector( -37.39, 97.14, 41.43 ), Angle( 1, 58.9, 14 ), "turn_signal" },
-- 	[8] = { Vector( 37.39, 97.14, 41.43 ), Angle( 180-1, -58.9, 180-14 ), "turn_signal" },

-- 	[9] = { Vector( -25.89, 107.04, 41.23 ), Angle( 1, 30, 0 ), "front_hideaway" },
-- 	[10] = { Vector( 25.89, 107.04, 41.23 ), Angle( 180-1, -30, 180 ), "front_hideaway" },

-- 	[11] = { Vector( -37.96, 98.48, 30.03 ), Angle( 1, 47, 0 ), "fog_lamp" },
-- 	[12] = { Vector( 37.96, 98.48, 30.03 ), Angle( 180-1, -47, 180 ), "fog_lamp" },

-- 	[13] = { Vector( 0, -96.1, 76.35 ), Angle( 0, 0, 39.3 ), "brake_light" },

-- 	[14] = { Vector( -32.8, -104.4, 50 ), Angle( 0, -30, -10 ), "taillight" },
-- 	[15] = { Vector( 32.8, -104.4, 50 ), Angle( 180, 30, 180+10 ), "taillight" },

-- 	[16] = { Vector( -35.02, -103.73, 47.67 ), Angle( -5.19, -30.14, -6.99 ), "rear_turn" },
-- 	[17] = { Vector( 35.02, -103.73, 47.67 ), Angle( 180+5.19, 30.14, 180+6.99 ), "rear_turn" },

-- 	[18] = { Vector( -38.97, -93.45, 55.67 ), Angle( 0, -75, -13 ), "rear_marker" },
-- 	[19] = { Vector( 38.97, -93.45, 55.67 ), Angle( 180, 75, 180+13 ), "rear_marker" },

-- 	[20] = { Vector( -32.32, -104.33, 53.92 ), Angle( 0, -30.14, 0 ), "reverse" },
-- 	[21] =  {Vector( 32.32, -104.33, 53.92 ), Angle( 180, 30.14, 180), "reverse" },
-- }

-- PI.States = {}

-- PI.States.Headlights = {}
-- PI.States.Brakes = {
-- 	{ 13, R }, { 14, DR }, { 15, DR }
-- }
-- PI.States.Blink_Left = {
-- 	{ 16, A }, { 7, A },
-- }
-- PI.States.Blink_Right = {
-- 	{ 17, A }, { 8, A }, 
-- }
-- PI.States.Reverse = {
-- 	{ 20, W }, { 21, W },
-- }
-- PI.States.Running = {
-- 	{ 3, A }, { 4, A }, { 5, CW, .5 }, { 6, CW, .5 }, 
-- 	{ 14, DR, .5 }, { 15, DR, .5 },
-- 	{ 18, DR, .5 }, { 19, DR, .5 }, 
-- }

local V = {
				// Required information
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "Emergency Vehicles",

				// Optional information
				Author = "Schmal",
				Model =	"models/schmal/fpiu/ford_utility.mdl",
			
				KeyValues = {				
					vehiclescript =	"scripts/vehicles/schmal/ford_pol_int_2016.txt"
			    },
					    
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = "fpiu16"
}

list.Set( "Vehicles", V.Name, V )

--if EMVU then EMVU:OverwriteIndex( name, EMV ) end
-- if PI then Photon:OverwriteIndex( name, PI ) endxx
