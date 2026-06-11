function onCreate()
	makeLuaSprite('street', 'backgrounds/motion-blur', -600, -300);
	setScrollFactor('street', 1, 1);

	makeLuaSprite('vignette', 'vignette', -600, -300);
	setScrollFactor('vignette', 0, 0);
	scaleObject('vignette', 1, 1)
	setProperty('vignette.alpha', 0.4)
	screenCenter('vignette')

	addLuaSprite('street', false);
	addLuaSprite('vignette', true);
end