-- Leopard 2A7V MBT by Currenthill

-- ======================================== 7.62 mm CARTRIDGES ==========================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Leopard2A7V_7_62", 
	user_name 				= _("7.62 mm"),
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
	name 					= "Leopard2A7V_7_62_T", 
	user_name 				= _("7.62 mm T"),
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

-- =========================== 12.7 CARTRIDGES =======================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Leopard2A7V_12_7_HEIAPT", 
	user_name 				= _("12.7 mm HEIAP-T"),
	model_name    			= "tracer_bullet_yellow",
	v0    					= 930.0,
	Dv0   					= 0.0060,
	Da0     				= 0.0005,
	Da1     				= 0.0,
	mass      				= 0.046,
	explosive     			= 0.200,
	life_time     			= 7,
	caliber     			= 12.7,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.62,0.65,0.175,1.8},
	k1        				= 1.5e-08,
	tracer_off    			= 7,
	scale_tracer  			= 1,
	cartridge 				= 0,
	
});

-- =============================================== 120 mm SHELLS ======================================================================

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Leopard2A7V_KE2020Neo_120_APFSDS_T", 
	user_name 				= _("KE2020Neo 120 mm APFSDS-T"),
	model_name    			= "kinetic_type1",
	v0    					= 2075.0,
	Dv0   					= 0.0008,
	Da0     				= 0.0002,
	Da1     				= 0.0,
	mass      				= 8.5,
	explosive     			= 0,
	life_time     			= 100,  
	caliber     	 		= 120.0, 
	AP_cap_caliber 			= 31.0, 
	subcalibre     			= true,	
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,1.40,0.80,0.172,1.60},
	k1        				= 1.8e-10,
	tracer_off    			= 100,
	scale_tracer  			= 0,
	rotation_freq 			= 0,
	cartridge 				= 0,

});

declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "Leopard2A7V_DM12_120_HEAT_T", 
	user_name 				= _("DM12 120 mm HEAT-T"),
	model_name    			= "pula",
	v0    					= 1180.0,
	Dv0   					= 0.0020,
	Da0     				= 0.0002,
	Da1     				= 0.0,
	mass      				= 14.1,
	explosive     			= 14.1,
	life_time     			= 100,  
	caliber     	 		= 120.0, 
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,1.40,0.80,0.172,1.60},
	k1        				= 1.5e-09,
	tracer_off    			= 100,
	scale_tracer  			= 0,
	rotation_freq 			= 7,
	cartridge 				= 0,
	aiming_table = { {
			init_vel = 1180
		},
		precalculateAimingTable = true,
		precalculateAirDefenceAimingTable = false
	},
	
});

-- =========================== MG3 7.62 MG =======================================

GT_t.LN_t.Leopard2A7V_MG3 = {name = "MG3 7.62 mm", display_name = _("MG3 7.62 mm")}
GT_t.LN_t.Leopard2A7V_MG3.type = 10
GT_t.LN_t.Leopard2A7V_MG3.distanceMin = 1
GT_t.LN_t.Leopard2A7V_MG3.distanceMax = 1200
GT_t.LN_t.Leopard2A7V_MG3.max_trg_alt = 1200
GT_t.LN_t.Leopard2A7V_MG3.reactionTime = 0.5
GT_t.LN_t.Leopard2A7V_MG3.useTargetAccelInSight = true
GT_t.LN_t.Leopard2A7V_MG3.sensor = {}
set_recursive_metatable(GT_t.LN_t.Leopard2A7V_MG3.sensor, GT_t.WSN_t[7])
GT_t.LN_t.Leopard2A7V_MG3.PL = {}
GT_t.LN_t.Leopard2A7V_MG3.PL[1] = {}
GT_t.LN_t.Leopard2A7V_MG3.PL[1].ammo_capacity = 750
GT_t.LN_t.Leopard2A7V_MG3.PL[1].shell_name = {"Leopard2A7V_7_62_T", "Leopard2A7V_7_62", "Leopard2A7V_7_62"};
GT_t.LN_t.Leopard2A7V_MG3.PL[1].shot_delay = 60/1000
GT_t.LN_t.Leopard2A7V_MG3.BR = { {pos = {5.2, 0, 0} } }
for i=2,4 do
    GT_t.LN_t.Leopard2A7V_MG3.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.Leopard2A7V_MG3.PL[i], GT_t.LN_t.Leopard2A7V_MG3.PL[1]);
