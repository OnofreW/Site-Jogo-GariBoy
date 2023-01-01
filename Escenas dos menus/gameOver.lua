local composer = require( "composer" )
local mortoScript = require( "morto" )
local gameOverSprite = require( "gameOverSprite" )

local scene = composer.newScene()


local function gotoMenu ()
	composer.gotoScene ("menu", {time=800, effect="crossFade"})
end

local function gotoGame ()
	composer.gotoScene ("game", {time=800, effect="crossFade"})
end


function scene:create( event )

	local sceneGroup = self.view
	-- É executado quando a cena aberta pela primeira vez, mas ainda não apareceu na tela
	--[[local bg = display.newImageRect (sceneGroup, "imagens/menu.png", 1024, 768)
	bg.x = display.contentCenterX
	bg.y = display.contentCenterY ]]--

	local botaoPlay = display.newImageRect (sceneGroup, "imagens/botaoPlay.png", 400, 120)
	botaoPlay.x = display.contentCenterX + 5
	botaoPlay.y = 670 

	botaoPlay:addEventListener ("tap", gotoGame)

	local botaoMenu = display.newImageRect (sceneGroup, "imagens/botaoMenu.png", 480, 150)
	botaoMenu.x = display.contentCenterX
	botaoMenu.y = 600 

    botaoMenu:addEventListener ("tap", gotoMenu)


	local morto = mortoScript.novo ( display.contentCenterX, 400)


    local gameOverSprite = gameOverSprite.novo ( display.contentCenterX, 200)

	
end

-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Acontece imediatamente antes da cena passar pela tela 

	elseif ( phase == "did" ) then
		-- Acontece imediatamente após a cena sair da tela
		--audio.play (musicaFundo, {channel=1, loops=-1})

	end
end


function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen
		--audio.stop (1)

	end
end

-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Destruir informações de create que não estão relacionados com os objetos de exibição 
	--audio.dispose (musicaFundo)

end



-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene