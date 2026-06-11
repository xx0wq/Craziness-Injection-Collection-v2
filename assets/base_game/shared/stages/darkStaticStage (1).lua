function onCreate()
	-- background shit

	makeLuaSprite('sb', 'street2', -600, -300);
	setScrollFactor('sb', 1, 1);
	
	makeLuaSprite('mira', 'street3', -600, -300);
	setScrollFactor('mira', 0.9, 0.9);
	
	makeLuaSprite('machinething', 'street1', -600, -300);
	setScrollFactor('machinething', 0.9, 0.9);
	
	makeLuaSprite('dark', 'streetdark', -600, -300);
	setScrollFactor('dark', 0.9, 0.9);
	
        makeAnimatedLuaSprite('st', 'staticEffect', -330, -200); -- static layer
	setScrollFactor('st', 0, 0);
	addAnimationByPrefix('st', 'first', 'Símbolo 1', 24, false);
	objectPlayAnimation('st', 'first');
	scaleObject('st', 0.95, 0.95);
	
    addLuaSprite('sb', false);
	addLuaSprite('mira', false);
	addLuaSprite('machinething', false);
	addLuaSprite('dark', false);
	addLuaSprite('st', true);
		
end

function onStepHit()				-- static anim
	-- triggered 4 times per section
	if curStep % 2 == 0 then
		objectPlayAnimation('st', 'first');
	end
end