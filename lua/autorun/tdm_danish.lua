local name = "TDM Mercedes E350"

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"

local EMV = {}

EMV.Siren = 6

EMV.Color = nil
EMV.Skin = 0

EMV.BodyGroups = {}

EMV.Props = {}


local alphaOffset = 10
local betaOffset = -10
local gammaOffset = 5

EMV.Meta = {
	grille_leds = {
		AngleOffset = -90,
		W = 5.7,
		H = 5.4,
		Sprite = "sprites/emv/tdm_grille_leds",
		Scale = 1,
		WMult = 1.4,
	},
	side_leds = {
		AngleOffset = -90,
		W = 5.7,
		H = 5.4,
		Sprite = "sprites/emv/tdm_grille_leds",
		Scale = 1,
		WMult = 1.4,
	},
	freedom_f_inner = {
		AngleOffset = -90,
		W = 7.2,
		H = 8.4,
		Sprite = "sprites/emv/whelen_freedom_main",
		Scale = 1.75,
		WMult = 1.24,
	},
	freedom_f_corner = {
		AngleOffset = -90,
		W = 9.5,
		H = 8,
		Sprite = "sprites/emv/whelen_freedom_main",
		Scale = 1.75,
		WMult = 2,
	},
	freedom_r_corner = {
		AngleOffset = 90,
		W = 9.5,
		H = 8,
		Sprite = "sprites/emv/whelen_freedom_main",
		Scale = 1.75,
		WMult = 2,
	},
	freedom_r_inner = {
		AngleOffset = 90,
		W = 7.2,
		H = 8.4,
		Sprite = "sprites/emv/whelen_freedom_main",
		Scale = 1.75,
		WMult = 1.24,
	},
	freedom_takedown = {
		AngleOffset = -90,
		W = 6.7,
		H = 7.5,
		Sprite = "sprites/emv/tdm_halogen2",
		Scale = 1.2,
		WMult = 1.3,
	},
	freedom_r_halogen = {
		AngleOffset = 90,
		W = 6.4,
		H = 7.5,
		Sprite = "sprites/emv/tdm_halogen2",
		Scale = 1.2,
		WMult = 1.3,
	},
	freedom_alley = {
		AngleOffset = -90,
		W = 5.5,
		H = 6,
		Sprite = "sprites/emv/whelen_freedom_alley",
		Scale = 1.2,
		WMult = 1.3,
	},
	liberty_front = {
		AngleOffset = -90,
		W = 7.4,
		H = 7.5,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1.66,
	},
	liberty_rear = {
		AngleOffset = 90,
		W = 7.4,
		H = 7.5,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1.66,
	},
	liberty_f_corner = {
		AngleOffset = -90,
		W = 14.5,
		H = 14.4,
		Sprite = "sprites/emv/emv_whelen_corner",
		Scale = 1,
		WMult = 2.2,
	},
	liberty_r_corner = {
		AngleOffset = 90,
		W = 14.5,
		H = 14.4,
		Sprite = "sprites/emv/emv_whelen_corner",
		Scale = 1,
		WMult = 2.2,
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 7,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_6x2",
		Scale = 1,
		WMult = 2.2,
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 2.2,
		H = 2.2,
		Sprite = "sprites/emv/emv_whelen_tri",
		Scale = 1,
		WMult = 1,
	},
	rear_int_bar = {
		AngleOffset = 90,
		W = 4,
		H = 3,
		Sprite = "sprites/emv/tdm_charger_rear_int",
		Scale = 1,
		WMult = 1.5,
	},
	front_inner_default = {
		AngleOffset = -90,
		W = 4.1,
		H = 3.2,
		Sprite = "sprites/emv/tdm_charger_rear_int",
		Scale = 1,
		WMult = 1.5,
	},
	front_vipers = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_viper",
		Scale = 1,
		WMult = 1,
	},
	front_viper_low = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_viper",
		Scale = 1,
		WMult = 1,
	},
	rear_vipers = {
		AngleOffset = 90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_viper",
		Scale = 1,
		WMult = 1,
	},
	bumper_vertex = {
		AngleOffset = -90,
		W = 2,
		H = 2,
		Sprite = "sprites/emv/emv_whelen_vertex",
		Scale = 1,
		WMult = 1,
	},
	bumper_upper = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/emv_1x3",
		Scale = 1,
		WMult = 1,
	},
	bumper_side = {
		AngleOffset = -90,
		W = 4.6,
		H = 4.6,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1,
	},
	valor_forward = {
		AngleOffset = -90,
		W = 5.2,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1.5,
	},
	valor_side = {
		AngleOffset = -90,
		W = 4.5,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1.2,
	},
	valor_backward = {
		AngleOffset = 90,
		W = 5.8,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1.7,
	},
	headlight = {
		AngleOffset = -90,
		W = 3.5,
		H = 3.5,
		Sprite = "sprites/emv/light_circle",
		Scale = 2.5,
		WMult = 1
	},
	
	tail_light = {
		AngleOffset = 90,
		W = 28,
		H = 16,
		Sprite = "sprites/emv/tdm_charger_tail",
		Scale = 1,
		SourceOnly = true,
		WMult = 1.5,
	},

	tail_glow = {
		AngleOffset = 90,
		W = 0,
		H = 0,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
		WMult = 1
	},
	
	reverse = {
		AngleOffset = 90,
		W = 8,
		H = 7,
		Sprite = "sprites/emv/tdm_charger_reverse",
		Scale = 1,
		WMult = 1.2
	},
	spotlight = {
		AngleOffset = -90,
		W = 7,
		H = 7,
		Sprite = "sprites/emv/light_circle",
		Scale = 3,
	},
	vertex_forward = {
		AngleOffset = -90,
		W = 1.25,
		H = 1.25,
		Sprite = "sprites/emv/emv_whelen_vertex",
		Scale = 1,
		WMult = 1,
	},
	vertex_mirror = {
		AngleOffset = -90,
		W = 1.1,
		H = 1.1,
		Sprite = "sprites/emv/emv_whelen_vertex",
		Scale = 1,
		WMult = 1,
	},
	dome_main = {
		AngleOffset = -90,
		W = 5,
		H = 5.25,
		Sprite = "sprites/emv/tdm_dome",
		Scale = 2,
		WMult = 1,
	}
}

