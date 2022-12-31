local teclado = {}

function teclado.novo (objeto)

	local function verificarTecla (event)

		if event.phase == "down" then 
			if event.keyName == "d" then
				objeto.direcao = "direita"
				objeto:setSequence ("andando")
				objeto:play ()
				objeto.xScale = 0.8 

			elseif event.keyName == "a" then
				objeto.direcao = "esquerda"
				objeto:setSequence ("andando")
				objeto:play ()
				objeto.xScale = -0.8
			end 

			if event.keyName == "space" then 
				objeto.numeroPulo = objeto.numeroPulo +1
				objeto.direcao = "cima"
				objeto:setSequence ("pulando")
				objeto:play ()
				objeto.xScale = 0.8


				if objeto.numeroPulo == 1 then 
					objeto:applyLinearImpulse (0, -1.5, objeto.x, objeto.y)

				elseif objeto.numeroPulo == 2 then 
					transition.to (objeto, {rotation=objeto.rotation+0, time=750})
					objeto:applyLinearImpulse (0, -1.5, objeto.x, objeto.y)
					objeto.numeroPulo = 0
				end 
			end 

		elseif event.phase == "up" then 
			if event.keyName == "d" or "a" then
				objeto.direcao = "parado"
				objeto:setSequence ("pulando")
				objeto:play()
			end -- fecha o keyName
		end -- fecha o event.phase
	end -- fecha a function 

	Runtime:addEventListener ("key", verificarTecla)

	local function verificarDirecao ()

		local velocidadeX, velocidadeY = objeto:getLinearVelocity()

		if objeto.direcao == "direita" and velocidadeX <=200 then 
			objeto:applyLinearImpulse (0.5, 0, objeto.x, objeto.y)

		elseif objeto.direcao == "esquerda" and velocidadeX >= -200 then 
			objeto:applyLinearImpulse (-0.5, 0, objeto.x, objeto.y)
		end 
	end 

	Runtime:addEventListener ("enterFrame", verificarDirecao)

end 


--[[function StateMachine:init(states)

    self.pauseState = self.empty
end
function StateMachine:statePause(pause)
    assert(self.states[stateName])
    self.pauseState = self.current
    self.current = self.states[pause]()
    self.current:enter()
end
function StateMachine:stateUnPause()
    self.current = self.pauseState
    self.pauseState = self.empty
    self.current:enter()
end
]]--
return teclado