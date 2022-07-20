local FpsModel = require("src/models/fps")
local FpsService = require("src/services/fps-service")
local GameStateEnum = require("src/enum/game-state-enum")
local FontFactory = require("src/factories/font-factory")

local fps = FpsModel:default()
local current_game_state = GameStateEnum.Menu

function love.load() end

function love.update(dt)
    if current_game_state == GameStateEnum.Game then
        fps = FpsService:update(dt, fps)
    elseif current_game_state == GameStateEnum.Menu then
        -- todo press space to play
    end
end

function love.draw()
    if current_game_state == GameStateEnum.Game then
        FpsService:draw_fps(fps)
    elseif current_game_state == GameStateEnum.Menu then
        draw_menu()
    end
end

function draw_menu()
    local text = "press space to play"
    local font = FontFactory:getFontMenu()
    local font_size = FontFactory:getFontSizeMenu()

    local pos = {
        x = love.graphics.getWidth() / 2. - ((#text / 2.) * (font_size / 2.5)),
        y = love.graphics.getHeight() / 2. - font_size / 2.
    }

    love.graphics.setColor(1, 0, 0)
    love.graphics.setFont(font)
    love.graphics.print(text, pos.x, pos.y)
end
