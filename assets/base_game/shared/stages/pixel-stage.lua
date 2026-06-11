function onCreate()
	makeLuaSprite('sk', 'mickeyPixel/sky', -900, -400);
	setScrollFactor('sk', 0.5, 0.5);
	scaleObject('sk', 4, 4);

	addLuaSprite('sk', false);
	
	makeLuaSprite('bu', 'mickeyPixel/buildings', -1000, -1500);
	setScrollFactor('bu', 0.7, 0.7);
	scaleObject('bu', 7.5,7.5);

	addLuaSprite('bu', false);

	makeLuaSprite('sw', 'mickeyPixel/sidewalk', -860, -400);
	setScrollFactor('sw', 1, 1);
	scaleObject('sw', 4, 4);

	addLuaSprite('sw', false);

	makeLuaSprite('vignette', 'vignette-pixel', -600, -300);
	setScrollFactor('vignette', 1, 1);
	scaleObject('vignette', 1.8, 1.8)
	setProperty('vignette.alpha', 0.6)
	--setProperty('vignette.alpha', 0.3)
	screenCenter('vignette')
	setBlendMode('vignette', 'darken')
	setProperty('vignette.antialiasing', false)


	addLuaSprite('vignette', false);
end