EMV.Positions = {
	
	[1] = { Vector( 14.77, 103.37, 22.76 ), Angle( 0, -12, 6 ), "vertex_forward" }, -- 1
	[2] = { Vector( -14.77, 103.37, 22.76 ), Angle( 0, 12, 6 ), "vertex_forward" }, -- 2
	
	[3] = { Vector( 42.18, 86.94, 29.85 ), Angle( 0, -78, 0 ), "vertex_forward" },
	[4] = { Vector( -42.18, 86.94, 29.85 ), Angle( 0, 78, 0 ), "vertex_forward" }, 

	[5] = { Vector( 42.29, 24.85, 53.3 ), Angle( 0, -22.8, 6.9 ), "vertex_mirror" },
	[6] = { Vector( -42.29, 24.85, 53.3 ), Angle( 0, 22.8, 6.9 ), "vertex_mirror" },

	[7] = { Vector( 41.67, -100.13, 32.76 ), Angle( 0, -95.8, 0 ), "vertex_forward" },
	[8] = { Vector( -41.67, -100.13, 32.76 ), Angle( 0, 95.8, 0 ), "vertex_forward" },  

	[9] = { Vector( 16.66, -25.44, 79.69 ), Angle( 4.77, -17.46, -1.5 ), "dome_main" },
	[10] = { Vector( -15.21, -25.46, 79.81 ), Angle( -4.77, -17.46, 1.5 ), "dome_main" },

	[11] = { Vector( 18.26, -27.64, 79.56 ), Angle( 0.01, -90.29, -4.1 ), "dome_main" },
	[12] = { Vector( -17.78, -26.29, 79.56 ), Angle( -3.59, 53.92, -3.12 ), "dome_main" },

	[13] = { Vector( 14.09, -26.32, 79.9 ), Angle( 3.59, 53.92, 3.12 ), "dome_main" },
	[14] = { Vector( -13.58, -27.64, 79.96 ), Angle( -0.01, -90.29, 4.1 ), "dome_main" },

	[15] = { Vector( 14.09, -26.32, 79.9 ), Angle( 3.59, 53.92, 3.12 ), "dome_main" },
	[16] = { Vector( -15.19, -29.86, 79.81 ), Angle( 4.5, -161, 2.8 ), "dome_main" }, 
	
}

