local Entities = {}

local Width,Height = love.graphics.getDimensions()

function Entities:Create()
  Entities.EntityTotal = love.math.random(10,30)
  for i = 1, Entities.EntityTotal do
    table.insert(Entities,{'fill',love.math.random(7.5,Width-7.5),love.math.random(7.5,Height-7.5),7.5,50,love.math.random(1,100)/100,love.math.random(1,100)/100,love.math.random(1,100)/100,1})
  end
end

function Entities:Draw()
  for i = 1, Entities.EntityTotal do
    love.graphics.setColor(unpack(Entities[i],6,9))
    love.graphics.circle(unpack(Entities[i],1,5))
  end
end

return Entities