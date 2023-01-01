local composer = require ("composer")

local playerScript = require ("player")
local perspective = require ("perspective")
local monstroScript = require ("monstro")

-- Cria a câmera. 
local camera = perspective.createView()
-- Prepara os layers da camera.
camera:prependLayer ()

local physics = require ("physics")
physics.start()
physics.setGravity (0, 30)
physics.setDrawMode ("normal")

display.setStatusBar (display.HiddenStatusBar)



---------------------------------------------------------------------------------------------------------
-- Audios 
-- Reservando um canal para música de fundo.
audio.reserveChannels (1)
audio.reserveChannels (2)

-- controla o volume do canal 
--				(volume, {canal=N})
audio.setVolume (0.1, {channel=1})

audio.setVolume (0.1, {channel=2})

local audioFundo1 = audio.loadStream ("audio/fundo1.mp3")

local audioPontos1 = audio.loadSound ("audio/pontos1.mp3")

local audioPulo1 = audio.loadSound ("audio/pulo1.mp3")

audio.play (audioFundo1, {channel=1, loops = -1 })

audio.play (audioPontos1, {channel=2})


local vidas = 5
local pontos = 0
local morto = false 


local vidasText
local pontosText 

local somMorto
local somPonto
local musicaFundo

pontosText = display.newText ( "Pontos: " .. pontos, 200, 80, native.systemFont, 36) 
vidasText = display.newText ( "Vidas: " .. vidas, 400, 80, native.systemFont, 36) 


-----------------------------------------------------------------------------------------------------------
-- Fundo --
local bg1 = display.newImageRect ("imagens/city.png", 1090, 770)
bg1.x, bg1.y = display.contentCenterX, display.contentCenterY
camera:add (bg1, 8)


for i = 0,1 do 
	local chao = display.newRect (0, 600, 1000000000, 600 )
	chao.x = -256+(chao.width*i)
	chao.y = 500
	camera:add (chao, 1 )
    physics.addBody (chao, "kinematic")
    chao.id = "Chao"
    chao:setFillColor (0 ,0 ,0 , 0 )
end

---------------------------------
-- ACIDO 

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = -200+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 1000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 2000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end


for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 3000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 4000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 5000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 6000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 7000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end


for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 8000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 9000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 10000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 11000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 12000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 13000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end

for i = 0, 9 do 
	local acido = display.newImageRect("imagens/acido.png", 150 , 200 )
	acido.x = 14000+(128*i)
	acido.y = 220
	camera:add (acido, 1) 
	physics.addBody (acido , "kinematic")
	acido.id = "acido"
end
---------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------
-- Placas -- 

for i =  0 ,1 do 
	local nivel1 = display.newImageRect ("imagens/nivel1.png", 200 , 200 )
 	nivel1.x =  500
 	nivel1.y = -50
 	camera:add ( nivel1, 1)
 	
end

for i = 0, 1 do 
	local nivel2 = display.newImageRect ("imagens/nivel2.png", 200, 200 )
	nivel2.x = 4900
	nivel2.y = -280
	camera:add (nivel2, 1 )
end 

for i = 0, 1 do 
	local nivel3 = display.newImageRect ("imagens/nivel3.png", 200, 200)
	nivel3.x = 9300
	nivel3.y = -420
	camera:add (nivel3, 1)
end 


for i = 0 , 1 do 
	local lixoFinal = display.newImageRect ("imagens/lixeiraPapel.png" , 200 , 150 )
	lixoFinal.x = 14100
	lixoFinal.y = -400 
	physics.addBody (lixoFinal , "kinematic")
	camera:add (lixoFinal, 1)
	lixoFinal.id = "lixoFinal"
end 

--------------------------------------------------------------------------------------------------------------------

-- PLATAFORMAS FLUTUANTES --

for i = 0, 3 do 
	local plataforma1 = display.newImageRect ("imagens/plataforma1.png", 130, 130)
	plataforma1.x = 250+(128*i)
	plataforma1.y = 100
	camera:add (plataforma1, 1)
	physics.addBody (plataforma1, "kinematic")
end 

for i = 0, 5 do
	local plataforma2 = display.newImageRect ("imagens/plataforma1.png", 130, 130 )
	plataforma2.x = 900+(128*i) 
	plataforma2.y = -50
	camera:add (plataforma2, 1)
    physics.addBody (plataforma2, "kinematic") 
