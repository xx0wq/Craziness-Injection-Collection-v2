function onCreate()
	-- background shit
	makeLuaSprite('street1', 'pantalla', -600, -300);
	setScrollFactor('street1', 0.9, 0.9);
	
	makeLuaSprite('obj1', 'p1bg', -1025, -560)
	setObjectOrder('obj1', 0)
	scaleObject('obj1', 4, 4)

	makeLuaSprite('obj2', 'p2bg', -1025, -560)
	setObjectOrder('obj2', 0)
	scaleObject('obj2', 4, 4)

	addLuaSprite('obj2', false)
	addLuaSprite('obj1', true)
		

	makeLuaSprite('street1', 'pantalla', -600, -300);
	setScrollFactor('street1', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('street1', 'pantalla', -600, -300);
		setScrollFactor('street1', 0.9, 0.9);

		makeLuaSprite('street1', 'pantalla', -600, -300);
		setScrollFactor('street1', 0.9, 0.9);

		
	end

	addLuaSprite('pantalla', false);
	addLuaSprite('pantalla', false);
	addLuaSprite('pantalla', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
