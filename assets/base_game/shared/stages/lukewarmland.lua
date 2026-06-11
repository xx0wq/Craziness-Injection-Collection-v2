function onCreate()
	makeLuaSprite('obj1', 'backgrounds/sansno/lukewarm-land', -2344, -1196)
	scaleObject('obj1', 3, 3)
	setObjectOrder('obj1', 0)
	addLuaSprite('obj1', true)

	makeAnimatedLuaSprite('obj2', 'backgrounds/sansno/two', 570, 170)
	setLuaSpriteScrollFactor('obj2', 1, 1);
	addAnimationByPrefix('obj2', 'idle', 'idle', 2, true)
	objectPlayAnimation('obj2', 'idle', true)
	scaleObject('obj2', 3.5, 3.5)
	setObjectOrder('obj2', 1)
      setProperty('obj2.antialiasing', false)
	addLuaSprite('obj2', true)

      runTimer('Bye', 59, 1)
      runTimer('Bruh', 64.5, 1)
      runTimer('Sound', 64, 1)
end

function onUpdatePost()
      setProperty('iconP1.antialiasing', false)
      setProperty('iconP2.antialiasing', false)
end

function onTimerCompleted(t,l,ll)
   if t == 'Bye' then
   doTweenAlpha('Bye', 'obj2', 0, 0.7, 'sineIn')
end
   if t == 'Bruh' then
   doTweenX('Bruh', 'boyfriend.scale', 50.1, 0.3, 'linear')
   playSound('fart')
end
   if t == 'Sound' then
   playSound('fart')
end
end

function onEndSong()
 if songName == 'Sansno' then
    restartSong(true)
  end
end