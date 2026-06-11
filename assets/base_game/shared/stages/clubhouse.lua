
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('clubhouse', 'clubhouse', -600, -300);
	setScrollFactor('clubhouse', 0.9, 0.9);
	
	makeLuaSprite('ground', 'ground', -650, 600);
	setScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left_black', 'stage_light_black', -125, -100);
		setScrollFactor('stagelight_left_black', 0.9, 0.9);
		scaleObject('stagelight_left_black', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right_black', 'stage_light_black', 1225, -100);
		setScrollFactor('stagelight_right_black', 0.9, 0.9);
		scaleObject('stagelight_right_black', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains_black', 'stagecurtains_black', -500, -300);
		setScrollFactor('stagecurtains_black', 1.3, 1.3);
		scaleObject('stagecurtains_black', 0.9, 0.9);
	end

	addLuaSprite('clubhouse', false);
	addLuaSprite('ground', false);
	addLuaSprite('stagelight_left_black', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('stagecurtains_black', false);
end