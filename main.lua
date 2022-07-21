local GameStateHandler = require("src/game-state/game-state-handler")

function love.load() end

function love.update(dt)
    GameStateHandler:update(dt)
end

function love.draw()
    GameStateHandler:draw()
end
