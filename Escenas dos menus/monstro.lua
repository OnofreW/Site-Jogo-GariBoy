--local tecladoScript = require ("teclado")

local monstro = {}

function monstro.novo (x, y)

	local sprite2 = graphics.newImageSheet ("imagens/monstro.png", {width=453, height=301, numFrames=12})

    local sprite2Animacao = {
	-- {nome="", FrameInicial=, continuação=, tempo=, loopins=}
		{name="parado", start=1, count=3, time=1000, loopCount=0},
		{name="andando", start=1, count=11, time=2000, loopCount=0},
		--{name="pulando", start=8, count=8, time=1000, loopCount=0}


}

local monstro = display.newSprite (sprite2, sprite2Animacao)

monstro.xScale = 2
monstro.yScale = 3.5
monstro.x = x
monstro.y = y
monstro.id = "monstro"
monstro.direcao = "parado"

monstro:setSequence ("andando")
monstro:play()

monstro.numeroPulo = 3

physics.addBody (monstro, "kinematic", {friction= 3, 
		box= {x=0, y=50, halfWidth=100, halfHeight=50, angle=0}} )
	monstro.isFixedRotation = true 

	monstro:toFront ()


--tecladoScript.novo (monstro)

return monstro
end

return monstro