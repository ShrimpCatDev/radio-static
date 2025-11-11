require("init")
lg=love.graphics

function love.load()
    local i=love.image.newImageData("assets/clement-8-1x.png")
    pal:new("clem8",i)
    pal:load("clem8")
end

function love.update(dt)
    input:update()
end 

function love.draw()
    for x=0,pal:getLen()-1 do
        lg.setColor(pal:color(x))
        lg.rectangle("fill",x*20,0,20,20)
    end
end