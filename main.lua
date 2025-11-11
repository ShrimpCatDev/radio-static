require("init")
lg=love.graphics

function love.load()
    local i=love.image.newImageData("assets/clement-8-1x.png")
    pal:new("clem8",i)
    pal:load("clem8")

    shove.createLayer("game")

    mouse={x,0,y=0,img=lg.newImage("assets/mouse.png")}
    --love.mouse.setVisible(false)
end

function love.update(dt)
    input:update()
    local vp,x,y=shove.mouseToViewport()

    if vp then
        mouse.x,mouse.y=x,y
    end
end 

function love.draw()
    shove.beginDraw()
        shove.beginLayer("game")
            lg.clear(pal:color(2))
            for x=0,pal:getLen()-1 do
                lg.setColor(pal:color(x))
                lg.rectangle("fill",x*20,0,20,20)
            end
            lg.draw(mouse.img,mouse.x,mouse.y)
        shove.endLayer()
    shove.endDraw()
end