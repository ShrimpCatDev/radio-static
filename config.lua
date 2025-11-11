local conf = {}

conf.gW = 16*16
conf.gH = 9*16

conf.wW = conf.gW*4
conf.wH = conf.gH*4

conf.textureFilter = "nearest"
conf.fit = "aspect"
conf.render="layer"
conf.vsync=true

conf.input={
    controls={

    },
    pairs={

    },
    joystick = love.joystick.getJoysticks()[1],
}

return conf