end 

 
for i = 0, 1 do
	local plataforma3 = display.newImageRect ("imagens/plataforma1.png", 130, 130)
	plataforma3.x = 800
	plataforma3.y = 700
	camera:add (plataforma3, 1 )
	physics.addBody (plataforma3, "kinematic")
end 

for i = 0, 2 do 
	local plataforma4  = display.newImageRect ("imagens/plataforma1.png", 130,130 )
	plataforma4.x = 1800+(128*i)
	plataforma4.y = 200
	camera:add (plataforma4, 1)
	physics.addBody (plataforma4, "kinematic")
end

for i = 0, 2 do 
	local plataforma4  = display.newImageRect ("imagens/plataforma1.png", 130,130 )
	plataforma4.x = 2500+(128*i)
	plataforma4.y = 100
	camera:add (plataforma4, 1)
	physics.addBody (plataforma4, "kinematic")
end

for i = 0, 2 do 
	local plataforma5  = display.newImageRect ("imagens/plataforma1.png", 130,130 )
	plataforma5.x = 2000+(128*i)
	plataforma5.y = -200
	camera:add (plataforma5, 1)
	physics.addBody (plataforma5, "kinematic")
end

for i = 0, 2 do 
	local plataforma6 = display.newImageRect ("imagens/plataforma1.png", 130 , 130)
	plataforma6.x = 3250+(128*i)
	plataforma6.y = 100
	camera:add (plataforma6, 1)
	physics.addBody (plataforma6, "kinematic")
end

for i = 0, 3 do 
	local plataforma7 = display.newImageRect ("imagens/plataforma1.png", 130, 130)
	plataforma7.x = 3900+(128*i)
	plataforma7.y = -100
	camera:add (plataforma7, 1)
	physics.addBody (plataforma7, "kinematic")
end 

for i = 0, 2 do 
	local plataforma8 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma8.x = 4500+(128*i)
	plataforma8.y = -150
	camera:add (plataforma8 , 1)
	physics.addBody (plataforma8, "kinematic")
end 

for i = 0, 2 do 
	local plataforma9 = display.newImageRect ("imagens/plataforma1.png", 130 ,130 )
	plataforma9.x = 4900+(128*i)
	plataforma9.y = -150
	camera:add (plataforma9, 1)
	physics.addBody (plataforma9 , "kinematic")
end 

for i = 0, 3 do 
	local plataforma10 = display.newImageRect ("imagens/plataforma1.png", 130 ,130 )
	plataforma10.x = 5500+(128*i)
	plataforma10.y = -250 
	camera:add (plataforma10 , 1)
	physics.addBody (plataforma10 , "kinematic")
end 

for i = 0, 2 do 
	local plataforma11 = display.newImageRect ("imagens/plataforma1.png", 130 ,130)
	plataforma11.x = 6000+(128*i)
	plataforma11.y = -250 
	camera:add (plataforma11, 1  )
	physics.addBody (plataforma11, "kinematic")
end

for i = 0, 2 do 
	local plataforma12 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma12.x = 6500+(128*i)
	plataforma12.y = -260  
	camera:add ( plataforma12, 1)
	physics.addBody (plataforma12, "kinematic")
end 

for i = 0, 4 do 
	local plataforma13 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma13.x = 7100+(128*i)
	plataforma13.y = -280 
	camera:add (plataforma13, 1)
	physics.addBody (plataforma13, "kinematic")
end
 
for i = 0, 7 do 
	local plataforma14 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma14.x = 7950+(128*i)
	plataforma14.y = -270 
	camera:add (plataforma14, 1)
	physics.addBody (plataforma14, "kinematic")
end 

for i = 0, 3 do 
	plataforma15 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma15.x = 9300+(128*i)
	plataforma15.y = -270
	camera:add (plataforma15, 1 )
	physics.addBody (plataforma15, "kinematic")
end 


-----------------------------------------------------------------------------------------------------------------
-- fase 3 

for i = 0, 5 do 
	plataforma16 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma16.x = 10000+(128*i)
	plataforma16.y = -270
	camera:add (plataforma16, 1 )
	physics.addBody (plataforma16, "kinematic")
end 

for i = 0, 5  do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 10200
	espinhos.y = -385
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 

for i = 0, 5  do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 10500
	espinhos.y = -385
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 