end;

-- ======================== M2 ==============================================

GT_t.LN_t.Leopard2A7V_M2HB = {name = "M2HB", display_name = _("M2HB")}
GT_t.LN_t.Leopard2A7V_M2HB.type = 10
GT_t.LN_t.Leopard2A7V_M2HB.distanceMin = 1
GT_t.LN_t.Leopard2A7V_M2HB.distanceMax = 1800
GT_t.LN_t.Leopard2A7V_M2HB.max_trg_alt = 1800
GT_t.LN_t.Leopard2A7V_M2HB.reactionTime = 0.25
GT_t.LN_t.Leopard2A7V_M2HB.useTargetAccelInSight = true
GT_t.LN_t.Leopard2A7V_M2HB.sensor = {}
set_recursive_metatable(GT_t.LN_t.Leopard2A7V_M2HB.sensor, GT_t.WSN_t[7])
GT_t.LN_t.Leopard2A7V_M2HB.PL = {}
GT_t.LN_t.Leopard2A7V_M2HB.PL[1] = {}
GT_t.LN_t.Leopard2A7V_M2HB.PL[1].ammo_capacity = 200
GT_t.LN_t.Leopard2A7V_M2HB.PL[1].shell_name = {"Leopard2A7V_12_7_HEIAPT"};
GT_t.LN_t.Leopard2A7V_M2HB.PL[1].shot_delay = 60/600
GT_t.LN_t.Leopard2A7V_M2HB.BR = { {pos = {5.2, 0, 0} } }

-- =============================== Rh-120 L/55A1 120 mm cannon ===================================

GT_t.LN_t.Leopard2A7V_l55 = {name = "Rh-120 L/55A1", display_name = _("Rh-120 L/55A1")}
GT_t.LN_t.Leopard2A7V_l55.type = 2
GT_t.LN_t.Leopard2A7V_l55.distanceMin = 10
GT_t.LN_t.Leopard2A7V_l55.distanceMax = 5000
GT_t.LN_t.Leopard2A7V_l55.max_trg_alt = 1500
GT_t.LN_t.Leopard2A7V_l55.reactionTime = 1.0
GT_t.LN_t.Leopard2A7V_l55.maxShootingSpeed = 12
GT_t.LN_t.Leopard2A7V_l55.sensor = {}
set_recursive_metatable(GT_t.LN_t.Leopard2A7V_l55.sensor, GT_t.WSN_t[7])
GT_t.LN_t.Leopard2A7V_l55.PL = {}
GT_t.LN_t.Leopard2A7V_l55.PL[1] = {}
GT_t.LN_t.Leopard2A7V_l55.PL[1].shot_delay = 6
GT_t.LN_t.Leopard2A7V_l55.PL[1].ammo_capacity = 9
GT_t.LN_t.Leopard2A7V_l55.PL[1].reload_time = 15*14; 
GT_t.LN_t.Leopard2A7V_l55.PL[1].shell_name = {"Leopard2A7V_KE2020Neo_120_APFSDS_T"};
GT_t.LN_t.Leopard2A7V_l55.PL[2] = {}
GT_t.LN_t.Leopard2A7V_l55.PL[2].shot_delay = 14
GT_t.LN_t.Leopard2A7V_l55.PL[2].ammo_capacity = 16
GT_t.LN_t.Leopard2A7V_l55.PL[2].reload_time = 15*14; -- 15 sec per round for stowage
GT_t.LN_t.Leopard2A7V_l55.PL[2].shell_name = {"Leopard2A7V_KE2020Neo_120_APFSDS_T"};
GT_t.LN_t.Leopard2A7V_l55.BR = { {pos = {5.4, 0,0} } }
