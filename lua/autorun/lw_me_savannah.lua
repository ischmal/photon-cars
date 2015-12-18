AddCSLuaFile()

local name = "GMC Savannah Medical Examiner"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 3

EMV.Color = Color( 255, 255, 255 )

// EMV.Liveries = {
// 	["Police"] = {
// 		["Patrol"] = { "photon/emv_liveries/lw_tahoe/police-patrol", "pp" },
// 		["K-9"] = { "photon/emv_liveries/lw_tahoe/police-k9", "pd" },
// 		["Traffic"] = { "photon/emv_liveries/lw_tahoe/police-traffic", "pt" },
// 		["Traffic (Stealth)"] = { "photon/emv_liveries/lw_tahoe/police-stealth", "pg" },
		
// 		["Supervisor"] = { "photon/emv_liveries/lw_tahoe/police-supervisor", "ps" },
// 		["S.W.A.T."] = { "photon/emv_liveries/lw_tahoe/police-swat", "pw" }
// 	}
// }

EMV.Skin = "photon/emv_liveries/lw_savannah/coroner"
// EMV.Skin = 0

EMV.BodyGroups = {
// 	{2, 1}, -- antenne
// 	{3, 2}, -- side panels/trim
// 	{4, 1}, -- bullbar
// 	{6, 1}, -- equipment
// 	{7, 1}, -- grille
// 	{9, 1}, -- lights front window
// 	{10, 1}, -- lights grille
// --	{11, 1}, -- lights rear bumper
// --	{12, 1}, -- lights rear window
// 	{17, 1}, -- wheels
// 	{18, 1}, -- windows
}

EMV.Props = {}

EMV.Meta = {
	takedown = {
		AngleOffset = -90,
		W = 6.9,
		H = 6.9,
		Sprite = "sprites/emv/emv_whelen_6x2",
	},
	f_rect = {
		AngleOffset = -90,
		W = 6.2,
		H = 6.2,
		Sprite = "sprites/emv/emv_whelen_rectangle",
		Scale = 1.4
	},
	f_round = {
		AngleOffset = -90,
		W = 7.5,
		H = 7.2,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.4
	},
	f_ang = {
		AngleOffset = -90,
		W = 7.7,
		H = 10,
		Sprite = "sprites/emv/emv_whelen_src_side",
		Scale = 1.6
	},
	side = {
		AngleOffset = -90,
		W = 6,
		H = 6.2,
		Sprite = "sprites/emv/emv_whelen_rectangle",
		Scale = 1.4
	},
	r_ang = {
		AngleOffset = 90,
		W = 7.7,
		H = 10,
		Sprite = "sprites/emv/emv_whelen_src_side",
		Scale = 1.6
	},
	r_round = {
		AngleOffset = 90,
		W = 7.5,
		H = 7.2,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.4
	},
	r_rect = {
		AngleOffset = 90,
		W = 6.2,
		H = 6.2,
		Sprite = "sprites/emv/emv_whelen_rectangle",
		Scale = 1.4
	},
	r_3led = {
		AngleOffset = 90,
		W = 5.3,
		H = 5.3,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		Scale = 1.2
	},
	f_3led = {
		AngleOffset = -90,
		W = 4.6,
		H = 5.3,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		Scale = 1.2
	},
	bull_3led = {
		AngleOffset = -90,
		W = 4.6,
		H = 5.3,
		Sprite = "sprites/emv/emv_whelen_mini_3",
		Scale = 1.2
	},
	f_win = {
		AngleOffset = -90,
		W = 7.4,
		H = 7.4,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.5
	},
	headlight = {
		AngleOffset = -90,
		W = 6,
		H = 6,
		Sprite = "sprites/emv/light_circle",
		Scale = 2.5,
		VisRadius = 0
	},
	reverse_lights = {
		AngleOffset = 90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/square_src",
		Scale = 1
	},
	tail_light = {
		AngleOffset = 90,
		W = 5,
		H = 5.7,
		Sprite = "sprites/emv/square_src",
		Scale = 1.8
	},
	front_signal = {
		AngleOffset = -90,
		W = 6,
		H = 2.2,
		Sprite = "sprites/emv/square_src",
		Scale = 1,
		WMult = 1.3
	},
	spotlight = {
		AngleOffset = -90,
		W = 7.25,
		H = 7.25,
		Sprite = "sprites/emv/light_circle",
		Scale = 3.25,
	}
}

