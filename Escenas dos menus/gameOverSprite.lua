local gameOverSprite = {}

function gameOverSprite.novo (x, y)

	local sprite4 = graphics.newImageSheet ("imagens/gameOver.png", {width=322, height=102, numFrames=7})

    local sprite4Animacao = {
	-- {nome="", FrameInicial=, continuação=, tempo=, loopins=}
		{name="parado", start=1, count=1, time=4000, loopCount=0},
		{name="gameOverSprite", start=1, count=7, time=4000, loopCount=0}


}

local gameOverSprite = display.newSprite (sprite4, sprite4Animacao)

gameOverSprite.xScale = 2.5
gameOverSprite.yScale = 2.5
gameOverSprite.x = x
gameOverSprite.y = y
gameOverSprite.id = "gameOverSprite"


gameOverSprite:setSequence ("gameOverSprite")
gameOverSprite:play()



	
return gameOverSprite
end 

return gameOverSprite 

