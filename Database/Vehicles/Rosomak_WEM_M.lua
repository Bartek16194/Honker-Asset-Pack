-- Chassis
GT_t.CH_t.Rosomak_WEM_M = {
    life = 10,                  
    mass = 26000,               
    length = 8.2,               
    width = 3.7,                
    max_road_velocity = 27.78,  
    max_slope = 0.5,            
    fordingDepth = 1.2,
    canSwim = false,            
    waterline_level = 1.2,
    max_vert_obstacle = 0.8,    
    max_acceleration = 1.2,     
    min_turn_radius = 7.5,      
    engine_power = 544,         
    engineMinRPM = 600,         
    engineMaxPowerRPM = 2200,   
    engineMaxRPM = 2600,        
    gearRatios = { -5.0, -7.1, 0.0, 6.32, 3.3, 2.4, 1.5 },  
    mainGearRatio = 3.0,        
    automaticTransmission = true,  
    X_gear_1 = 2.4,             
    Y_gear_1 = 0,               
    Z_gear_1 = 1.25,            
    X_gear_2 = -2.9,            
    Y_gear_2 = 0,               
    Z_gear_2 = -1.25,           
    gear_type = GT_t.GEAR_TYPES.WHEELS,  
    r_max = 0.66,               
    trace_width = 0.498,        
    armour_thickness = 0.08,    
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.Rosomak_WEM_M);

GT.visual.shape = "Rosomak_WEM_M";
GT.visual.shape_dstr = "Rosomak_WEM_M-dest";

GT.toggle_alarm_state_interval = 1.5;

GT.IR_emission_coeff = 0.15
GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_Tank, GT_t.IR_COEFFS_ROLLERS_Tank, GT_t.IR_COEFFS_152mm, GT_t.IR_COEFFS_BODY, {0.3, 0.3/1650}}}

GT.AddPropVehicle = {
			{ id = "RPG-net" , control = 'checkbox', 				label = _('RPG-net'), 				defValue = true, arg=200, boolean_inverted = false}, -- boolean_inverted = true by default: element present - argVal=0, absent - argVal=1
			{ id = "Concertina wire box" , control = 'checkbox', 	label = _('Concertina wire box'),	defValue = true, arg=201, boolean_inverted = false}, -- boolean_inverted = true by default: element present - argVal=0, absent - argVal=1
			{ id = "Rear toolbox" , control = 'checkbox', 			label = _('Rear toolbox'), 			defValue = true, arg=202, boolean_inverted = false}, -- boolean_inverted = true by default: element present - argVal=0, absent - argVal=1
		}

-- Turbine
GT.turbine = false;

-- Crew
GT.crew_locale = "ENG";
GT.crew_members = {"commander"};

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

-- ====================================================================================================================

GT.Name = "Rosomak-WEM–M";
GT.DisplayName = _("APC Rosomak WEM–M");
GT.DisplayNameShort = _('Rosomak WEM–M');
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
				"APC",
				"Datalink",				
                };				
GT.category = "Armor";

GT.tags  =
{
    "Armor",
	"APC",
}

GT.Countries = {"USA","Poland"}

add_surface_unit(GT)
	