require("init")
lg=love.graphics

function love.load()
    local i=love.image.newImageData("assets/clement-8-1x.png")
    pal:new("clem8",i)
    pal:load("clem8")

    shove.createLayer("game")

    mouse={x,0,y=0,img=lg.newImage("assets/mouse.png")}
end

function love.update(dt)
    input:update()
end 

function love.draw()
    shove.beginDraw()
        shove.beginLayer("game")
            for x=0,pal:getLen()-1 do
                lg.setColor(pal:color(x))
                lg.rectangle("fill",x*20,0,20,20)
            end
            lg.draw(mouse.img,0,21)
        shove.endLayer()
    shove.endDraw()
end