for i = 0, 7 do 
	plataforma17 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma17.x = 11000+(128*i)
	plataforma17.y = -270
	camera:add (plataforma17, 1 )
	physics.addBody (plataforma17, "kinematic")
end

for i = 0, 5 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 11000+(128*i)
	plataforma18.y = -900
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma17, "kinematic")
end

for i = 0, 5  do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 11000+(128*i)
	espinhos.y = -850
	espinhos.rotation = 180
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 

 for i = 0, 1 do 
	local caixa1 = display.newImageRect ("imagens/caixa.png", 110, 110 )
	caixa1.x = 11400
	caixa1.y = -390
	camera:add (caixa1, 1)
	physics.addBody (caixa1, "kinematic")

end 

for i = 0, 5  do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 11300
	espinhos.y = -389
	espinhos.rotation = 270
	espinhos.id = "espinhos"
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
end 


for i = 0, 7 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 12200+(128*i)
	plataforma18.y = -270
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma18, "kinematic")
end

for i = 0, 7 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 12200+(128*i)
	espinhos.y = -385
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end


for i = 0, 1 do 
	local caixa1 = display.newImageRect ("imagens/caixa.png", 110, 110 )
	caixa1.x = 12200
	caixa1.y = -390
	camera:add (caixa1, 1)
	physics.addBody (caixa1, "kinematic")
end 

for i = 0, 1 do 
	local caixa1 = display.newImageRect ("imagens/caixa.png", 110, 110 )
	caixa1.x = 12580
	caixa1.y = -390
	camera:add (caixa1, 1)
	physics.addBody (caixa1, "kinematic")
end 

for i = 0, 1 do 
	local caixa1 = display.newImageRect ("imagens/caixa.png", 110, 110 )
	caixa1.x = 12970
	caixa1.y = -390
	camera:add (caixa1, 1)
	physics.addBody (caixa1, "kinematic")
end 


for i = 0, 7 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 13300
	plataforma18.y = -270
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma18, "kinematic")
end

for i = 0, 7 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 13500
	plataforma18.y = -270
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma18, "kinematic")
end

for i = 0, 7 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 13700
	plataforma18.y = -270
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma18, "kinematic")
end

for i = 0, 7 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 13900
	plataforma18.y = -270
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma18, "kinematic")
end

for i = 0, 7 do 
	plataforma18 = display.newImageRect ("imagens/plataforma1.png", 130 , 130 )
	plataforma18.x = 14100
	plataforma18.y = -270
	camera:add (plataforma18, 1 )
	physics.addBody (plataforma18, "kinematic")
end

--------------------------
-- CAIXA 1 

for i = 0, 1 do 
	local caixa1 = display.newImageRect ("imagens/caixa.png", 110, 110 )
	caixa1.x = 7490
	caixa1.y = -395
	camera:add (caixa1, 1)
	physics.addBody (caixa1, "kinematic")
end 

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 7384
	espinhos.y = -390
	espinhos.rotation = 270
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 100, 100 )
	espinhos.x = 7595
	espinhos.y = -390
	espinhos.rotation = 90
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 


----------------------------------------------------------------------------------------------------------------
-- CAIXA 2

for i = 0, 1 do 
	local caixa2 = display.newImageRect ("imagens/caixa.png" , 110 , 110)
	caixa2.x = 8555
	caixa2.y = -390
	camera:add (caixa2, 1)
	physics.addBody (caixa2, "kinematic")
end 

for i = 0, 1 do 
	local caixa2 = display.newImageRect ("imagens/caixa.png" , 110 , 110)
	caixa2.x = 8655
	caixa2.y = -390
	camera:add (caixa2, 1)
	physics.addBody (caixa2, "kinematic")
end 

for i = 0, 1 do 
	local caixa2 = display.newImageRect ("imagens/caixa.png" , 110 , 110)
	caixa2.x = 8655
	caixa2.y = -490
	camera:add (caixa2, 1)
	physics.addBody (caixa2, "kinematic")
end 

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 90, 90 )
	espinhos.x = 8458
	espinhos.y = -390 
	espinhos.rotation = 270
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 90, 90 )
	espinhos.x = 8755
	espinhos.y = -390 
	espinhos.rotation = 90
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 90, 90 )
	espinhos.x = 8755
	espinhos.y = -490 
	espinhos.rotation = 90
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"
end 









