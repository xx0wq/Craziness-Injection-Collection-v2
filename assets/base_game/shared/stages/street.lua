function onCreate()
	-- background shit
	makeLuaSprite('MouseBackgroundBeta', 'MouseBackgroundBeta', -600, -300);
	setScrollFactor('MouseBackgroundBeta', 0.9, 0.9);

	makeLuaSprite('MouseBackgroundBeta', 'MouseBackgroundBeta', -600, -300);
	setScrollFactor('MouseBackgroundBeta', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('MouseBackgroundBeta', 'MouseBackgroundBeta', -600, -300);
		setScrollFactor('MouseBackgroundBeta', 0.9, 0.9);

		makeLuaSprite('MouseBackgroundBeta', 'MouseBackgroundBeta', -600, -300);
		setScrollFactor('MouseBackgroundBeta', 0.9, 0.9);

		
	end

	addLuaSprite('MouseBackgroundBeta', false);
	addLuaSprite('MouseBackgroundBeta', false);
	addLuaSprite('MouseBackgroundBeta', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
