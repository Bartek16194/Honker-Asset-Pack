GT_t.CH_t.PT91 = {
	life = 22,
	mass = 42000,
	length = 9.23,
	width = 3.41,
	max_road_velocity = 16.7,
	max_slope = 0.4,
	fordingDepth = 1.4,
	engine_power = 700,
	engineMinRPM = 600,
	engineMaxPowerRPM = 2000,
	engineMaxRPM = 2600,
	engineMOI = 4.0,
	turbine = false,
	gearRatios = {-22.5, 0.0, 6.32, 5.5, 4.5, 3.3, 2.4, 1.8, 1.4},
	mainGearRatio = 3.0,
	automaticTransmission = true,
	max_vert_obstacle = 0.8,
	max_acceleration = 3.4,
	min_turn_radius = 2.8,
    X_gear_1          = 2.48,
    Y_gear_1          = 0,
    Z_gear_1          = 1.27,
    X_gear_2          = -2.39,
    Y_gear_2          = 0,
    Z_gear_2          = -1.27,		
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.35,
	r_track = 0.35,
	armour_thickness = 0.10,
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.PT91);

GT.visual.shape = "twardy";
GT.visual.shape_dstr = "twardy-dest";
GT.toggle_alarm_state_interval = 5.0;

-- Turbine
GT.turbine = false;

-- Crew
GT.crew_locale = "ENG";
GT.crew_members = {"commander", "gunner"};

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.65;

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 0.0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0.7; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

GT.visual.dust_pos    = {GT_t.CH_t.PT91.X_gear_1, 0.0, -GT_t.CH_t.PT91.Z_gear_1}
GT.visual.dirt_pos    = {GT_t.CH_t.PT91.X_gear_2, 0.6, -GT_t.CH_t.PT91.Z_gear_2}

GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_Tank, GT_t.IR_COEFFS_ROLLERS_Tank, GT_t.IR_COEFFS_120mm, GT_t.IR_COEFFS_BODY, {0.29, 0.29/1700}}}

--[[GT.DM = {
    { area_name = "CANNON",             armour = {width=0.300}},
    { area_name = "GUN_MASK",           armour = {width=0.300}},

    { area_name = "TURRET_FRONT",       armour = {width=0.540}},
    { area_name = "TURRET_BACK",        armour = {width=0.040}},
    { area_name = "TURRET_LEFT",        armour = {width=0.240}},
    { area_name = "TURRET_RIGHT",       armour = {width=0.240}},
    { area_name = "TURRET_TOP",         armour = {width=0.040}},

    { area_name = "BODY",               armour = {width=0.160}},
    { area_name = "BODY_FRONT_UP",      armour = {width=0.540}},
    { area_name = "BODY_FRONT_DOWN",    armour = {width=0.200}},
    { area_name = "BODY_LEFT",          armour = {width=0.100}},
    { area_name = "BODY_RIGHT",         armour = {width=0.100}},
    { area_name = "BODY_BACK",          armour = {width=0.040}},

    { area_name = "WHEEL_L_1",          armour = {width=0.260}},
    { area_name = "WHEEL_L_2",          armour = {width=0.260}},
    { area_name = "WHEEL_L_3",          armour = {width=0.260}},
    { area_name = "WHEEL_L_4",          armour = {width=0.260}},
    { area_name = "WHEEL_L_5",          armour = {width=0.260}},
    { area_name = "WHEEL_L_6",          armour = {width=0.260}},
    { area_name = "WHEEL_L_7",          armour = {width=0.260}},
    { area_name = "WHEEL_L_8",          armour = {width=0.260}},
    { area_name = "WHEEL_R_1",          armour = {width=0.260}},
    { area_name = "WHEEL_R_2",          armour = {width=0.260}},
    { area_name = "WHEEL_R_3",          armour = {width=0.260}},
    { area_name = "WHEEL_R_4",          armour = {width=0.260}},
    { area_name = "WHEEL_R_5",          armour = {width=0.260}},
    { area_name = "WHEEL_R_6",          armour = {width=0.260}},
    { area_name = "WHEEL_R_7",          armour = {width=0.260}},
    { area_name = "WHEEL_R_8",          armour = {width=0.260}},
}]]

