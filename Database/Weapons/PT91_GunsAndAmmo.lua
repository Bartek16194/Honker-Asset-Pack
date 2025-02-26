-- =========================== 7.62x54 CARTRIDGES =======================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "pt91_7_62_T", 
	user_name 				= _("7.62 mm"),
	model_name    			= "tracer_bullet_green",
	v0    					= 820	,
	Dv0   					= 0.0082,
	Da0     				= 0.0004,
	Da1     				= 0.0,
	mass      				= 0.0119,
	explosive     			= 0.0000,
	life_time     			= 7,
	caliber     			= 7.62,
	s        				= 0.0,
	j        				= 0.0,
	l        				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.62,0.65,0.175,1.8},
	k1        				= 2.9e-08, 
	tracer_off    			= 3,
	scale_tracer  			= 1,
	cartridge 				= 0,	
	
});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "pt91_7_62", 
	user_name 				= _("7.62 mm"),
	model_name    			= "tracer_bullet_green",
	v0    					= 820	,
	Dv0   					= 0.0082,
	Da0     				= 0.0004,
	Da1     				= 0.0,
	mass      				= 0.0119,
	explosive     			= 0.0000,
	life_time     			= 7,
	caliber     			= 7.62,
	s        				= 0.0,
	j        				= 0.0,
	l        				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.62,0.65,0.175,1.8},
	k1        				= 2.9e-08,
	tracer_off    			= -100,
	scale_tracer  			= 1,
	cartridge 				= 0,	
	
});

-- =========================== 12.7x108 CARTRIDGES =======================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "pt91_12_7_API_T", 
	user_name 				= _("12.7 mm API-T"),
	model_name    			= "tracer_bullet_green",
	projectile				= "AP",	
	v0    					= 860.0,
	Dv0   					= 0.0072,
	Da0     				= 0.00065,
	Da1     				= 0.0,
	mass      				= 0.047,
	explosive     			= 0.0,
	life_time     			= 7,
	caliber    				= 12.7,
	AP_cap_caliber 			= 12.0,
	subcalibre     			= true,	
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {0.5,0.61,0.80,0.270,1.90},
	k1        				= 1.2e-08,
	tracer_off    			= 4,
	scale_tracer  			= 1,
	cartridge 				= 0,
	
});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "pt91_12_7_API",  
	user_name 				= _("12.7 mm API"),
	model_name    			= "tracer_bullet_green",
	projectile				= "AP",	
	v0    					= 860.0,
	Dv0   					= 0.0072,
	Da0     				= 0.00065,
	Da1     				= 0.0,
	mass      				= 0.047,
	explosive     			= 0.0,
	life_time     			= 7,
	caliber    				= 12.7,
	AP_cap_caliber 			= 12.0,
	subcalibre     			= true,	
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {0.5,0.61,0.80,0.270,1.90},
	k1        				= 1.2e-08,
	tracer_off    			= -100,
	scale_tracer  			= 1,
	cartridge 				= 0,
	
});

