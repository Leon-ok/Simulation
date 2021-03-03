local Entity = require 'Entity'
local Food = require 'Food'

local Decisions = {}

local Width,Height = love.graphics.getDimensions()

function Decisions:FindFood()
  for i = 1,Entity.EntityTotal do
    for j = 1,Food.FoodTotal do
      local X = ((Food[j][2]-Entity[i][2])^2) 
      local Y = ((Food[j][3]-Entity[i][3])^2)
      table.insert(Food[i],math.sqrt(X+Y))
    end
  end
  table.sort(Food, function(a,b) return a[6] < b[6] end)
end

function Decisions:Run()

end

function Decisions:Fight()
  
end

function Decisions:Network()
  for i = 1, Entity.EntityTotal do
    love.graphics.line(Entity[i][2],Entity[i][3],Food[i][2],Food[i][3])
  end
end

return Decisions