GT.IR_emission_coeff = 0.12

GT.driverViewConnectorName = {"POINT_DRIVER_01", offset = {0.2, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"POINT_SMOKE_01", "POINT_SMOKE_02", "POINT_SMOKE_03", "POINT_SMOKE_04", "POINT_SMOKE_05", "POINT_SMOKE_06", "POINT_SMOKE_07", "POINT_SMOKE_08"};
				
-- ======================== CANNON TURRET ===================================================================================================

--GT.WS[1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_01';
GT.WS[ws].pointer = "POINT_SIGHT_01"; 
GT.WS[ws].cockpit = {'_1G46/_1G46', {0.0, 0.0, 0.0 }}
GT.WS[ws].angles = {
				
                    {math.rad(180), math.rad(140), math.rad(13.5), math.rad(14)},
                    {math.rad(140), math.rad(-140), math.rad(-5), math.rad(14)},
                    {math.rad(-140), math.rad(-180), math.rad(13.5), math.rad(14)},			
					
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(24);
GT.WS[ws].omegaZ = math.rad(15);
GT.WS[ws].pidY = MODERN_TANK_TOWER_PIDY
GT.WS[ws].pidZ = MODERN_TANK_TOWER_PIDZ
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

-- ============================== KBA3 125 mm cannon APFSDS ================================================================================

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.pt91_kba3);
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN_01',
			recoilArgument = 5,
			recoilTime = 0.5};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

-- ================================ KBA3 125 mm cannon HE-T =============================================================================

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN); -- HE gun
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 5000;
__LN.PL[1].shell_name = {"pt91_KBA3_125_HE"};
__LN.PL[1].ammo_capacity = 10;
__LN.PL[1].reload_time = 20 * 10
__LN.PL[1].shot_delay = 6
__LN.PL[2].shell_name = {"pt91_KBA3_125_HE"};
__LN.PL[2].ammo_capacity = 4;
__LN.PL[2].reload_time = 15 * 10
__LN.PL[2].shot_delay = 30;
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;

-- ================================ KBA3 125 mm cannon 9K112 Kobra ATGM ===============================================================
--[[
--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.pt91_9m112m2);
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.BR = {
			{connector_name = 'POINT_GUN_01',
			recoilArgument = 5,
			recoilTime = 0.5}
		  }
]]
-- =============================== KT 7.62 mm Coax machine gun ==========================================================================

--GT.WS[1].LN[4]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.pt91_kt_7_62);
__LN.secondary = true;
__LN.BR[1] = { connector_name = 'POINT_GUN_03', 
							recoilArgument = 50,
							recoilTime = 60/650/2 }

-- ================================ MG TURRET ===========================================================================================

--GT.WS[2]
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1
GT.WS[ws].center = 'CENTER_TOWER_02';
GT.WS[ws].pointer = "POINT_SIGHT_02";
GT.WS[ws].cockpit = {'IronSight/IronSight', {0.0, 0.0, 0.0 }}
GT.WS[ws].angles = {		

                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(75)},
					
                    };
GT.WS[ws].drawArgument1 = 30;
GT.WS[ws].drawArgument2 = 31;
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);
GT.WS[ws].pidY = MG_TOWER_PIDY
GT.WS[ws].pidZ = MG_TOWER_PIDZ
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].reference_angle_Z = math.rad(10);

-- ================================ KT 12.7 mm machine gun =============================================================================

--GT.WS[2].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.pt91_kt_12_7);
__LN.BR[1] = { connector_name = 'POINT_GUN_02', 
							recoilArgument = 32,
							recoilTime = 60/800/2 }
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;						

-- =========================================================================================================================================

GT.Name = "PT91";
GT.DisplayName = _("MBT PT-91 Twardy");
GT.DisplayNameShort = _("PT-91");
GT.Rate = 18;

GT.Sensors = { 
	Mount_WS_ID = 1,
	OPTIC = {"TKN-3B day", "TKN-3B night",
                        },
	noVisualDetectorInAlarmedState = false							
            };

GT.EPLRS = true

GT.DetectionRange  = 5000;
GT.airWeaponDist = 4000
GT.ThreatRange =  4000
GT.ThreatRangeMin =  100
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
