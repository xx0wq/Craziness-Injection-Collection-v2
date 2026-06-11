function onCreate()
	makeAnimatedLuaSprite('dust', 'dust', -950, -900)   --Numbers control x and y position
	luaSpriteAddAnimationByPrefix('dust', 'dust', 'dust anim', 16, true);   --Number controls framerate
	doTweenAngle('turnp', 'dust', 0, 0, 'linear') --First number controls rotation
	scaleObject('dust', 9.99, 9.99) --Numbers control scale of sprite
	addLuaSprite('dust', true) --Adds sprite
end


--You can create a second (or more) dust sprite to make the dust more dense by doing the following.
--Copy all the code between "function onCreate()" and "end" and paste it inside.
--Change the first "dust" of each line and name anything you want (ex: 'dust2'). ONLY THE FIRST. SECOND IS THE IMAGE/XML FILE NAME.
--Make sure whatever you put in place of this "dust" is the same for each line you pasted.
--You can now change x/y, framerate, rotation, or scale to make the dust denser.

--Courtesy of SharkFinFace