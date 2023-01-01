local vitoriaSprite = {}

function vitoriaSprite.novo (x, y)

	local sprite5 = graphics.newImageSheet ("imagens/victory.png", {width=323, height=103, numFrames=8})

    local sprite5Animacao = {
	-- {nome="", FrameInicial=, continuação=, tempo=, loopins=}
		{name="parado", start=1, count=1, time=4000, loopCount=0},
		{name="vitoriaSprite", start=1, count=8, time=5000, loopCount=0}


}

local vitoriaSprite = display.newSprite (sprite5, sprite5Animacao)

vitoriaSprite.xScale = 2.5
vitoriaSprite.yScale = 2.5
vitoriaSprite.x = x
vitoriaSprite.y = y
vitoriaSprite.id = "vitoriaSprite"


vitoriaSprite:setSequence ("vitoriaSprite")
vitoriaSprite:play()



	
return vitoriaSprite
end 

return vitoriaSprite 
