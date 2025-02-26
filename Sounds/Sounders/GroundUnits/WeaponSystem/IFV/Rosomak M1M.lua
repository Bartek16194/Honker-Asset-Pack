dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")
dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/MissileSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/_cap_common_sounder.lua")

Rosomak_weapons = weapons:new()

Rosomak_weapons:addTurret(1, "GndTech/TurretRotation_Electric")
Rosomak_weapons:addLauncher(1, 1, automatic_gun_2A72)
Rosomak_weapons:addLauncher(1, 2, automatic_gun_2A72)
Rosomak_weapons:addLauncher(1, 3, machinegun_MG3)
