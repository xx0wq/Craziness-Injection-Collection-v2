function onCreate()
	-- background shit
	makeLuaSprite('street1', 'street1', -600, -300);
	setScrollFactor('street1', 0.9, 0.9);
	
	makeLuaSprite('street1', 'street1', -600, -300);
	setScrollFactor('street1', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('street1', 'street1', -600, -300);
		setScrollFactor('street1', 0.9, 0.9);

		makeLuaSprite('street1', 'street1', -600, -300);
		setScrollFactor('street1', 0.9, 0.9);

		
	end

	addLuaSprite('street1', false);
	addLuaSprite('street1', false);
	addLuaSprite('street1', false);
makeAnimatedLuaSprite('grain', 'grain')
	addAnimationByPrefix('grain', 'idle', 'grain', 24, true)
	setGraphicSize('grain', screenWidth + 6, screenHeight + 6)
	screenCenter('grain')
	setObjectCamera('grain', 'other')
	setProperty('grain.x', getProperty('grain.x') + 3)
	setProperty('grain.y', getProperty('grain.y') + 3)
	setProperty('grain.antialiasing', false)
	addLuaSprite('grain', false)
	objectPlayAnimation('grain', 'idle', true)	

addLuaSprite('destroyed', false);
	addLuaSprite('pantalla', true);
makeAnimatedLuaSprite('daStatic', 'daSTAT', 0, 0)
	setGraphicSize('daStatic', screenWidth, screenHeight)
	setProperty('daStatic.alpha', 0.05)
	screenCenter('daStatic')
	setObjectCamera('daStatic', 'other')
	addAnimationByPrefix('daStatic', 'static', 'staticFLASH', 24, true)
	addLuaSprite('daStatic', false)
	objectPlayAnimation('daStatic', 'static', true)	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
