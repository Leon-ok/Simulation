local Decisions = require 'Decisions'
local Entity = require 'Entity'
local Food = require 'Food'

function love.load()
  Food:New()
  Entity:Create()
end

function love.update(dt)
  Decisions:FindFood()
end

function love.keypressed(key)
  if key == 'escape' then love.event.quit() end
end

function love.draw()
  Food:Draw()
  Entity:Draw()
  love.graphics.setColor(0,1,0,1)
  Decisions:Network()
  love.graphics.print(love.timer.getFPS())
end
  