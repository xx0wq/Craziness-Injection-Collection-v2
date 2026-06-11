function onCreate()
	makeAnimatedLuaSprite('rain', 'rain', -185, -300);
	setLuaSpriteScrollFactor('rain', 0.3, 0.3);
	scaleObject('rain', 1.7, 1.7);

	makeAnimatedLuaSprite('splash', 'splash', 0, 50);

	addLuaSprite('splash', false);
	addAnimationByPrefix('splash', 'loop', 'splash loop', 15, true);
	addLuaSprite('rain', true);
	addAnimationByPrefix('rain', 'loop', 'rain loop', 15, true);
end