----------------------------------------------------------------------------------------------------------------
-- OBJETOS DE COLISÃO ---

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 80, 80 )
	espinhos.x = 5660+(128*i)
	espinhos.y = -350 
	camera:add (espinhos , 1)
	physics.addBody (espinhos, "static", {radius=30 })
	espinhos.id = "espinhos"

end 

for i = 0, 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 80, 80)
	espinhos.x = 6150
	espinhos.y = -350
	camera:add (espinhos, 1)
	physics.addBody (espinhos, "static", {radius=30})
	espinhos.id = "espinhos"
end 

for i = 0 , 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 80, 80)
	espinhos.x = 6150
	espinhos.y = -350
	camera:add (espinhos, 1)
	physics.addBody (espinhos, "static", {radius=30})
	espinhos.id = "espinhos"
end 

for i = 0 , 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 80, 80)
	espinhos.x = 6150
	espinhos.y = -350
	camera:add (espinhos, 1)
	physics.addBody (espinhos, "static", {radius=30})
	espinhos.id = "espinhos"
end 


for i = 0 , 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 80, 80)
	espinhos.x = 6150
	espinhos.y = -350
	camera:add (espinhos, 1)
	physics.addBody (espinhos, "static", {radius=30})
	espinhos.id = "espinhos"
end 

for i = 0 , 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 80, 80)
	espinhos.x = 6630
	espinhos.y = -360
	camera:add (espinhos, 1)
	physics.addBody (espinhos, "static", {radius=30})
	espinhos.id = "espinhos"
end 

for i = 0 , 1 do 
	local espinhos = display.newImageRect ("imagens/espinhos.png", 90, 100)
	espinhos.x = 8080
	espinhos.y = -380
	camera:add (espinhos, 1)
	physics.addBody (espinhos, "static", {radius=30})
	espinhos.id = "espinhos"
end 


----------------------------------------------------------------------------------------
-- LIXOS FASE 1 ---


for i = 0, 4 do 
    local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 950 + (128*i)
	lixo.y = -144
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 2 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 1700
	lixo.y = -350
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 2 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 2000+(128*i)
	lixo.y = -295
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 2 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 1700
	lixo.y = -350
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 2650
	lixo.y = 5
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 2950 + (128*i)
	lixo.y = -180
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 3400 + (128*i)
	lixo.y = 6
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 3700
	lixo.y = -180
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 2 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 4000+(128*i)
	lixo.y = -194
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/cinza.png", 60, 60)
	lixo.x = 4650
	lixo.y = -244
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id= "lixo"
end

-----------------------------------------------------------------------------------------------------------------
-- LIXOS FASE 2 --

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 5500
	lixo.y = -345
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 5890 + (128*i)
	lixo.y = -345
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 6500 
	lixo.y = -350
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 6750 
	lixo.y = -350
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 6630
	lixo.y = -450
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 6500 
	lixo.y = -350
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 7100+(128*i)
	lixo.y = -370
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 7490
	lixo.y = -480
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 8230 + (128*i)
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 8230 + (128*i)
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/amarelo.png", 60, 60)
	lixo.x = 8655
	lixo.y = -570
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end


----------------------------------------------------------------------------------------------------------------
-- LIXO FASE 3 --

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 9560 + (128*i)
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 9850
	lixo.y = -450
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 10000
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end


for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 10350
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end


for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 11000+(128*i)
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 11400
	lixo.y = -475
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 11600
	lixo.y = -650
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 11750+(128*i)
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 12050
	lixo.y = -600
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 12200
	lixo.y = -475
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 12580
	lixo.y = -475
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 12972
	lixo.y = -475
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 13300
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 13500
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 13700
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end

for i = 0, 1 do 
	local lixo = display.newImageRect ("imagens/azul.png", 60, 60)
	lixo.x = 13900
	lixo.y = -360
	camera:add (lixo, 1)
	physics.addBody (lixo, "static", {radius=25 })
	lixo.id = "lixo"
end
-----------------------------------------------------------------------------------------------------------------
-- Monstro 

--[[for i = 0,1 do 
	local monstro = display.newImageRect ("imagens/monstro.png", 500,800)
	monstro.x = -300 
	monstro.y = -1
	camera:add (monstro, 3 )
end  ]]--
-----------------------------------------------------------------------------------------------------------------
-- SPRITE PERSONAGEM  --

local player = playerScript.novo (240, 0)
camera:add (player, 1)

local monstro = monstroScript.novo (-150, 0)
camera:add (monstro, 1)

