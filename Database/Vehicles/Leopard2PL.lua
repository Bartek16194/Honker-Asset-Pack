-- Leopard 2A7V by Currenthill

GT_t.CH_t.LEO2PL = {
	life = 36,
	mass = 66500,
	length = 9.67,
	width = 3.78,
	max_road_velocity = 17.5,
	max_slope = 0.6,
	fordingDepth = 1.1,
	engine_power = 1500,
	engineMinRPM = 600,
	engineMaxPowerRPM = 2000,
	engineMaxRPM = 2600,
	engineMOI = 4.0,
	turbine = false,
	gearRatios = { -5.0, -7.1, 0.0, 6.32, 3.3, 2.4, 1.8},
	mainGearRatio = 3.0,
	automaticTransmission = true,
	max_vert_obstacle = 1.1,
	max_acceleration = 4.08497,
	min_turn_radius = 2.8,
	X_gear_1 = 2.91,
	Y_gear_1 = 0,
	Z_gear_1 = 1.53,
	X_gear_2 = -2.62,
	Y_gear_2 = 0,
	Z_gear_2 = 1.53,
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.35,
	r_track = 0.35,
	-- armour_thickness = 0.15,
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.LEO2PL);

GT.visual.shape = "Leo2PL";
GT.visual.shape_dstr = "Leo2PL-dest";
GT.toggle_alarm_state_interval = 1.5;

-- Turbine
GT.turbine = false;

-- Crew
GT.crew_locale = "ENG";
GT.crew_members = {"commander", "gunner"};

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.max_range_finding_target = 9000
GT.sensor.min_range_finding_target = 0
GT.sensor.max_alt_finding_target = 2000
GT.sensor.min_alt_finding_target = 0
GT.sensor.laser = true
GT.sensor.height = 3.1;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 1.5; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

GT.visual.dust_pos    = {GT_t.CH_t.LEO2PL.X_gear_1, 0.2, -GT_t.CH_t.LEO2PL.Z_gear_1}
GT.visual.dirt_pos    = {GT_t.CH_t.LEO2PL.X_gear_2, 0.6, -GT_t.CH_t.LEO2PL.Z_gear_2}

GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_Tank, GT_t.IR_COEFFS_ROLLERS_Tank, GT_t.IR_COEFFS_120mm, {0.0, 0.00}, {0.3, 0.3/1750}}}
--[[
GT.DM = {
    { area_name = "CANNON",             armour = {width=0.550}},
    { area_name = "GUN_MASK",           armour = {width=0.550}},

    { area_name = "TURRET_FRONT",       armour = {width=0.800}},
    { area_name = "TURRET_BACK",        armour = {width=0.350}},
    { area_name = "TURRET_LEFT",        armour = {width=0.450}},
    { area_name = "TURRET_RIGHT",       armour = {width=0.450}},
    { area_name = "TURRET_TOP",         armour = {width=0.350}},

    { area_name = "BODY",               armour = {width=0.350}},
    { area_name = "BODY_FRONT_UP",      armour = {width=0.800}},
    { area_name = "BODY_FRONT_DOWN",    armour = {width=0.350}},
    { area_name = "BODY_LEFT",          armour = {width=0.350}},
    { area_name = "BODY_RIGHT",         armour = {width=0.350}},
    { area_name = "BODY_BACK",          armour = {width=0.350}},

    { area_name = "WHEEL_L_1",          armour = {width=0.200}},
    { area_name = "WHEEL_L_2",          armour = {width=0.200}},
    { area_name = "WHEEL_L_3",          armour = {width=0.200}},
    { area_name = "WHEEL_L_4",          armour = {width=0.200}},
    { area_name = "WHEEL_L_5",          armour = {width=0.200}},
    { area_name = "WHEEL_L_6",          armour = {width=0.200}},
    { area_name = "WHEEL_L_7",          armour = {width=0.200}},
    { area_name = "WHEEL_L_8",          armour = {width=0.200}},
    { area_name = "WHEEL_R_1",          armour = {width=0.200}},
    { area_name = "WHEEL_R_2",          armour = {width=0.200}},
    { area_name = "WHEEL_R_3",          armour = {width=0.200}},
    { area_name = "WHEEL_R_4",          armour = {width=0.200}},
    { area_name = "WHEEL_R_5",          armour = {width=0.200}},
    { area_name = "WHEEL_R_6",          armour = {width=0.200}},
    { area_name = "WHEEL_R_7",          armour = {width=0.200}},
    { area_name = "WHEEL_R_8",          armour = {width=0.200}},
}]]

GT.IR_emission_coeff = 0.15

