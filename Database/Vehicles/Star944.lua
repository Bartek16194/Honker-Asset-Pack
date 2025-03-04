GT_t.CH_t.star944 = {
    life = 3,
    mass = 17000,               -- Zaktualizowana masa na 17000 kg
    length = 9.1,
    width = 2.5,
    max_road_velocity = 22.2,   -- Maksymalna prędkość na drodze: 80 km/h (22.2 m/s)
    max_slope = 0.49,           -- Maksymalne nachylenie terenu: około 30% (~17°)
    engine_power = 240,         -- Moc silnika: 240 KM (176 kW)
    engineMinRPM = 600,
    engineMaxPowerRPM = 1900,
    engineMaxRPM = 2150,
    gearRatios = { -8.880, -11.413, 0.0, 12.326, 9.590, 7.435, 5.784, 4.565, 3.552, 2.700, 2.101, 1.629, 1.267, 1.000, 0.778 },
    mainGearRatio = 6.0,        -- Główne przełożenie skrzyni biegów
    automaticTransmission = false, -- Skrzynia manualna
    fordingDepth = 1.2,         -- Maksymalna głębokość brodzenia: 1.2 m
    max_vert_obstacle = 0.4,    -- Maksymalna wysokość przeszkody: ~0.4 m
    max_acceleration = 0.85,    -- Maksymalne przyspieszenie: 0.85 m/s²
    min_turn_radius = 3.7,      -- Minimalny promień skrętu: ~3.7 m
    X_gear_1 = 2.78,            -- Pozycja koła przedniego (X)
    Y_gear_1 = 0,              -- Pozycja koła przedniego (Y)
    Z_gear_1 = 1.04,           -- Pozycja koła przedniego (Z)
    X_gear_2 = -3.5,           -- Pozycja koła tylnego (X)
    Y_gear_2 = 0,              -- Pozycja koła tylnego (Y)
    Z_gear_2 = -1.04,          -- Pozycja koła tylnego (Z)
    gear_type = GT_t.GEAR_TYPES.WHEELS, -- Typ napędu: kołowy
    r_max = 0.625,             -- Maksymalny promień koła: ~0.625 m
    armour_thickness = 0.005,   -- Grubość pancerza: 5 mm
}


GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.star944);

GT.visual.shape = "star944"
GT.visual.shape_dstr = "star944-dest"

GT.IR_emission_coeff = 0.12
GT.visual.IR = { coeffs = {GT_t.IR_COEFFS_ENGINE_APC, GT_t.IR_COEFFS_WHEELS_Truck, {0, 0}, GT_t.IR_COEFFS_BODY, {0.29, 0.29/1200}}}

GT.AddPropVehicle = {
			{ id = "Variant" , control = 'comboList', wCtrl = 150, label = _('Paka'), defValue = 0, arg = 200,
				values = {
				{ id = 1, dispName = _("Plandeka"), value = 0.0},
				{ id = 2, dispName = _("Bez plandeki"), value = 0.1},
				{ id = 3, dispName = _("Golas"), value = 0.2},
				}
			}
		}

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

GT.Name = "star944"
GT.DisplayName = _("Truck Star 944")
GT.DisplayNameShort = _('Truck Star 944');
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