EMV.Positions = {
	 [1] = { Vector(-3.7,-2.9,89.2), Angle(0,0,0), "takedown" },
	 [2] = { Vector(3.8,-2.9,89.2), Angle(0,0,0), "takedown" },

	 [3] = { Vector(-10.4,-1.4,89.2), Angle(0,0,0), "f_rect" },
	 [4] = { Vector(10.4,-1.4,89.2), Angle(0,0,0), "f_rect" },

	 [5] = { Vector(-17.23,-1.4,89.2), Angle(0,0,0), "f_round" },
	 [6] = { Vector(17.23,-1.4,89.2), Angle(0,0,0), "f_round" },

	 [7] = { Vector(-24.4,-2,89.2), Angle(0,28.2,0), "f_ang" },
	 [8] = { Vector(24.4,-2,89.2), Angle(0,-28.2,0), "f_ang" },

	 [9] = { Vector(-27.9,-7.2,89.2), Angle(0,90,0), "side" },
	 [10] = { Vector(27.9,-7.2,89.2), Angle(0,-90,0), "side" },

	[11] = { Vector(-24.4,-12.4,89.2), Angle(0,-28.2,0), "r_ang" },
	[12] = { Vector(24.4,-12.4,89.2), Angle(0,28.2,0), "r_ang" },

	[13] = { Vector(-17.23,-13,89.2), Angle(0,0,0), "r_round" },
	[14] = { Vector(17.23,-13,89.2), Angle(0,0,0), "r_round" },

	[15] = { Vector(-10.4,-13,89.2), Angle(0,0,0), "r_rect" },
	[16] = { Vector(10.4,-13,89.2), Angle(0,0,0), "r_rect" },

	[17] = { Vector(-3.55,-13,89.2), Angle(0,0,0), "r_rect" },
	[18] = { Vector(3.55,-13,89.2), Angle(0,0,0), "r_rect" },

	-- REAR TOP LEDS --

	[19] = { Vector(-15.5,-102,82.15), Angle(0,-6,0), "r_3led" }, --  20
	[20] = { Vector(15.5,-102,82.15), Angle(0,6,0), "r_3led" }, --  19

	[21] = { Vector(-20.35,-101.4,82.15), Angle(0,-6,0), "r_3led" }, --  22
	[22] = { Vector(20.35,-101.4,82.15), Angle(0,6,0), "r_3led" }, --  21

	[23] = { Vector(-25.2,-100.82,82.15), Angle(0,-6,0), "r_3led" }, --  24
	[24] = { Vector(25.2,-100.82,82.15), Angle(0,6,0), "r_3led" }, --  23

	-- BOTTOM BUMPER LEDS (WAIT TIL WOLFIE FIXES)--

	[25] = { Vector(-35,-117,30), Angle(0,-16,0), "r_3led" }, --  26
	[26] = { Vector(35,-117,30), Angle(0,16,0), "r_3led" }, --  25

	-- GRILLE LIGHTS --

	[27] = { Vector(-19.73,111.5,39.35), Angle(0,-2,0), "f_3led" }, --  28
	[28] = { Vector(19.73,111.5,39.35), Angle(0,2,0), "f_3led" }, --  27

	[29] = { Vector(-21.5,110.2,47.4), Angle(0,0,0), "f_3led" }, --  30
	[30] = { Vector(21.5,110.2,47.4), Angle(0,0,0), "f_3led" }, --  29

	-- BULLBAR LEDS --

	[31] = { Vector(-23.5,121.8,31.15), Angle(90,90,0), "f_3led" }, --  32
	[32] = { Vector(23.4,121.8,31.15), Angle(90,-90,0), "f_3led" }, --  31

	-- FRONT WINDOW --

	[33] = { Vector(-26.9,28.8,75.55), Angle(0,0,0), "f_win" }, --  34
	[34] = { Vector(26.9,28.8,75.55), Angle(0,0,0), "f_win" }, --  33

	-- HEADLIGHTS --

	[35] = { Vector( -36.5, 100.5, 46 ), Angle( 0,0,0 ), "headlight" },
	[36] = { Vector( 36.5, 100.5, 46 ), Angle( 0,0,0 ), "headlight" },

	-- TAIL LIGHTS --

	[37] = { Vector( -40, -108, 45.7 ), Angle( 0,-37,0 ), "tail_light" },
	[38] = { Vector( 40, -108, 45.7 ), Angle( 0,37,0 ), "tail_light" },

	-- REVERSE LIGHTS --

	[39] = { Vector( -39.6, -108.2, 51 ), Angle( 0,-37,0 ), "reverse_lights" },
	[40] = { Vector( 39.6, -108.2, 51 ), Angle( 0,37,0 ), "reverse_lights" },

	[41] = { Vector( -38.57, 101.74, 40.35 ), Angle( 0, 18, 0 ), "front_signal" },
	[42] = { Vector( 38.57, 101.74, 40.35 ), Angle( 0, -18, 0 ), "front_signal" },

	[43] = { Vector( -41.4, 45.51, 71.81 ), Angle( -17.26, 0, 0 ), "spotlight" },

}