GT.driverViewConnectorName = {"POINT_DRIVER_01", offset = {0.0, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 9000;
GT.WS.smoke = {"POINT_SMOKE_01", "POINT_SMOKE_02", "POINT_SMOKE_03", 
				"POINT_SMOKE_04", "POINT_SMOKE_05", "POINT_SMOKE_06", 
				"POINT_SMOKE_07", "POINT_SMOKE_08", "POINT_SMOKE_09", 
				"POINT_SMOKE_10", "POINT_SMOKE_11", "POINT_SMOKE_12", "POINT_SMOKE_13"};

-- ======================== CANNON TURRET ==========================================================

--GT.WS[1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_01';
GT.WS[ws].pointer = "POINT_SIGHT_01"; 
GT.WS[ws].cockpit = { "EMES-15/EMES-15", {0.0, 0.0, 0.0 }, };
GT.WS[ws].angles = {
                    {math.rad(105), math.rad(-105), math.rad(-9), math.rad(20)},
                    {math.rad(-105), math.rad(105), math.rad(3), math.rad(20)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(48);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].pidY = MODERN_TANK_TOWER_PIDY
GT.WS[ws].pidZ = MODERN_TANK_TOWER_PIDZ
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

-- ============================== Rh-120 L/55A1 120 mm cannon APFSDS =================================

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Leopard2PL_l55);
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN_01',
			recoilArgument = 2,
			recoilTime = 0.5};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

-- ================================ Rh-120 L/55A1 120 mm cannon HE-T =================================

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN); -- HE gun
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.PL[1].shell_name = {"Leopard2PL_DM12_120_HEAT_T"};
__LN.PL[1].ammo_capacity = 6;
__LN.PL[2].shell_name = {"Leopard2PL_DM12_120_HEAT_T"};
__LN.PL[2].ammo_capacity = 11;
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;

-- =============================== MG3 7.62 mm Coax machine gun ====================================

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Leopard2PL_MG3);
__LN.secondary = true;
__LN.PL[1].switch_on_delay = 10;
__LN.PL[1].ammo_capacity = 750
__LN.PL[1].reload_time = 10
__LN.BR[1] = { connector_name = 'POINT_GUN_03', 
							recoilArgument = 999,
							recoilTime = 60/1000/2 }
for i=2,4 do
	__LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;			
							
-- =========================== M2HB 12.7mm MG FLW-200 RWS ==========================================

--GT.WS[2].LN[1]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER_02' 
GT.WS[ws].pointer = "POINT_SIGHT_02"; 
GT.WS[ws].cockpit = { "EMES-15/EMES-15", {0.0, 0.0, 0.0 }, };
GT.WS[ws].drawArgument1 = 50
GT.WS[ws].drawArgument2 = 51
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30); 
GT.WS[ws].pidY = MODERN_TANK_TOWER_PIDY
GT.WS[ws].pidZ = MODERN_TANK_TOWER_PIDZ
GT.WS[ws].base = 1
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-15), math.rad(70)},
                    };
GT.WS[ws].reference_angle_Y = math.rad(0);	
GT.WS[ws].reference_angle_Z = math.rad(0);	
				
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Leopard2PL_M2HB);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.type = 10;
__LN.reactionTime = 0.25
__LN.distanceMax = 1800
__LN.max_trg_alt = 1800
__LN.PL[1].ammo_capacity = 200; 
__LN.PL[1].shot_delay = 60/600
__LN.PL[1].reload_time = 10;
__LN.PL[1].switch_on_delay = 10;
__LN.PL[1].portionAmmoCapacity = 200;
for i=2,8 do
	__LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;

__LN.BR[1] = { connector_name = 'POINT_GUN_02', 
							recoilArgument = 52,
							recoilTime = 60/600/2,
							case_extraction_connector 	=  'EJECTOR_1',
							shellCaseID 			= 1,
							extractionDir 			= {x = -2.0, y = -0.6, z = 0.0},
							shellCaseOrientation 	= {x = 0, y = 0, z = 0}	
							}
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
			
-- ============================ EOS ================================================================

-- GT.WS[3].LN[1]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].reference_angle_Z = math.rad(0)
GT.WS[ws].base = 1
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-15), math.rad(85)},
					};
GT.WS[ws].drawArgument1 = 60
GT.WS[ws].drawArgument2 = -1
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 0;
GT.WS[ws].LN[1].distanceMax = 6000;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 2000;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws1 = {{{"self", ws-1}}, {{"self", ws}}};			

-- =================================================================================================

GT.Name = "Leopard 2PL";
GT.DisplayName = _("MBT Leopard 2PL");
GT.DisplayNameShort = _("Leo 2PL");
GT.Rate = 20;

GT.Sensors = {
	Mount_WS_ID = 1,
	OPTIC = { "EMES 15 day", "EMES 15 night" },
	noVisualDetectorInAlarmedState = false
}	

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.airWeaponDist = 1800
GT.ThreatRange =  8000
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,WSTYPE_PLACEHOLDER,
                "Tanks",
                "Modern Tanks",
				"Datalink"						
                };
GT.Countries = {"USA","Poland"}

GT.category = "Armor";

GT.tags  =
{
    "Armor",
	"MBT",
}

add_surface_unit(GT)
