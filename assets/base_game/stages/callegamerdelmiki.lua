function onCreate()
	-- background shit
	precacheImage('chillidogs/black')

	makeLuaSprite('bg', 'Ci/bg', -165, -95);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);

	makeLuaSprite('bordes', 'Ci/bordes', 0, -80);

	addLuaSprite('bordes', true);
	addLuaSprite('bg', false);

	setObjectCamera('bordes', 'camHUD')
end
function onCreatePost()
	triggerEvent('Camera Follow Pos','1450', '800') -- Self explanatory
	cameraFlash('game', 'FFFFFF', 2, true)
	
end