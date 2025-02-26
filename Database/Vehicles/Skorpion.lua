-- Land Rover WMIK by Currenthill

-- Chassis
GT_t.CH_t.Skorpion_O = {
	life = 3,
	mass = 3350,
	length = 4.70,
	width = 2.15,
	max_road_velocity = 44.44,
	max_slope = 0.49,
	fordingDepth = 1.5,
	engine_power = 111,
	engineMinRPM = 800,
	engineMaxPowerRPM = 4000,
	engineMaxRPM = 4500,
	gearRatios = { -3.0, 0.0, 3.39, 2.13, 1.30, 1.00, 0.77},
	mainGearRatio = 4.20,
	automaticTransmission = false,		
	max_vert_obstacle = 0.5,
	max_acceleration = 5.6,
	min_turn_radius = 7.5,
	X_gear_1 = 1.75,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -0.75,
	Y_gear_2 = 0,
	Z_gear_2 = -0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.39,
	armour_thickness = 0.002,
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.Skorpion_O);

GT.visual.shape = "Skorpion";
GT.visual.shape_dstr = "Skorpion-dest";
GT.toggle_alarm_state_interval = 1.0;

GT.swing_on_run = false;
GT.IR_emission_coeff = 0.03

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.1;

-- Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 0.0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0.8; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 60; --burning time (seconds)
GT.visual.dust_pos = {0.75, 0.04, 0}
GT.visual.dirt_pos = {-0.75, 0.04, 0}

GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Car, {0, 0}, GT_t.IR_COEFFS_BODY, {0.18, 0.18/800}}}

GT.driverViewConnectorName = {"POINT_DRIVER_01", offset = {0.0, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.fire_on_march = true;

-- =========================== UKM2000C =====================================================================


-- ================================ GPMG MOUNT =======================================================================

--GT.WS[1]
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_01';
GT.WS[ws].pointer = "POINT_SIGHT_01";
GT.WS[ws].cockpit = {"IronSight/IronSight", open = true};
GT.WS[ws].angles = {		
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(15)},					
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(54);
GT.WS[ws].omegaZ = math.rad(54);
GT.WS[ws].pidY = MG_TOWER_PIDY
GT.WS[ws].pidZ = MG_TOWER_PIDZ
GT.WS[ws].stabilizer = false;
GT.WS[ws].laser = false;
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].reference_angle_Z = math.rad(0);

-- ================================ L7A1 7.62 mm machine gun =========================================================

--GT.WS[2].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Rosomak_UKM2000);
__LN.BR[1] = { connector_name = 'POINT_GUN_01', 
							recoilArgument = 42,
							recoilTime = 60/850/2,
							case_extraction_connector 	=  'EJECTOR_1',
							shellCaseID 			= 2,
							extractionDir 			= {x = 0.2, y = -4.0, z = 0.0},
							shellCaseOrientation 	= {x = 0, y = 0, z = 0}								
							}
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

-- ===================================================================================================================

GT.Name = "Skorpion";
GT.DisplayName = _('Skorpion');
GT.DisplayNameShort = _('Skorpion');
GT.Rate = 5;

GT.EPLRS = true

GT.InternalCargo = {
    nominalCapacity = 300,
    maximalCapacity = 300,
}

GT.DetectionRange  = 0;
GT.ThreatRange = 1800;
GT.mapclasskey = "P0091000004";
GT.attribute = {wsType_Ground, wsType_Tank, wsType_Gun, WSTYPE_PLACEHOLDER,
                "APC",
                };
GT.category = "Armor"

GT.tags  =
{
    "Armor",
	"Scout/Recon",
}

GT.Countries = {"USA","Poland"}

add_surface_unit(GT)
