GT_t.CH_t.jelcz662 = {
    life = 3,
    mass = 15000,  -- Masa własna pojazdu w kilogramach
    length = 9.450,  -- Długość w metrach
    width = 2.600,   -- Szerokość w metrach
    max_road_velocity = 85,  -- Maksymalna prędkość w km/h
    max_slope = 0.25,  -- Maksymalne nachylenie terenu
    fordingDepth = 1.2,  -- Głębokość brodzenia w metrach
    engine_power = 352,  -- Moc silnika w KM (silnik Iveco Cursor 8 EURO III)
    engineMinRPM = 600,
    engineMaxPowerRPM = 2100,
    engineMaxRPM = 2150,
    gearRatios = { -8.880, -11.413, 0.0, 12.326, 9.590, 7.435, 5.784, 4.565, 3.552, 2.700, 2.101, 1.629, 1.267, 1.000, 0.778 },
    mainGearRatio = 6.0,
    automaticTransmission = false,
    max_vert_obstacle = 0.4,  -- Maksymalna wysokość przeszkody pionowej w metrach
    max_acceleration = 0.85,
    min_turn_radius = 3.7,  -- Minimalny promień skrętu w metrach
    X_gear_1 = 2.78,
    Y_gear_1 = 0,
    Z_gear_1 = 1.04,
    X_gear_2 = -3.5,
    Y_gear_2 = 0,
    Z_gear_2 = -1.04,
    gear_type = GT_t.GEAR_TYPES.WHEELS,
    r_max = 0.625,
    armour_thickness = 0.005,
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.jelcz662);

GT.visual.shape = "jelcz662"
GT.visual.shape_dstr = "jelcz662-dest"

GT.IR_emission_coeff = 0.12
GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Truck, {0, 0}, GT_t.IR_COEFFS_BODY, {0.29, 0.29/1200}}}

-- Turbine
GT.turbine = false;

--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.7; --relative burning size
GT.visual.fire_pos[1] = 2.2; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 1.5; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {1.04, 0.05, 0}
GT.visual.dirt_pos = {-1.04, 0.05, 0}

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 5

GT.driverViewConnectorName = {"POINT_DRIVER_01", offset = {0.0, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIRandLLTV"

-- ================================================================================================================

GT.Name = "jelcz662"
GT.DisplayName = _("Truck Jelcz 662")
GT.DisplayNameShort = _('Truck Jelcz 662');
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;

GT.InternalCargo = {
    nominalCapacity = 2400,
    maximalCapacity = 2400,
}

GT.warehouse = true

GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,WSTYPE_PLACEHOLDER,
                "Trucks",
                };
GT.category = "Unarmed";

GT.tags  =
{
    "Unarmed",
    "Support & Logistics",
}

GT.Countries = {"USA","Poland"}

add_surface_unit(GT)
