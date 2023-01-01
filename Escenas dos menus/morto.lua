local morto = {}

function morto.novo (x, y)

	local sprite3 = graphics.newImageSheet ("imagens/morto.png", {width=557, height=474, numFrames=12})

    local sprite3Animacao = {
	-- {nome="", FrameInicial=, continuação=, tempo=, loopins=}
		{name="parado", start=12, count=1, time=4000, loopCount=0},
		{name="morto", start=1, count=10, time=2500, loopCount=1}


}

local morto = display.newSprite (sprite3, sprite3Animacao)

morto.xScale = 0.7
morto.yScale = 0.7
morto.x = x
morto.y = y
morto.id = "morto"


morto:setSequence ("morto")
morto:play()



	
return morto
end 

return morto 