-- =============================================== 125 mm SHELLS ======================================================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "pt91_KBA3_125_APFSDS", 
	user_name 				= _("125 mm APFSDS"),
	model_name    			= "kinetic_type1",
	v0    					= 2050.0,
	Dv0   					= 0.0010,
	Da0     				= 0.00025,
	Da1     				= 0.0,
	mass      				= 4.85,
	explosive     			= 0,
	life_time     			= 100,  
	caliber     	 		= 125.0, 
	AP_cap_caliber 			= 31.0, 
	subcalibre     			= true,	
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,1.40,0.81,0.172,1.59},
	k1        				= 2.2e-10,
	tracer_off    			= 100,
	scale_tracer  			= 0,
	rotation_freq 			= 0,
	cartridge 				= 0,

});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "pt91_KBA3_125_HE", 
	user_name 				= _("125 mm HE"),
	model_name    			= "pula",
	v0    					= 850.0,
	Dv0   					= 0.0020,
	Da0     				= 0.00025,
	Da1     				= 0.0,
	mass      				= 23.0,
	explosive     			= 23.0,
	life_time     			= 100,  
	caliber     	 		= 125.0, 
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.62,0.65,0.3,1.45},
	k1        				= 1.3e-09,
	tracer_off    			= 100,
	scale_tracer  			= 0,
	rotation_freq 			= 0,
	cartridge 				= 0,
	aiming_table   			= {
    [1] = {
        init_vel = 850.0,
        aiming_data = {
            {
                distance    = 0,
                elevation   = 0,
                angle_hit   = 0,
                fly_time    = 0,
                MO          = 0,
                cwindY      = 0,
                cwindX      = 0,
                celevation  = 0,
                alt_to_dist_correction = 0,
            },
			{
                distance    = 1350,
                elevation   = 0.5,
                angle_hit   = 0.6,
                fly_time    = 1.1,
                MO          = 7,
                cwindY      = 0.1,
                cwindX      = -0.08,
                celevation  = 0,
                alt_to_dist_correction = 7.0,
            },
            {
                distance    = 2350,
                elevation   = 1.03,
                angle_hit   = 1.11,
                fly_time    = 2.37,
                MO          = 7,
                cwindY      = 0.22,
                cwindX      = -0.19,
                celevation  = 0,
                alt_to_dist_correction = 14.6,
            },
            {
                distance    = 3350.0,
                elevation   = 1.615,
                angle_hit   = 2.02,
                fly_time    = 4.76,
                MO          = 28.0,
                cwindY      = 0.54,
                cwindX      = -0.44,
                celevation  = 0,
                alt_to_dist_correction = 38.2,
            },
            {
                distance    = 4050.0,
                elevation   = 2.07,
                angle_hit   = 4.05,
                fly_time    = 5.62,
                MO          = 43.8,
                cwindY      = 1.23,
                cwindX      = -0.61,
                celevation  = 0,
                alt_to_dist_correction = 102,
            },
            {
                distance    = 4780.0,
                elevation   = 2.644,
                angle_hit   = 7.23,
                fly_time    = 7.5,
                MO          = 66,
                cwindY      = 1.69,
                cwindX      = -1.39,
                celevation  = 0,
                alt_to_dist_correction = 209.8,
            },
            {
                distance    = 5200.0,
                elevation   = 3.05,
                angle_hit   = 11.29,
                fly_time    = 8.34,
                MO          = 87,
                cwindY      = 3.8,
                cwindX      = -3.5,
                celevation  = 0,
                alt_to_dist_correction = 312.4,
            },
            {
                distance    = 6410.0,
                elevation   = 4.25,
                angle_hit   = 15.55,
                fly_time    = 11.57,
                MO          = 140.0,
                cwindY      = 5.51,
                cwindX      = -6.2,
                celevation  = 0,
                alt_to_dist_correction = 388.1,
            },
            {
                distance    = 7080.0,
                elevation   = 5.0,
                angle_hit   = 19.91,
                fly_time    = 13.0,
                MO          = 211.2,
                cwindY      = 8.59,
                cwindX      = -9.52,
                celevation  = 0,
                alt_to_dist_correction = 446.4,
            },
            {
                distance    = 9488.8,
                elevation   = 13.73,
                angle_hit   = 24.25,
                fly_time    = 24.96,
                MO          = 829.1,
                cwindY      = 10.74,
                cwindX      = -13.16,
                celevation  = 0,
                alt_to_dist_correction = 494.7,
            },
        },
    },
}
});

-- =========================== KT 7.62 mm machine gun =======================================

GT_t.LN_t.pt91_kt_7_62 = {name = "KT 7.62", display_name = _("KT 7.62")}
GT_t.LN_t.pt91_kt_7_62.type = 9
GT_t.LN_t.pt91_kt_7_62.distanceMin = 1
GT_t.LN_t.pt91_kt_7_62.distanceMax = 1200
GT_t.LN_t.pt91_kt_7_62.max_trg_alt = 1200
GT_t.LN_t.pt91_kt_7_62.reactionTime = 0.5
GT_t.LN_t.pt91_kt_7_62.sensor = {}
set_recursive_metatable(GT_t.LN_t.pt91_kt_7_62.sensor, GT_t.WSN_t[7])
GT_t.LN_t.pt91_kt_7_62.PL = {}
GT_t.LN_t.pt91_kt_7_62.PL[1] = {}
GT_t.LN_t.pt91_kt_7_62.PL[1].ammo_capacity = 250
GT_t.LN_t.pt91_kt_7_62.PL[1].shell_name = {"pt91_7_62_T", "pt91_7_62"};
GT_t.LN_t.pt91_kt_7_62.PL[1].reload_time = 15;
GT_t.LN_t.pt91_kt_7_62.PL[1].switch_on_delay = 15;
GT_t.LN_t.pt91_kt_7_62.PL[1].shot_delay = 60/650
GT_t.LN_t.pt91_kt_7_62.BR = { {pos = {5.2, 0, 0} } }
for i=2,5 do
    GT_t.LN_t.pt91_kt_7_62.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.pt91_kt_7_62.PL[i], GT_t.LN_t.pt91_kt_7_62.PL[1]);
