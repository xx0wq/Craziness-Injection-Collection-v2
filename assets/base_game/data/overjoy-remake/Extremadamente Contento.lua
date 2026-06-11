-- this code is messy AF... .. . i should redo it sometime . .. ..

StrumsXDefault = {}
StrumsYDefault = 0
Wildness = 25

Direction = 1

PlayerAngle = 0
OpponentAngle = 0

PlayerSustainAngle = 0
OpponentSustainAngle = 0

PlayerKeybinds = {}

MyX = {}
MyY = {}

TM = {0,2,4,6}
TM2 = {1,3,5,7}

function onCreatePost()
	addHaxeLibrary('InputFormatter');
	StrumsYDefault = getPropertyFromGroup('strumLineNotes', 0, 'y')
	setProperty('camGame.alpha', 0)

	for i = 0,7,1 do
		StrumsXDefault[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
		MyX[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
		MyY[i] = 70

		setPropertyFromGroup('strumLineNotes', i, 'x', StrumsXDefault[i]-1200)
	end

	-- Player keybinds detection. Code by theconcealedcow on Discord!
	runHaxeCode([[
		game.setOnLuas('leftKey', InputFormatter.getKeyName(game.keysArray[0][0]));
		game.setOnLuas('downKey', InputFormatter.getKeyName(game.keysArray[1][0]));
		game.setOnLuas('upKey', InputFormatter.getKeyName(game.keysArray[2][0]));
		game.setOnLuas('rightKey', InputFormatter.getKeyName(game.keysArray[3][0]));
	]]);

	PlayerKeybinds = {leftKey, downKey, upKey, rightKey}

	for i = 1, 4, 1 do
		makeLuaText(PlayerKeybinds[i] .. 'Text', tostring(PlayerKeybinds[i]), 0, 0)
		setTextFont(PlayerKeybinds[i] .. 'Text', 'waltographUI.ttf')
		setTextSize(PlayerKeybinds[i] .. 'Text', 30)
		setProperty(PlayerKeybinds[i] .. 'Text.alpha', 0)
		addLuaText(PlayerKeybinds[i] .. 'Text')
	end

	makeLuaSprite('DirectionTweener', 'cum', 1, 90)
	setProperty('DirectionTweener.visible', false)
	setProperty('DirectionTweener.angle', 90)
	addLuaSprite('DirectionTweener')

	makeLuaSprite('DirectionTweener2', 'cum', 0, 0)
	setProperty('DirectionTweener2.visible', false)
	setProperty('DirectionTweener2.angle', 0)
	addLuaSprite('DirectionTweener2')

	makeAnimatedLuaSprite('Static', 'static', 0, 0)
    addAnimationByPrefix('Static', 'static', 'idle', 24, true)
    setObjectCamera('Static', 'hud')
    scaleObject('Static', 2.6, 1.5)
    setProperty('Static.alpha', 0)
    screenCenter('Static')
    addLuaSprite('Static', true)
    objectPlayAnimation('Static', 'static')
	setBlendMode('Static', 'difference')

	makeLuaText('WIP', 'WORK IN PROGRESS\n@CrazinessInject', 0, 0)
	--addLuaText('WIP')
	setTextSize('WIP', 35)
	setTextFont('WIP', 'CENSCBK.ttf')
	setProperty('WIP.alpha', 0.6)
	screenCenter('WIP')
end

function onBeatHit()
	debugPrint(getProperty('downScroll'))
	if curBeat < 60 then
		if curBeat % 2 == 0 then
			for i = 1,4,1 do
				noteTweenY('N' .. i .. curBeat, TM[i], StrumsYDefault - 23, 0.44, 'cubeOut')
			end
			for i = 1,4,1 do
				noteTweenY('N2' .. i .. curBeat, TM2[i], StrumsYDefault, 0.44, 'cubeOut')
			end
		else
			for i = 1,4,1 do
				noteTweenY('N' .. i .. curBeat, TM[i], StrumsYDefault, 0.44, 'cubeOut')
			end
			for i = 1,4,1 do
				noteTweenY('N2' .. i .. curBeat, TM2[i], StrumsYDefault - 23, 0.44, 'cubeOut')
			end
		end
	end

	if curBeat == 60 then
		for i = 0,7,1 do
			noteTweenY('N3' .. i .. curBeat, i, StrumsYDefault, 0.44, 'cubeOut')
		end
	end

	if curBeat == 64 then
		cameraFlash('hud', 'FFFFFF', 0.4)
	end

	if curBeat >= 64 and curBeat < 160 then
		triggerEvent('Add Camera Zoom', 0.015, 0.035)
	end

	if curBeat == 126 then
		for i=0,3,1 do
			noteTweenY('NY' .. i, i, 750, 0.4, 'circInOut')
		end
	end

	if curBeat == 152.0 then setProperty('defaultCamZoom', 0.75) end
	if curBeat == 153.0 then setProperty('defaultCamZoom', 0.85) end
	if curBeat == 154.0 then setProperty('defaultCamZoom', 0.95) end
	if curBeat == 155.0 then setProperty('defaultCamZoom', 1.05) end
	if curBeat == 156.0 then setProperty('defaultCamZoom', 1.15) end

	if curBeat == 175.0 then
		doTweenAlpha('Static', 'Static', 0.34, 0.3, 'circInOut')
	end

	if curBeat == 176.0 then setProperty('defaultCamZoom', 1.15) end

	if curBeat == 180 then
		doTweenAlpha('Static', 'Static', 0, 1.2, 'linear')
	end

	if curBeat == 184.0 then setProperty('defaultCamZoom', 0.65) end
	if curBeat == 208.0 then setProperty('defaultCamZoom', 0.85) end
	if curBeat == 216.0 then setProperty('defaultCamZoom', 1) end
	if curBeat == 220.0 then setProperty('defaultCamZoom', 1.2) end

	if curBeat == 224.0 then setProperty('defaultCamZoom', 0.65) end

	if curBeat == 239.0 then
		doTweenAlpha('Static', 'Static', 0.4, 0.3, 'circInOut')
	end

	if curBeat == 240.0 then setProperty('defaultCamZoom', 1.15) end

	if curBeat == 244.0 then
		doTweenAlpha('Static', 'Static', 0, 1.2, 'linear')
	end

	if curBeat == 248.0 then setProperty('defaultCamZoom', 0.65) end
	if curBeat == 272.0 then setProperty('defaultCamZoom', 0.85) end

	if curBeat == 160 then
		setProperty('defaultCamZoom', 0.65)
		cameraFlash('hud', 'FFFFFF', 0.15)

		for i=0,3,1 do
			noteTweenAlpha('NA' .. i, i, 0.35, 0.4, 'linear')
		end

		for i=0,3,1 do
			MyX[i] = MyX[i]+64
		end
	end

	if curBeat >= 160 then
		if curBeat % 2 == 0 then
			setProperty('camGame.angle', 2.1)
			doTweenAngle('hudTween', 'camGame', 0, 0.5, 'backOut')
		else
			setProperty('camGame.angle', -2.1)
			doTweenAngle('hudTween', 'camGame', 0, 0.5, 'backOut')
		end
	end

	if curBeat == 188 then
		doTweenX('DirectionLeft', 'DirectionTweener', -1, 1.2, 'sineOut')
	end

	if curBeat == 192 then
		cameraFlash('hud', 'FFFFFF', 0.25)
	end
		
	if curBeat == 221 then
		for i=1,4,1 do
			doTweenAlpha(PlayerKeybinds[i] .. 'AlphaTween', PlayerKeybinds[i] .. 'Text', 0.8, 0.6, 'linear')
		end

		for i = 0,7,1 do
			MyY[i] = 90
		end

		for i = 0, 3, 1 do
			MyY[i] = MyY[i] + 125 * (i)

			noteTweenX('OpNoteCoolX' .. i, i, 100, 1.2, 'circInOut')
			noteTweenY('OpNoteCoolY' .. i, i, MyY[i], 1.2, 'circInOut')
			noteTweenAlpha('OpNoteCoolA' .. i, i, 0.15, 1.2, 'circInOut')
			--noteTweenAngle('OpNoteCoolA' .. i, i, 90, 1.2, 'circInOut')
		end
		
		for i = 4, 7, 1 do
			MyY[i] = MyY[i] + 125 * (i-4)

			noteTweenX('NoteCoolX' .. i, i, 1100, 1.2, 'circInOut')
			noteTweenY('NoteCoolY' .. i, i, MyY[i], 1.2, 'circInOut')
			--noteTweenAngle('NoteCoolA' .. i, i, 180, 1.2, 'circInOut')
		end

		doTweenY('PlayAng', 'DirectionTweener', 180, 1.2, 'sineOut')
		doTweenAngle('OppAng', 'DirectionTweener', 0, 1.2, 'sineOut')

		doTweenY('PlaySAng', 'DirectionTweener2', 90, 1.2, 'sineOut')
		doTweenAngle('OppSAng', 'DirectionTweener2', 270, 1.2, 'sineOut')
	end

	if curBeat == 218 then
		doTweenX('DirectionStop', 'DirectionTweener', 0, 1.2, 'sineOut')
	end

	if curBeat == 224 or curBeat == 256 then
		setProperty('camHUD.zoom', 0.9)
		cameraFlash('hud', 'FFFFFF', 0.4)
		for i = 0, 7, 1 do
			MyX[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
		end
	end

	if curBeat == 252 then		
		for i = 0, 3, 1 do
			MyY[i] = math.abs(MyY[i] - 720) - 150

			noteTweenX('OpNoteCoolX' .. i, i, 1100, 1.2, 'circInOut')
			noteTweenY('OpNoteCoolY' .. i, i, MyY[i], 1.2, 'circInOut')
		end
		
		for i = 4, 7, 1 do
			MyY[i] = math.abs(MyY[i] - 720) - 150

			noteTweenX('NoteCoolX' .. i, i, 100, 1.2, 'circInOut')
			noteTweenY('NoteCoolY' .. i, i, MyY[i], 1.2, 'circInOut')
		end

		doTweenY('PlayAng', 'DirectionTweener', 0, 1.2, 'sineOut')
		doTweenAngle('OppAng', 'DirectionTweener', 180, 1.2, 'sineOut')

		doTweenY('PlaySAng', 'DirectionTweener2', 270, 1.2, 'sineOut')
		doTweenAngle('OppSAng', 'DirectionTweener2', 90, 1.2, 'sineOut')
	end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if getProperty('health') > 0.05 and not isSustainNote then
		setProperty('health', getProperty('health')-0.027)
	end

	if curBeat >= 128 and curBeat < 160 and not isSustainNote then
		cancelTween('NYUpOpponent' .. noteData)
		noteTweenY('NYUpOpponent' .. noteData, noteData, getPropertyFromGroup('strumLineNotes', noteData, 'y')-80, 0.6, 'circInOut')
	end
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
	if curBeat >= 128 and curBeat < 160 and not isSustainNote then
		noteData = noteData+4
		cancelTween('NYUpPlayer' .. noteData)
		noteTweenY('NYUpPlayer' .. noteData, noteData, getPropertyFromGroup('strumLineNotes', noteData, 'y')+30, 0.6, 'circInOut')
	end
end

function onUpdate(elapsed)
	setProperty('botplayTxt.visible', false)

	local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000

	if curBeat >= 64 and curBeat < 221 or curBeat >= 224 and curBeat < 252 or curBeat >= 256 then
		for i = 0,7,1 do
			if curBeat < 126 or curBeat >= 160 then
				setPropertyFromGroup('strumLineNotes', i, 'y', MyY[i] + math.sin(songPos*5+(i/10))*Wildness)
			end
		end
	end

	if curBeat >= 160 and curBeat < 221 or curBeat >= 224 and curBeat < 252 or curBeat >= 256 then
		for i = 0,7,1 do
			setPropertyFromGroup('strumLineNotes', i, 'x', MyX[i] + math.sin(songPos*2.5+(i/10))*Wildness)
		end

		setProperty('camHUD.angle', math.sin(songPos))
	end

	if curBeat >= 221 then
		setProperty('camGame.x', (math.sin(songPos*2.5)-0.5)*10)
		setProperty('camGame.y', (math.sin(songPos)-0.5)*2.5)
		setProperty('camHUD.angle', math.sin(songPos))
	end

	if curBeat >= 160 and curBeat < 221 then
		for i = 0,7,1 do
			MyX[i] = MyX[i] + 1.33*Direction

			if MyX[i] > 1200 then
				MyX[i] = 30
			end

			if MyX[i] < 30 then
				MyX[i] = 1200
			end
			
			setPropertyFromGroup('strumLineNotes', i, 'x', MyX[i])
		end
	end

	Direction = getProperty('DirectionTweener.x')

	PlayerAngle = getProperty('DirectionTweener.y')
	OpponentAngle = getProperty('DirectionTweener.angle')

	PlayerSustainAngle = getProperty('DirectionTweener2.y')
	OpponentSustainAngle = getProperty('DirectionTweener2.angle')

	for i = 0, 3, 1 do
		setPropertyFromGroup("strumLineNotes", i, 'direction', OpponentAngle)
	end

	for i = 4, 7, 1 do
		setPropertyFromGroup("strumLineNotes", i, 'direction', PlayerAngle)
	end

	for i = 1, 4, 1 do
		setProperty(PlayerKeybinds[i] .. 'Text.x', getPropertyFromGroup('strumLineNotes', i+3, 'x')+40)
		setProperty(PlayerKeybinds[i] .. 'Text.y', getPropertyFromGroup('strumLineNotes', i+3, 'y')+40)
	end
end

function onUpdatePost(elapsed)
	for i = 0, getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes', i, 'isSustainNote') then
			if getPropertyFromGroup('notes', i, 'mustPress') then
				setPropertyFromGroup('notes', i, 'angle', PlayerSustainAngle) -- 90
			else
				setPropertyFromGroup('notes', i, 'angle', OpponentSustainAngle) -- 270 
			end
		end
	end
end

function onSongStart()
	for i = 0,7,1 do
		noteTweenX('N' .. i, i, StrumsXDefault[i], 6.86, 'sineOut')
	end

	doTweenAlpha('Game', 'camGame', 1, 13.71, 'quadInOut')
end