GT_t.CH_t.jelcz442 = {
    life = 3,  -- Liczba żyć (wartość umowna, zależna od kontekstu symulacji)
    mass = 9600,  -- Masa własna pojazdu (9600 kg)
    length = 7.98,  -- Długość pojazdu (7,98 metra)
    width = 2.55,  -- Szerokość pojazdu (2,55 metra)
    max_road_velocity = 85,  -- Maksymalna prędkość na drodze (85 km/h)
    max_slope = 0.3,  -- Maksymalne nachylenie, które może pokonać (30%)
    engine_power = 326,  -- Moc silnika (326 KM)
    engineMinRPM = 1200,  -- Minimalne obroty silnika (1200 obr/min)
    engineMaxPowerRPM = 1600,  -- Obroty przy maksymalnej mocy (1600 obr/min)
    engineMaxRPM = 2200,  -- Maksymalne obroty silnika (zakładana wartość)
    gearRatios = { -8.880, -11.413, 0.0, 12.326, 9.590, 7.435, 5.784, 4.565, 3.552, 2.700, 2.101, 1.629, 1.267, 1.000, 0.778},  -- Przełożenia skrzyni biegów
    mainGearRatio = 6.0,  -- Główne przełożenie
    automaticTransmission = false,  -- Skrzynia manualna
    fordingDepth = 1.2,  -- Głębokość brodzenia (1,2 metra)
    max_vert_obstacle = 0.4,  -- Maksymalna wysokość przeszkody, którą może pokonać
    max_acceleration = 0.9,  -- Maksymalne przyspieszenie
    min_turn_radius = 7.0,  -- Minimalny promień skrętu (7 metrów)
    X_gear_1 = 2.78,  -- Pozycja pierwszego biegu (X)
    Y_gear_1 = 0,  -- Pozycja pierwszego biegu (Y)
    Z_gear_1 = 1.04,  -- Pozycja pierwszego biegu (Z)
    X_gear_2 = -3.5,  -- Pozycja drugiego biegu (X)
    Y_gear_2 = 0,  -- Pozycja drugiego biegu (Y)
    Z_gear_2 = -1.04,  -- Pozycja drugiego biegu (Z)
    gear_type = GT_t.GEAR_TYPES.WHEELS,  -- Typ napędu (kołowy)
    r_max = 0.625,  -- Maksymalny promień skrętu kół
    armour_thickness = 0.005,  -- Grubość pancerza (brak pancerza, wartość symboliczna)
}

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.jelcz442);

GT.visual.shape = "jelcz442"
GT.visual.shape_dstr = "jelcz442-dest"

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

GT.Name = "jelcz442"
GT.DisplayName = _("Truck Jelcz 442")
GT.DisplayNameShort = _('Jelcz 442');
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
