-- Land Rover Wolf by Currenthill

-- Chassis
GT_t.CH_t.HONKER4012 = {
	life = 3,
	mass = 2300,
	length = 4.78,
	width = 1.98,
	max_road_velocity = 100,
	max_slope = 0.45,
	fordingDepth = 0.8,
	engine_power = 116,
	engineMinRPM = 750,
	engineMaxPowerRPM = 3800,
	engineMaxRPM = 4500,
	gearRatios = { -3.2, 0.0, 3.91, 2.26, 1.41, 1.00, 0.81},
	mainGearRatio = 4.56,
	automaticTransmission = false,
	max_vert_obstacle = 0.4,
	max_acceleration = 5.2,
	min_turn_radius = 7.0,
	X_gear_1 = 1.60,
	Y_gear_1 = 0,
	Z_gear_1 = 0.70,
	X_gear_2 = -1.05,
	Y_gear_2 = 0,
	Z_gear_2 = -0.70,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.38,
	armour_thickness = 0.002,
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HONKER4012);

GT.visual.shape = "honker";
GT.visual.shape_dstr = "honker-dest";

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
GT.visual.dirt_pos = {-0.75, 0.06, 0}

GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Car, {0, 0}, GT_t.IR_COEFFS_BODY, {0.18, 0.18/800}}}

GT.driverViewConnectorName = {"POINT_DRIVER_01", offset = {0.0, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"

-- =======================================================================================================

GT.Name = "Honker";
GT.DisplayName = _('LUV Honker 4012');
GT.DisplayNameShort = _('LUV Honker 4012');
GT.Rate = 5;

GT.EPLRS = true

GT.InternalCargo = {
    nominalCapacity = 600,
    maximalCapacity = 600,
}

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed";

GT.tags  =
{
    "Unarmed",
	"Scout/Recon",
}

GT.Countries = {"USA","Poland"}

add_surface_unit(GT)
