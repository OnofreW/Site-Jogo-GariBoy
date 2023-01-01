--local tecladoScript = require ("teclado")

local player = {}

function player.novo (x, y)

	local sprite1 = graphics.newImageSheet ("imagens/gariPlayer-0.png", {width=291, height=291, numFrames=16})

    local sprite1Animacao = {
	-- {nome="", FrameInicial=, continuação=, tempo=, loopins=}
		{name="parado", start=1, count=1, time=4000, loopCount=0},
		{name="andando", start=8, count=8, time=1000, loopCount=0}, 
		{name="pulando", start=1, count=9, time=500, loopCount=1}


}

local player = display.newSprite (sprite1, sprite1Animacao)

player.xScale = 0.8
player.yScale = 0.8
player.x = x
player.y = y
player.id = "player"
player.direcao = "parado"

player:setSequence ("andando")
player:play()

player.numeroPulo = 0


physics.addBody (player, "dynamic", {friction= 3, 
		box= {x=0, y=0, halfWidth=50, halfHeight=50, angle=0}} )
	player.isFixedRotation = true 
--	tecladoScript.novo (player)

	local function onCollision (self, event)
		if event.phase == "began" then
			-- verifico quem é o outro objeto envolvido na colisão através do event.other
			-- other significa outro 
			if event.other.id == "chao" then
				self.numeroPulo = 0

			elseif event.other.id == "inimigo" then
				print( "colidiu com inimigo" )

				local topo_inimigo = event.other.y - ( event.other.height/2 )
				print( "topo inimigo: " .. topo_inimigo)
				print( "Player Y: " .. self.y )
				
				if self.y <= topo_inimigo then
					display.remove( event.other )
					self:setLinearVelocity( 0, -300 )
				end

			elseif event.other.id == "moeda" then
				display.remove( event.other )

			end

		end
	end
	player.collision = onCollision
	player:addEventListener( "collision" )


	return player
	end 

return player 

