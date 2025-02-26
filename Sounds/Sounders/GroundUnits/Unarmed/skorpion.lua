dofile("Tools.lua")

dofile("GroundUnits/Engines/IFV/LAV25_engine.lua")
dofile("GroundUnits/Engines/Environment.lua")

host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "main")

LAV25_eng:init(host)

--- environment
env = environment:new()
env.max_speed = 40.0

function env:initNames()
	self.move_common = "GndTech/TruckMove"
	self.move_start = nil
	self.move_end = nil
	self.move_hit = "Damage/VehHit"
	self.move_water = "GndTech/GndWaterMove"
end

env:init(host)
--- environment

function onUpdate(params)
	updateHost(host, params)
	
	LAV25_eng:update(params)
	env:update(params)
end