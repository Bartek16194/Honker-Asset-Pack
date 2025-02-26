dofile("Tools.lua")
dofile("GroundUnits/WeaponSystem/Tools/weapons.lua")

dofile("GroundUnits/WeaponSystem/Tools/CannonSounds.lua")
dofile("GroundUnits/WeaponSystem/Tools/AutoGunSounds.lua")

Leopard2A7V_weapons = weapons:new()

Leopard2A7V_weapons:addTurret(1, "GndTech/TurretRotation_Electric")	
Leopard2A7V_weapons:addLauncher(1, 1, tank_gun_120mm) -- AP rounds
Leopard2A7V_weapons:addLauncher(1, 2, tank_gun_120mm) -- HE rounds
Leopard2A7V_weapons:addLauncher(1, 3, machinegun_MG3) -- coaxial machinegun

Leopard2A7V_weapons:addTurret(2, "GndTech/TurretRotation_Electric")
Leopard2A7V_weapons:addLauncher(2, 1, machinegun_12_7_M2) -- AA machinegun
