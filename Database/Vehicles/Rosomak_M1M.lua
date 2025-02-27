-- Chassis
GT_t.CH_t.Rosomak_M1M = {
    life = 10,                  -- Wytrzymałość pojazdu (ilość "żyć")
    mass = 22000,               -- Masa pojazdu: Rosomak waży około 22 ton (bez dodatkowego opancerzenia)
    length = 7.9,               -- Długość pojazdu: ~7,9 m
    width = 2.8,                -- Szerokość pojazdu: ~2,8 m
    max_road_velocity = 27.78,  -- Maksymalna prędkość na drodze: ~100 km/h (27.78 m/s)
    max_slope = 0.5,            -- Maksymalne nachylenie terenu: ~30° (0.5 rad)
	fordingDepth = 1.2,
	canSwim = true,	
	waterline_level = 1.2,
    max_vert_obstacle = 0.8,    -- Maksymalna wysokość przeszkody: ~0,8 m
    max_acceleration = 1.2,     -- Maksymalne przyspieszenie: ~1,2 m/s²
    min_turn_radius = 7.5,      -- Minimalny promień skrętu: ~7,5 m
    engine_power = 544,         -- Moc silnika: ~544 KM (400 kW)
    engineMinRPM = 600,         -- Minimalne obroty silnika: 600 RPM
    engineMaxPowerRPM = 2200,   -- Obroty przy maksymalnej mocy: 2200 RPM
    engineMaxRPM = 2600,        -- Maksymalne obroty silnika: 2600 RPM
    gearRatios = { -5.0, -7.1, 0.0, 6.32, 3.3, 2.4, 1.5 },  -- Przełożenia skrzyni biegów
    mainGearRatio = 3.0,        -- Główne przełożenie skrzyni biegów
    automaticTransmission = true,  -- Automatyczna skrzynia biegów
    X_gear_1 = 2.4,             -- Pozycja koła przedniego (X)
    Y_gear_1 = 0,               -- Pozycja koła przedniego (Y)
    Z_gear_1 = 1.25,            -- Pozycja koła przedniego (Z)
    X_gear_2 = -2.9,            -- Pozycja koła tylnego (X)
    Y_gear_2 = 0,               -- Pozycja koła tylnego (Y)
    Z_gear_2 = -1.25,           -- Pozycja koła tylnego (Z)
    gear_type = GT_t.GEAR_TYPES.WHEELS,  -- Typ napędu: kołowy
    r_max = 0.66,               -- Maksymalny promień koła: ~0,66 m
    trace_width = 0.498,        -- Szerokość śladu opony: ~0,498 m
    armour_thickness = 0.08,    -- Grubość pancerza: ~80 mm (dostosowane do wersji CRV)
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.Rosomak_M1M);

GT.visual.shape = "Rosomak_M1M";
GT.visual.shape_dstr = "Rosomak-dest";

GT.toggle_alarm_state_interval = 1.5;

GT.IR_emission_coeff = 0.15
GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_Tank, GT_t.IR_COEFFS_ROLLERS_Tank, GT_t.IR_COEFFS_152mm, GT_t.IR_COEFFS_BODY, {0.3, 0.3/1650}}}

-- Turbine
GT.turbine = false;

-- Crew
GT.crew_locale = "ENG";
GT.crew_members = {"commander", "gunner"};

-- Chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.6;

-- Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = -1.0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 2.2; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {1.25, 0.05, 0}
GT.visual.dirt_pos = {-1.25, 0.05, 0}

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 5

GT.driverViewConnectorName = {"POINT_DRIVER_01", offset = {0.0, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"

-- ============================= Weapons ==============================================================================

GT.WS = {}
local ws;
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.fire_on_march = true;
GT.WS.smoke = {"POINT_SMOKE_01", "POINT_SMOKE_02"};

-- =========================== Turret =================================================================================

--GT.WS[1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_01';
GT.WS[ws].pointer = "POINT_SIGHT_01"; 
GT.WS[ws].cockpit = { "EMES-15/EMES-15", {0.0, 0.0, 0.0 }, };
GT.WS[ws].angles = {				
					{math.rad(-140), math.rad(140), math.rad(0), math.rad(45)},
					{math.rad(140), math.rad(-140), math.rad(-10), math.rad(45)},						
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(40);
GT.WS[ws].pidY = MODERN_TANK_TOWER_PIDY
GT.WS[ws].pidZ = MODERN_TANK_TOWER_PIDZ
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

-- =========================== APFSDS-T 30 mm Automatic Gun =================================================

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Rosomak_30_APFSDS_T);
__LN.beamWidth = math.rad(0);
__LN.type = 12;
__LN.distanceMin = 10;
__LN.distanceMax = 3000;
__LN.max_trg_alt = 3000;
__LN.BR[1] = {connector_name = 'POINT_GUN_01',
			recoilArgument = 2,			
			recoilTime = 60/200/2,
			case_extraction_connector 	=  'EJECTOR_1',
			shellCaseID 			= 0,
			extractionDir 			= {x = 0.4, y = -0.2, z = 8.0},
			shellCaseOrientation 	= {x = 0, y = 0, z = 0}				
			};
__LN.createMuzzleFlashEffect = true;				
__LN.PL[1].switch_on_delay = 10;
__LN.PL[1].ammo_capacity = 100
__LN.PL[1].reload_time = 10
__LN.PL[1].shot_delay = 60/200
for i=2,3 do
__LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

-- =========================== HEI-T 30 mm Automatic Gun ====================================================

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN);
__LN.type = 3;
__LN.distanceMin = 10;
__LN.distanceMax = 3000;
__LN.max_trg_alt = 3000;
__LN.reflection_limit = 0.001
__LN.PL[1].shell_name = {"Rosomak_30_HEI_T"};
__LN.PL[1].switch_on_delay = 10;
__LN.PL[1].ammo_capacity = 100;
__LN.PL[1].reload_time = 10
__LN.PL[1].shot_delay = 60/200
for i=2,3 do
__LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;

-- =========================== UKM 2000C 7.62 MG ===================================================================

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Rosomak_UKM2000);
__LN.PL[1].switch_on_delay = 10;
__LN.PL[1].ammo_capacity = 1000
__LN.PL[1].reload_time = 10
__LN.BR[1] = { connector_name = 'POINT_GUN_02', 
							recoilArgument = 50,
							recoilTime = 60/1000/2 }
for i=2,2 do
	__LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;

-- ====================================================================================================================

GT.Name = "Rosomak M1M";
GT.DisplayName = _("IFV Rosomak M1M");
GT.DisplayNameShort = _('Rosomak M1M');
GT.Rate = 13;
				
GT.Sensors = {
	Mount_WS_ID = 1,
	OPTIC = { "PERI-R17A2 day", "PERI-R17A2 night" },
	noVisualDetectorInAlarmedState = false
}				
				
GT.EPLRS = true

GT.InternalCargo = {
    nominalCapacity = 600,
    maximalCapacity = 600,
}
				
GT.DetectionRange = 0;
GT.airWeaponDist = 3000
GT.ThreatRange = 3000;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,WSTYPE_PLACEHOLDER,
				"IFV",
				"Datalink",				
                };				
GT.category = "Armor";

GT.tags  =
{
    "Armor",
	"IFV",
}

GT.Countries = {"USA","Poland"}

add_surface_unit(GT)
	