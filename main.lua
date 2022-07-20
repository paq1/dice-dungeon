local FpsModel = require("src/models/fps")
local FpsService = require("src/services/fps-service")

local fps = FpsModel:default()

function love.load() end

function love.update(dt)
    fps = FpsService:update(dt, fps)
end

function love.draw()
    FpsService:draw_fps(fps)
end
