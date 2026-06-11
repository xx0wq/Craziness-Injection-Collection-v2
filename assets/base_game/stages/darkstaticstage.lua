function onCreate()
	-- when the mickey is sus

	makeLuaSprite('street', 'streetdark', -600, -300);
	setScrollFactor('street', 1.0, 1.0);

	makeLuaSprite('obj1', '', -1025, -560)
	setObjectOrder('obj1', 0)
	scaleObject('obj1', 4, 4)

	makeLuaSprite('obj2', '', -1025, -560)
	setObjectOrder('obj2', 0)
	scaleObject('obj2', 4, 4)

	addLuaSprite('obj2', false)
	addLuaSprite('obj1', true)

        makeAnimatedLuaSprite('', '', -100, -80); -- static layer
	setScrollFactor('', 0, 0);
	addAnimationByPrefix('', '', '', 24, false);
	objectPlayAnimation('', '');
	scaleObject('', 0.735, 0.735);


	addLuaSprite('street', false);
	addLuaSprite('st', false);

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
end

function onStepHit()				-- static anim
	-- triggered 4 times per section
	if curStep % 2 == 0 then
		objectPlayAnimation('st', 'first');
	end
end