EMV.Sections = {
	["front_signals"] = {
		{ { 41, W } },
		{ { 42, W } },
	},
	["def_lightbar"] = {
		{ { 7, R, .6 }, { 9, R, .6 }, { 11, R, .6 }, { 8, B, .6 }, { 10, B, .6 }, { 12, B, .6 } },
		{ { 7, R, 1 }, { 9, R, 1 }, { 11, R, 1 }, { 8, B, 1 }, { 10, B, 1 }, { 12, B, 1 } },
		{ { 3, R }, { 5, R }, { 7, R }, { 9, R }, { 11, R }, { 13, R }, { 15, R }, { 17, R }, },
		{ { 4, B }, { 6, B }, { 8, B }, { 10, B }, { 12, B }, { 14, B }, { 16, B }, { 18, B }, },
		{ { 3, R }, { 7, R }, { 9, R }, { 11, R }, { 15, R }, },
		{ { 4, B }, { 8, B }, { 10, B }, { 12, B }, { 16, B }, },
		{ { 5, R }, { 13, R }, { 17, R }, },
		{ { 6, B }, { 14, B }, { 18, B }, },
	},
	["front_window"] = {
		{ { 34, R } },
		{ { 33, W } },
		{ { 33, W }, { 34, R } },
	},
	["rear"] = {
		{ { 23, A }, },
		{ { 21, A }, },
		{ { 19, A }, },
		{ { 20, A }, },
		{ { 22, A }, },
		{ { 24, A }, },
		{ { 19, A }, { 20, A }, },
		{ { 21, A }, { 22, A }, },
		{ { 23, A }, { 24, A }, },
		{ { 23, A }, { 20, A }, },
		{ { 19, A }, { 24, A }, },
	},
	["bullbar"] = {
		{ { 31, W } },
		{ { 32, W } },
		{ { 31, W }, { 32, W }, },
	},
	["grille"] = {
		{ { 27, R } },
		{ { 28, R } },
		{ { 29, A } },
		{ { 30, W } },
		{ { 28, R }, { 27, R } },
		{ { 30, W }, { 29, A } },
	},
	["takedown"] = {
		{ { 1, W } },
		{ { 2, W } },
		{ { 1, W }, { 2, W } },
	},
	["headlights"] = {
		{ { 35, SW, { 16, .25, 0 } }, { 36, SW, { 16, .25, 10 } }, }
	},
	["tail_lights"] = {
		{ { 37, R } },
		{ { 38, R } },
	},
	["reverse_lights"] = { -- HIDEAWAYS MOTHERFUCKER
		{ { 39, A } },
		{ { 40, A } },
	}
}

EMV.Patterns = {
	["front_signals"] = {
		["default"] = {
			1, 0, 1, 0, 0, 0, 2, 0, 2, 0, 0, 0,
		}
	},
	["def_lightbar"] = {
		["alt"] = {
			3, 3, 4, 4, 0, 4, 4, 3, 3, 0
		},
		["marker"] = {
			1, 2
		},
		["code3"] = {
			7, 0, 5, 0, 3, 0, 8, 0, 6, 0, 4, 0
		}
	},
	["front_window"] = {
		["alt"] = {
			1, 1, 0, 2, 2, 0
		},
		["code3"] = {
			1, 0, 1, 0, 2, 0, 2, 0
		}
	},
	["rear"] = {
		["left"] = {
			11, 11, 8, 8, 10, 10, 0, 10, 10, 0, 10, 10, 0, 10, 10, 0, 0, 0, 0, 0
		},
		["right"] = {
			10, 10, 8, 8, 11, 11, 0, 11, 11, 0, 11, 11, 0, 11, 11, 0, 0, 0, 0, 0
		},
		["diverge"] = {
			7, 7, 8, 8, 9, 9, 0, 9, 9, 0, 9, 9, 0, 9, 9, 0, 0, 0
		},
		["dir_alt"] = {
			7, 8, 9, 8,
			7, 8, 9, 8,
			7, 8, 9, 8,
			7, 8, 9, 8,
			7, 8, 9, 8,
			7, 8, 9, 8,
			7, 0, 7, 0,
			8, 0, 8, 0,
			9, 0, 9, 0,
			7, 0, 7, 0,
			8, 0, 8, 0,
			9, 0, 9, 0,
			7, 0, 7, 0,
			8, 0, 8, 0,
			9, 0, 9, 0,
		}
	},
	["bullbar"] = {
		["flash"] = {
			3, 0, 3, 0, 3, 0, 0, 0
		}
	},
	["grille"] = {
		["code1"] = {
			5, 5, 5, 6, 6, 6
		},
		["alt"] = {
			1, 5, 3, 0, 2, 6, 4, 0
		}
	},
	["takedown"] = {
		["steady"] = {
			3
		},
		["code3"] = {
			1, 1, 2, 2
		}
	},
	["headlights"] = {
		["wig-wag"] = {
			1
		}
	},
	["tail_lights"] = {
		["code3"] = {
			1, 0, 1, 0, 2, 0, 2, 0
		}
	},
	["reverse_lights"] = {
		["code3"] = {
			2, 0, 2, 0, 1, 0, 1, 0
		}
	}
}


