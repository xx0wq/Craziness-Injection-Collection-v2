function onCreate()
	makeLuaSprite('sk', 'mickeyPixel/skDark', -900, -400);
	setScrollFactor('sk', 0.9, 0.9);
	scaleObject('sk', 4, 4);

	addLuaSprite('sk', false);
	
	makeLuaSprite('bu', 'mickeyPixel/bDark', -1000, -1500);
	setScrollFactor('bu', 0.9, 0.9);
	scaleObject('bu', 7.5,7.5);

	addLuaSprite('bu', false);

	makeLuaSprite('sw', 'mickeyPixel/sDark', -860, -400);
	setScrollFactor('sw', 0.9, 0.9);
	scaleObject('sw', 4, 4);

	addLuaSprite('sw', false);
end
