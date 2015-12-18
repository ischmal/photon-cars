AddCSLuaFile()
 
local VehicleName = "Vauxhall Insignia Police"
 
local EMV = {}
 
EMV.Siren = 5
EMV.Skin = 3
EMV.Color = Color(255,255,255)
 
EMV.BodyGroups = {
        { 0, 0 }, -- Vauxhall
        { 1, 0 }, -- Insignia
        { 2, 0 }, -- VXR
        { 3, 1 }, -- frontbumper
        { 4, 0 }, -- wing
        { 5, 0 }, -- wheel
}

EMV.Auto = {
        [1] = {
                ID = "Whelen Legacy",
                Scale = 1,
                Pos = Vector( 0, -18, 77 ),
                Ang = Angle( 0, 90, 0 ),
                Color1 = "BLUE",
                Color2 = "BLUE"
        },
        [2] = {
                ID = "Whelen 700",
                Scale = 1,
                Pos = Vector( 10.16, 118.2, 35.17 ),
                Ang = Angle( 0, 0, -90 ),
                Color1 = "BLUE",
                Phase = "A"
        },
        [3] = {
                ID = "Whelen 700",
                Scale = 1,
                Pos = Vector( -10.16, 118.2, 35.17 ),
                Ang = Angle( 0, 0, -90 ),
                Color1 = "BLUE",
                Phase = "B"
        }
}

EMV.Sequences = {
        Sequences = {
                { Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
                { Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
                { Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
        },
        Traffic = {
                { Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
                { Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
                { Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
        }
}
 
local V = {
        Name = VehicleName,
        Class = "prop_vehicle_jeep",
        Category = "Testtt",
        Author = "Anonymous #PrayForParis",
        Model = "models/tdmcars/vaux_insignia.mdl",
        KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/vaux_insignia.txt" },
        IsEMV = true,
        EMV = EMV,
        HasPhoton = true,
        Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )
 
if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end