EMV.Sections = {
	["front_vertex"] = {
		{ { 1, B }, { 2, B }, { 3, B }, { 4, B } },
	},
	["mirror_vertex"] = {
		{ { 5, B }, { 6, B } }
	},
	["rear_vertex"] = {
		{ { 7, B }, { 8, B } }
	},
	["dome"] = {
		{ { 9, B }, { 10, B }, { 11, B }, { 12, B }, { 13, B }, { 14, B }, { 15, B }, { 16, B } }
	}
}

EMV.Patterns = {
	["front_vertex"] = {
		["all"] = { 1 }
	},
	["mirror_vertex"] = {
		["all"] = { 1 }
	},
	["rear_vertex"] = {
		["all"] = { 1 }
	},
	["dome"] = {
		["all"] = { 1 }
	}
}

EMV.Lamps = {

}

EMV.Sequences = {
		Sequences = {
		{
			Name = "WARN",
			Components = {

			},
			BG_Components = {
				["emergency leds"] = {
					["0"] = {
						["front_vertex"] = "all",
						["mirror_vertex"] = "all",
						["rear_vertex"] = "all"
					},
				},
				["emergency roof lighting"] = {
					["0"] = {
						["dome"] = "all"
					}
				}
			},
			Disconnect = {}
		},
		{
			Name = "CODE 3",
			Components = {
				
			},
			BG_Components = {
				
			},
			Disconnect = { 1, 2 }
		},
	},
	Illumination = {
		{
			Name = "LAMP",
			Components = {},
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 93, W, 2 },
						{ 94, W, 2 }
					},
					["1"] = {
						{ 93, W, 2 },
						{ 94, W, 2 }
					}
				},
			},
			Lights = {
				{ Vector( 40.96, 37.09, 56.85 ), Angle( 20, 90, -0 ), "lamp" },
				{ Vector( -40.96, 37.09, 56.85 ), Angle( 20, 90, -0 ), "lamp" },
			},
			Disconnect = { }
		},
	}
}


EMV.Lamps = {
	["lamp"] = {
		Color = Color(96,96,106,255),
		Texture = "effects/flashlight001",
		Near = 200,
		FOV = 70,
		Distance = 700,
	}
}

local PI = {}

PI.Meta = {

	headlight = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 2.5,
		WMult = 1
	},

	daytime = {
		AngleOffset = -90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/light_circle",
		Scale = 1.5,
		WMult = 1
	},

	marker_a = {
		AngleOffset = -90,
		W = .5,
		H = .5,
		Sprite = "sprites/emv/light_circle",
		Scale = .5,
		WMult = 1
	},

	marker_b = {
		AngleOffset = -90,
		W = 1,
		H = 1,
		Sprite = "sprites/emv/light_circle",
		Scale = 1,
		WMult = 1
	},

}

PI.Positions = {

	[1] = { Vector( 34.67, 87.89, 35.27 ), Angle( 0, 0, 0 ), "headlight" },
	[2] = { Vector( -34.67, 87.89, 35.27 ), Angle( 0, 0, 0 ), "headlight" },

	[3] = { Vector( 24.97, 94.22, 33.47 ), Angle( 0, 0, 0 ), "daytime" },
	[4] = { Vector( -24.97, 94.22, 33.47 ), Angle( 0, 0, 0 ), "daytime" },

	[5] = { Vector( 30.87, 89.62, 33.97 ), Angle( 0, 0, 0 ), "marker_a" },
	[6] = { Vector( -30.87, 89.62, 33.97 ), Angle( 0, 0, 0 ), "marker_a" },

	[7] = { Vector( 38.62, 82.3, 37.57 ), Angle( 0, 0, 0 ), "marker_b" },
	[8] = { Vector( -38.62, 82.3, 37.57 ), Angle( 0, 0, 0 ), "marker_b" },


}

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
PI.States.Running = {
	{ 1, CW }, { 2, CW },
	{ 3, CW }, { 4, CW },
	{ 5, A }, { 6, A },
	{ 7, A }, { 8, A },
}

local V = {

				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "Emergency Vehicles",

				Author = "TDM",
				Information = "vroom vroom",
				Model =	"models/tdmcars/emergency/mer_eclass.mdl",

			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/TDMCars/mer_eclass.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end