end;

-- ======================== KT 12.7 mm machine gun ============================================

GT_t.LN_t.pt91_kt_12_7 = {name = "KT 12.7", display_name = _("KT 12.7")}
GT_t.LN_t.pt91_kt_12_7.type = 10
GT_t.LN_t.pt91_kt_12_7.distanceMin = 1
GT_t.LN_t.pt91_kt_12_7.distanceMax = 1800
GT_t.LN_t.pt91_kt_12_7.max_trg_alt = 1800
GT_t.LN_t.pt91_kt_12_7.reactionTime = 0.5
GT_t.LN_t.pt91_kt_12_7.sensor = {}
set_recursive_metatable(GT_t.LN_t.pt91_kt_12_7.sensor, GT_t.WSN_t[5])
GT_t.LN_t.pt91_kt_12_7.PL = {}
GT_t.LN_t.pt91_kt_12_7.PL[1] = {}
GT_t.LN_t.pt91_kt_12_7.PL[1].ammo_capacity = 50
GT_t.LN_t.pt91_kt_12_7.PL[1].shell_name = {"pt91_12_7_API_T", "pt91_12_7_API"};
GT_t.LN_t.pt91_kt_12_7.PL[1].shot_delay = 60/800
GT_t.LN_t.pt91_kt_12_7.PL[1].reload_time = 5;
GT_t.LN_t.pt91_kt_12_7.PL[1].reload_time = 5;
GT_t.LN_t.pt91_kt_12_7.PL[1].switch_on_delay = 5;
GT_t.LN_t.pt91_kt_12_7.BR = { {pos = {5.2, 0, 0} } }
for i=2,10 do
    GT_t.LN_t.pt91_kt_12_7.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.pt91_kt_12_7.PL[i], GT_t.LN_t.pt91_kt_12_7.PL[1]);
end;

-- =============================== KBA3 125 mm cannon ============================================

GT_t.LN_t.pt91_kba3 = {name = "KBA-3", display_name = _("KBA-3")}
GT_t.LN_t.pt91_kba3.type = 2
GT_t.LN_t.pt91_kba3.distanceMin = 10
GT_t.LN_t.pt91_kba3.distanceMax = 3500
GT_t.LN_t.pt91_kba3.max_trg_alt = 1500
GT_t.LN_t.pt91_kba3.reactionTime = 1.5
GT_t.LN_t.pt91_kba3.maxShootingSpeed = 9
GT_t.LN_t.pt91_kba3.sensor = {}
set_recursive_metatable(GT_t.LN_t.pt91_kba3.sensor, GT_t.WSN_t[7])
GT_t.LN_t.pt91_kba3.PL = {}
GT_t.LN_t.pt91_kba3.PL[1] = {}
GT_t.LN_t.pt91_kba3.PL[1].shot_delay = 8
GT_t.LN_t.pt91_kba3.PL[1].ammo_capacity = 12
GT_t.LN_t.pt91_kba3.PL[1].reload_time = 14*20; -- 20 sec per round for automatic loader
GT_t.LN_t.pt91_kba3.PL[1].shell_name = {"pt91_KBA3_125_APFSDS"};
GT_t.LN_t.pt91_kba3.PL[2] = {}
GT_t.LN_t.pt91_kba3.PL[2].shot_delay = 30
GT_t.LN_t.pt91_kba3.PL[2].automaticLoader = false;
GT_t.LN_t.pt91_kba3.PL[2].ammo_capacity = 8
GT_t.LN_t.pt91_kba3.PL[2].reload_time = 10*15; -- 15 sec per round for stowage
GT_t.LN_t.pt91_kba3.PL[2].shell_name = {"pt91_KBA3_125_APFSDS"};
GT_t.LN_t.pt91_kba3.BR = { {pos = {5.4, 0,0} } }