EMV.Sequences = {
	Sequences = {
		{
			Name = "CODE 1",
			Stage = "M1",
			Components = {
			},
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
			Components = {
				["front_signals"] = "default"
			},
			BG_Components = {
				["Lightbar"] = {
					["1"] = {
						["def_lightbar"] = "alt",
					}
				},
				["Lights_grill"] = {
					["1"] = {
						["grille"] = "code1",
					}
				},
				["Lights_rearwindow"] = {
					["1"] = {
						["rear"] = "dir_alt"
					}
				},
				["Lights_frontwindow"] = {
					["1"] = {
						["front_window"] = "alt",
					}
				}
			}
		},
		{
			Name = "CODE 3",
			Stage = "M3",
			Components = {
				["headlights"] = "wig-wag",
				["tail_lights"] = "code3",
				["reverse_lights"] = "code3",
				["front_signals"] = "default"
			},
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
			BG_Components = {
				["Lights_rearwindow"] = {
					["1"] = {
						["rear"] = "left",
					}
				},
			},
			Preset_Components = {},
			Disconnect = {}
		},
	    {
			Name = "RIGHT",
			Stage = "R",
			BG_Components = {
				["Lights_rearwindow"] = {
					["1"] = {
						["rear"] = "right",
					}
				},
			},
			Components = {},
			Preset_Components = {},
			Disconnect = {}
		},
	    {
			Name = "DIVERGE",
			Stage = "D",
			BG_Components = {
				["Lights_rearwindow"] = {
					["1"] = {
						["rear"] = "diverge",
					}
				},
			},
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
			BG_Components = {
				["Lamp"] = {
					["1"] = {
						{ 43, W }
					}
				}
			},
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
		Pos = Vector( 0, -9, 88.7 ),
		Ang = Angle( 2, 90, 0),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "RED"
	},	
	[2] = {
		ID = "Federal Signal Legend",
		Scale = 1.07,
		Pos = Vector( 0, -7.4, 89.5 ),
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
		Pos = Vector( -41, -68, 65),
		Ang = Angle( 0, 90, -90),
		AutoPatterns = true,
		Color3 = "AMBER"
	},
	[9] = {
		ID = "Whelen 700 Trio",
		Scale = 1.1,
		Pos = Vector( 41, -68, 65),
		Ang = Angle( 0, -90, -90 ),
		AutoPatterns = true,
		Color3 = "AMBER"
	},
	[10] = {
		ID = "Whelen 700",
		Scale = .66,
		Pos = Vector( 11, -112.5, 50),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "RED",
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
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -101.5, 76.3),
		Ang = Angle( 0, -90, 0 ),
		AutoPatterns = true,
		Color1 = "RED",
		Color2 = "RED"
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
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {
			{5, 0},
		},
		Auto = { 1, 8, 9, 10, 11, 12 },
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
	},
	[11] = {
		Name = "Default",
		Bodygroups = {
			{5, 1},
		},
		Auto = {},
		Props = {}
	}
}

local V = {
	Name =	name,
	Class = "prop_vehicle_jeep",
	Category = "Emergency Vehicles",

	Author = "LoneWolfie, Schmal",
	Model = "models/LoneWolfie/gmc_savana.mdl",
	KeyValues = {
		vehiclescript	=	"scripts/vehicles/LWCars/gmc_savana.txt"
	},

	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "lw_tahoe"
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end