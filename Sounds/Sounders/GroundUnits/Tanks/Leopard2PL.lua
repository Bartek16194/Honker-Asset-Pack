dofile("Tools.lua")

dofile("GroundUnits/Engines/Tanks/MB873KA501.lua")
dofile("GroundUnits/Engines/Environment.lua")

host = ED_AudioAPI.createHost(ED_AudioAPI.ContextWorld, "main")

mb873ka501:init(host)
--- environment
env = environment:newDefault(host)
env.max_speed = 17.5
--- environment

function onUpdate(params)
    updateHost(host, params)

    mb873ka501:update(params)
    env:update(params)
end