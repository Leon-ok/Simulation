local Food = {}

local Width,Height = love.graphics.getDimensions()

function Food:New()
  Food.FoodTotal = love.math.random(50,200)
  for i = 1, Food.FoodTotal do
    table.insert(Food,{'fill',love.math.random(5,Width-5),love.math.random(5,Height-5),5,5})
  end
end

function Food:Draw()
  love.graphics.setColor(1, 50/255, 50/255, 1)
  for i = 1, Food.FoodTotal do
    love.graphics.rectangle(unpack(Food[i],1,5))
  end
  love.graphics.setColor(1,1,1,1)
end

return Food