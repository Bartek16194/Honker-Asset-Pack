-- Weapons for Rosomak IFV by Currenthill

-- ======================================== 7.62 mm CARTRIDGES ==========================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Rosomak_7_62", 
	user_name 				= _("UKM-2000C 7.62mm"),
	model_name    			= "tracer_bullet_red",
	v0    					= 1165.0,
	Dv0   					= 0.0082,
	Da0     				= 0.0004,
	Da1     				= 0.0,
	mass      				= 0.0095,
	explosive     			= 0.000,
	life_time     			= 7,
	caliber    				= 7.62,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.62,0.65,0.175,1.8},
	k1        				= 2.9e-08,
	tracer_off    			= -100,
	scale_tracer  			= 1,
	cartridge 				= 0,
	
});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Rosomak_7_62_T", 
	user_name 				= _(""),
	model_name    			= "tracer_bullet_red",
	v0    					= 1165.0,
	Dv0   					= 0.0082,
	Da0     				= 0.0004,
	Da1     				= 0.0,
	mass      				= 0.0095,
	explosive     			= 0.000,
	life_time     			= 7,
	caliber     			= 7.62,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.62,0.65,0.175,1.8},
	k1        				= 2.9e-08,
	tracer_off    			= 7,
	scale_tracer  			= 1,
	cartridge 				= 0,
	
});

-- =======================================  30 x 173 mm SHELLS ============================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Rosomak_30_APFSDS_T", 
	user_name 				= _("PMC287 30 mm APFSDS-T"),
	model_name    			= "tracer_bullet_yellow",
	v0    					= 1405.0,
	Dv0   					= 0.0060,
	Da0     				= 0.0006,
	Da1     				= 0.0,
	mass      				= 0.300,
	explosive     			= 0.0,
	subcalibre     			= true,	
	AP_cap_caliber 			= 30.0,	
	life_time     			= 31,
	caliber    				= 30.0,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {-0.2, 0.72, 0.85, 0.08, 2.40},
	k1        				= 5.7e-09,
	tracer_off    			= 6,
	scale_tracer  			= 1,
	cartridge 				= 0,	
});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Rosomak_30_HEI_T", 
	user_name 				= _("MK310 30 mm HEI-T"),
	model_name    			= "tracer_bullet_yellow",
	v0    					= 1080.0,
	Dv0   					= 0.006,
	Da0     				= 0.0006,
	Da1     				= 0.0,
	mass      				= 0.357,
	explosive     			= 0.357,
	life_time     			= 31,
	caliber    				= 30.0,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {-0.2, 0.72, 0.85, 0.08, 2.40},
	k1        				= 5.7e-09,
	tracer_off    			= 6,
	scale_tracer  			= 1,
	cartridge 				= 0,	
});

-- =========================== APFSDS-T 30 mm Automatic Gun ===============================================

GT_t.LN_t.Rosomak_30_APFSDS_T = {name = "APFSDS-T 30mm", display_name = _("APFSDS-T 30mm")}
GT_t.LN_t.Rosomak_30_APFSDS_T.type = 3
GT_t.LN_t.Rosomak_30_APFSDS_T.distanceMin = 10
GT_t.LN_t.Rosomak_30_APFSDS_T.distanceMax = 3000
GT_t.LN_t.Rosomak_30_APFSDS_T.max_trg_alt = 3000
GT_t.LN_t.Rosomak_30_APFSDS_T.reactionTime = 1.0
GT_t.LN_t.Rosomak_30_APFSDS_T.useTargetAccelInSight = true
GT_t.LN_t.Rosomak_30_APFSDS_T.sensor = {}
set_recursive_metatable(GT_t.LN_t.Rosomak_30_APFSDS_T.sensor, GT_t.WSN_t[7])
GT_t.LN_t.Rosomak_30_APFSDS_T.PL = {}
GT_t.LN_t.Rosomak_30_APFSDS_T.PL[1] = {}
GT_t.LN_t.Rosomak_30_APFSDS_T.PL[1].ammo_capacity = 100
GT_t.LN_t.Rosomak_30_APFSDS_T.PL[1].automaticLoader = false;
GT_t.LN_t.Rosomak_30_APFSDS_T.PL[1].shell_name = {"Rosomak_30_APFSDS_T"};
GT_t.LN_t.Rosomak_30_APFSDS_T.PL[1].shot_delay = 60/200
GT_t.LN_t.Rosomak_30_APFSDS_T.BR = { {pos = {5.2, 0, 0} } }

-- =========================== UKM 2000C 7.62 MG =======================================

GT_t.LN_t.Rosomak_UKM2000 = {name = "UKM 2000C 7.62 mm", display_name = _("UKM 2000C 7.62 mm")}
GT_t.LN_t.Rosomak_UKM2000.type = 10
GT_t.LN_t.Rosomak_UKM2000.distanceMin = 1
GT_t.LN_t.Rosomak_UKM2000.distanceMax = 1200
GT_t.LN_t.Rosomak_UKM2000.max_trg_alt = 1200
GT_t.LN_t.Rosomak_UKM2000.reactionTime = 0.5
GT_t.LN_t.Rosomak_UKM2000.useTargetAccelInSight = true
GT_t.LN_t.Rosomak_UKM2000.sensor = {}
set_recursive_metatable(GT_t.LN_t.Rosomak_UKM2000.sensor, GT_t.WSN_t[7])
GT_t.LN_t.Rosomak_UKM2000.PL = {}
GT_t.LN_t.Rosomak_UKM2000.PL[1] = {}
GT_t.LN_t.Rosomak_UKM2000.PL[1].ammo_capacity = 250
GT_t.LN_t.Rosomak_UKM2000.PL[1].shell_name = {"Rosomak_7_62_T", "Rosomak_7_62", "Rosomak_7_62"};
GT_t.LN_t.Rosomak_UKM2000.PL[1].shot_delay = 60/1000
GT_t.LN_t.Rosomak_UKM2000.BR = { {pos = {5.2, 0, 0} } }
for i=2,2 do
    GT_t.LN_t.Rosomak_UKM2000.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.Rosomak_UKM2000.PL[i], GT_t.LN_t.Rosomak_UKM2000.PL[1]);
end;

