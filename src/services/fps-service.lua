local FpsService = {}

local FpsModel = require ("src/models/fps")

function FpsService:update(dt, fps)
    local new_timer = fps.timer + dt
    local new_frames = fps.frames + 1

    if new_timer > 1.0 then
        return FpsModel:new(0, 0, new_frames)
    else
        return FpsModel:new(new_timer, new_frames, fps.value)
    end
end

return FpsService