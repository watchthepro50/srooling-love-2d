

function love.load()
car = love.graphics.newImage("car.png")
Street = love.graphics.newImage("Street.png")
star = love.graphics.newImage("Star.png")
love.graphics.setBackgroundColor(124,252,0)
love.window.setTitle("Racing Car Game")
width, height, flags = love.window.getMode( )
srool  = height
srool2 =  -60
frame = 0

end

function love.draw()
love.graphics.draw(Street, 0, srool)
love.graphics.draw(Street, 180, srool)
love.graphics.draw(Street, -180, srool)
love.graphics.draw(Street, 0, srool2)
love.graphics.draw(Street, 180, srool2)
love.graphics.draw(Street, -180, srool2)
love.graphics.draw(car, -70, 100)
end

function love.update()
  frame = frame + 1
  srool = srool - 3
  srool2 = srool2 - 3
  if srool < -60 then
    srool = height
  end
  if srool2 > height then
    srool = -60
  end
end