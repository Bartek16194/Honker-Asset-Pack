declare_plugin("Honker Asset Pack",

{
displayName   	= _("Honker Asset Pack"),
shortName	  	=   "Honker Asset Pack",
installed 	 	= true, 
dirName	  	 	= current_mod_path,
	
fileMenuName 	= _("Honker Asset Pack"),
version		 	= "1.0 Release",		 
state		 	= "installed",
developerName	= "Bartek16194",
info		 	= _("Honker Asset Pack by Bartek16194."),

Skins	=
	{
		{
			name	= "Honker Asset Pack",
			dir		= "Theme"
		},
	},

})
----------------------------------------------------------------------------------------

-- shapes
mount_vfs_model_path	(current_mod_path.."/Shapes")

-- liveries
mount_vfs_liveries_path (current_mod_path.."/Liveries")

-- textures
mount_vfs_texture_path  (current_mod_path.."/Textures/rosomak")
mount_vfs_texture_path  (current_mod_path.."/Textures/honker")
mount_vfs_texture_path  (current_mod_path.."/Textures/skorpion")
mount_vfs_texture_path  (current_mod_path.."/Textures/jelcz662")
mount_vfs_texture_path  (current_mod_path.."/Textures/leo2pl")
mount_vfs_texture_path  (current_mod_path.."/Textures/twardy")
mount_vfs_texture_path  (current_mod_path.."/Textures/star266")
mount_vfs_texture_path  (current_mod_path.."/Textures/jelcz442")
mount_vfs_texture_path  (current_mod_path.."/Textures/jelcz662_beczka")
mount_vfs_texture_path  (current_mod_path.."/Textures/star944")
mount_vfs_texture_path  (current_mod_path.."/Textures/rosomak_wem_m")
mount_vfs_texture_path  (current_mod_path.."/Textures/tumak2")
mount_vfs_texture_path  (current_mod_path.."/Textures/tumak2_wkm")
mount_vfs_texture_path  (current_mod_path.."/Textures/tumak2_ukm")

-- sensors
dofile(current_mod_path..'/Database/Weapons/Rosomak_Ammo.lua')
dofile(current_mod_path..'/Database/Weapons/Leopard2_GunsAndAmmo.lua')
dofile(current_mod_path..'/Database/Weapons/PT91_GunsAndAmmo.lua')

-- vechicles
dofile(current_mod_path..'/Database/Vehicles/Rosomak.lua')
dofile(current_mod_path..'/Database/Vehicles/Rosomak_M1M.lua')
dofile(current_mod_path..'/Database/Vehicles/Honker.lua')
dofile(current_mod_path..'/Database/Vehicles/Skorpion.lua')
dofile(current_mod_path..'/Database/Vehicles/Jelcz662.lua')
dofile(current_mod_path..'/Database/Vehicles/Jelcz662_beczka.lua')
dofile(current_mod_path..'/Database/Vehicles/Leopard2PL.lua')
dofile(current_mod_path..'/Database/Vehicles/Twardy.lua')
dofile(current_mod_path..'/Database/Vehicles/Star266.lua')
dofile(current_mod_path..'/Database/Vehicles/Jelcz442.lua')
dofile(current_mod_path..'/Database/Vehicles/Star944.lua')
dofile(current_mod_path..'/Database/Vehicles/Rosomak_WEM_M.lua')
dofile(current_mod_path..'/Database/Vehicles/Tumak2.lua')
dofile(current_mod_path..'/Database/Vehicles/Tumak2_WKM.lua')
dofile(current_mod_path..'/Database/Vehicles/Tumak2_UKM.lua')

plugin_done()
