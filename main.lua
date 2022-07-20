local FpsModel = require("src/models/fps")
local FpsService = require("src/services/fps-service")

local fps = FpsModel:default()

function love.load() end

function love.update(dt)
    fps = FpsService:update(dt, fps)
end

function love.draw()
    draw_fps(fps)
end


function draw_fps(fps)
    love.graphics.print("fps : "..fps.value, 0, love.graphics.getHeight() -32)
end