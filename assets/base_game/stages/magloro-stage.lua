function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'runstreet', -600, -400);
	setScrollFactor('stageback', 0.9, 0.9);

	addLuaSprite('stageback', false);
	addLuaSprite('grain', true);
	
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