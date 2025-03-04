declare_plugin("Honker Asset Pack",

{
displayName   	= _("Honker Asset Pack"),
shortName	  	=   "Honker Asset Pack",
installed 	 	= true, 
dirName	  	 	= current_mod_path,
	
fileMenuName 	= _("Honker Asset Pack"),
version		 	= "Pre-Release 04/03/25",		 
state		 	= "installed",
developerName	= "Bartek16194",
info		 	= _("Honker Asset Pack by Bartek16194."),

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

plugin_done()