camera.damping = 1 -- Controla a fluidez da camera ao seguir o player.
camera:setFocus (player) -- Troca o foco para o player 
camera:track()-- Inicia a perseguição da camera


    -- Efeito Parallax trás a ilusão de profundidade ao jogo. 
-- As posições das vírgulas representam os números dos layers.
			-- layer(1, 2,   3,  4,    5,   6,   7,  8)
camera:setParallax (11, 0.9, 0.8, 0.7, 0.6, 0.5, 0.1, 0) 
-- Alteração decrescente para cada layer.


-- print ("Focus ativo" .. setFocus) 


local function atualizaText ()
	vidasText.text = "Vidas: " .. vidas
	pontosText.text = "Pontos: " .. pontos
    
end





local function gameLoop ()

    	transition.to (monstro, {x=19500, time=45000,
		onComplete = function() display.remove (monstro) end })

		transition.to (player, {x=20000, time=45000,
		onComplete = function() display.remove (monstro) end })

	end

gameLoopTimer = timer.performWithDelay (1500, gameLoop, 0)

local function pular (event)
    local player = event.target
    local phase = event.phase 

-- Quando a fase de toque for igual a began então 
    if ( "began" == phase ) then 
	player:applyLinearImpulse (0, -2, player.x, player.y)

	player:setSequence ("pulando") 
	player:play ()
	audio.play (audioPulo1)

-- Quando a fase de toque for igual a "ended" ou "canceled" então 
    elseif ("ended" == phase or "cancelled" == phase ) then 
	player:setSequence ("andando") 
	player:play ()
    end -- Fecha o if
end -- fecha a function 


player:addEventListener ("touch", pular )


local function onCollision (event)

    if (event.phase == "began") then

        local obj1 = event.object1
        local obj2 = event.object2

    if (( obj1.id == "player" and obj2.id == "espinhos") or
            (obj1.id == "espinhos" and obj2.id == "player")) 
    then 
        --if (morto == false ) then 
         --   morto = true

            vidas = vidas -1 
            vidasText.text = "Vidas: " .. vidas 
            --audio.play (somPontos)

            if (vidas == 0) then 
            	camera:setFocus (monstro)
                display.remove (player)
               

                
            end -- if vidas 

        --end -- if morto 

        end -- if myName
    end -- if event.phase
end -- Function  

Runtime:addEventListener ("collision", onCollision)

local function onCollision2 (event)

    if (event.phase == "began") then

        local obj1 = event.object1
        local obj2 = event.object2

    if (( obj1.id == "player" and obj2.id == "lixo") or
            (obj1.id == "lixo" and obj2.id == "player")) 
    then 
        --if (morto == false ) then 
         --   morto = true

            pontos = pontos +100 
            pontosText.text = "Pontos: " .. pontos
            audio.play (audioPontos1)
            display.remove (obj2)
 


        end -- if myName
    end -- if event.phase
end -- Function  

Runtime:addEventListener ("collision", onCollision2)

local function onCollision3 (event)

    if (event.phase == "began") then

        local obj1 = event.object1
        local obj2 = event.object2

    if (( obj1.id == "player" and obj2.id == "lixoFinal") or
            (obj1.id == "lixoFinal" and obj2.id == "player")) 
    then 
        --if (morto == false ) then 
         --   morto = true

            vidas = 0 
            vidasText.text = "Vidas: " .. vidas 
            --audio.play (somPontos)

            if (vidas == 0) then 

            	camera:setFocus (monstro)
                display.remove (player)
                
                

                
            end -- if vidas 

        --end -- if morto 

        end -- if myName
    end -- if event.phase
end -- Function  

Runtime:addEventListener ("collision", onCollision3)

local function onCollision4 (event)

    if (event.phase == "began") then

        local obj1 = event.object1
        local obj2 = event.object2

    if (( obj1.id == "player" and obj2.id == "acido") or
            (obj1.id == "acido" and obj2.id == "player")) 
    then 
        --if (morto == false ) then 
         --   morto = true

            vidas = 0 
            vidasText.text = "Vidas: " .. vidas 
            --audio.play (somPontos)

            if (vidas == 0) then 

            	camera:setFocus (monstro)
                display.remove (player)
                
                

                
            end -- if vidas 

        --end -- if morto 

        end -- if myName
    end -- if event.phase
end -- Function  

Runtime:addEventListener ("collision", onCollision4)