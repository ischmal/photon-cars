AddCSLuaFile()

local name = "SenCo Ford 350 SuperDuty"

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

EMV.Siren = 0

EMV.Color = Color( 235, 235, 235 )

EMV.Skin = 3
// EMV.Skin = "photon/override/lw_dc15_tail"

EMV.BodyGroups = {
}

EMV.Props = {
	// {
	// 	Model = "models/schmal/fedsig_integrity_amb/integrity_lightbar.mdl",
	// 	Scale = 1.1,
	// 	Pos = Vector( 0, 6, 102 ),
	// 	Ang = Angle( 1, 90, 0)
	// },
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Scale = 1.1,
		Pos = Vector( 12.7, 139, 54.75 ),
		Ang = Angle( 0, -6, -90 )
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Scale = 1.1,
		Pos = Vector( -12.7, 139, 54.75 ),
		Ang = Angle( 0, 6, -90 )
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Scale = 1.1,
		Pos = Vector( 17, -163.5, 38.4 ),
		Ang = Angle( 0, 0, 90 )
	},
	{
		Model = "models/tdmcars/emergency/equipment/whelen_700s.mdl",
		Scale = 1.1,
		Pos = Vector( -17, -163.5, 38.4 ),
		Ang = Angle( 0, 0, 90 )
	}
}

EMV.Positions = {}

EMV.Sections = {}

EMV.Patterns = {}

EMV.Sequences = {
		Sequences = {
		{
			Name = "STAGE 1",
			Components = {	},
			Preset_Components = {
				[1] = {
					["auto_fedsig_integrity_senco"] = "pattern_1",
				},
			},
			Disconnect = {}
		},
		{
			Name = "STAGE 2",
			Components = {	},
			Preset_Components = {
				[1] = {
					["auto_fedsig_integrity_senco"] = "code2",
					["auto_fedsig_integrity_senco_corner"] = "alt_slow"
				},
			},
			Disconnect = {}
		},
		{
			Name = "STAGE 3",
			Components = {	},
			Preset_Components = {
				[1] = {
					["auto_fedsig_integrity_senco"] = "code3",
					["auto_fedsig_integrity_senco_corner"] = "code3"
				},
			},
			Disconnect = {}
		}
	},
	Traffic = {
		{
			Name = "LEFT",
			Components = {},
			Preset_Components = {
				[1] = { ["auto_fedsig_integrity_senco_signalmaster"] = "left" },
			},
			Disconnect = {}
		},
	    {
			Name = "RIGHT",
			Components = {},
			Preset_Components = {
				[1] = { ["auto_fedsig_integrity_senco_signalmaster"] = "right" },
			},
			Disconnect = {}
		},
	    {
			Name = "DIVERGE",
			Components = {},
			Preset_Components = {
				[1] = { ["auto_fedsig_integrity_senco_signalmaster"] = "diverge" },
			},
			Disconnect = {}
		},
	}
}

EMV.Auto = {
	[1] = {
		ID = "Federal Signal Integrity SenCo",
		Scale = 1.1,
		Pos = Vector( 0, 6, 102 ),
		Ang = Angle( 1, 90, 0)
	},
}

EMV.Presets = {
	[1] = {
		Name = "Federal Signal Integrity",
		Bodygroups = {},
		Auto = { 1 },
		Props = {}
	},
}

EMV.Meta = {}

local PI = {}

PI.Meta = {}

PI.StateMaterials = {
	["taillights"] = {
		Index = 15,
		States = {
			["running"] = "photon/override/lw_dc15_tail",
			["brake"] = "photon/override/lw_dc15_tail_br"
		}
	}
}

PI.Positions = {}

PI.States = {}
PI.States.Headlights = {}
PI.States.Brakes = {}
PI.States.Blink_Left = {}
PI.States.Blink_Right = {}
PI.States.Reverse = {}
PI.States.Running = {}

local V = {
				// Required information
				Name =	name,
				Class = "prop_vehicle_jeep",
				Category = "SenCo Industries",

				// Optional information
				Author = "TDM, TheSenDest",
				Information = "",
				Model =	"models/tdmcars/for_f350.mdl",

			
				KeyValues = {				
						vehiclescript =	"scripts/vehicles/TDMCars/f350.txt"
					    },
				IsEMV = true,
				EMV = EMV,
				HasPhoton = true,
				Photon = PI
}

list.Set( "Vehicles", V.Name, V )

if EMVU then EMVU:OverwriteIndex( name, EMV ) end
if Photon then Photon:OverwriteIndex( name, PI ) end