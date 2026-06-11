-- Window default x = 1280
-- Window default y = 720

local allowCountdown = false
local Strums_Texture = 'COOLNOTE_assets'
local Notes_Texture = 'COOLNOTE_assets'
nOpAl = 0
nPlMov = 3
pennis = 0
addcounter = 1
nOpsAl = 0
StrumsX = {732, 844, 956, 1068, 92, 204, 316, 428}
strengthThing = 7
StrengthThingHUD = 7
CamHudCustomZoom = 0.75

function onCreatePost()
	setProperty('gf.visible', false)

	--debugPrint(StrumsX)
end


function onCreate()
	--setPropertyFromClass('openfl.Lib','application.window.width', 853.3) 
	--setPropertyFromClass('openfl.Lib','application.window.height', 480)
	--setPropertyFromClass('openfl.Lib', 'resizable', false)

	if downScroll == true then
		oppositeStrumDefaultY = 570
	else
		oppositeStrumDefaultY = 570
	end
end

function onUpdate()
	local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000
	coolthingie = (strengthThing * math.sin(songPos)*2)

    if curStep >= 1744 then -- 1280
		for i = 0, 7, 1 do
			setPropertyFromGroup("strumLineNotes", i, 'direction', 90+coolthingie)
			setPropertyFromGroup("strumLineNotes", i, 'angle', coolthingie)
			--debugPrint(getProperty('camHUD.zoom'))
		end
    end

	--SongSpeed = (math.cos(songPos *250))+1.4

	--for i = 0, 7, 1 do
	--	setPropertyFromGroup('notes', i, 'multSpeed', SongSpeed)
	--	debugPrint(getPropertyFromGroup('notes', i, 'multSpeed'))
	--end


	if curStep >= 384 then
		setProperty("camHUD.zoom", CamHudCustomZoom + math.sin(songPos)/StrengthThingHUD)
	end

	if curStep >= 2560 then
		setProperty("camHUD.angle", coolthingie)
		setProperty("camGame.angle", coolthingie)
	end

end

function onSongStart()
	setProperty('defaultCamZoom', 1.15)
end

function onStepHit()
	if curStep == 1 then
		noteTweenX('OpLeftMove', 0, 732, 1, 'quartInOut')
		noteTweenX('PlLeftMove', 4, 92, 1, 'quartInOut')
	end

	if curStep == 32 then
		noteTweenX('OpDownMove', 1, 844, 1, 'quartInOut')
		noteTweenX('PlDownMove', 5, 204, 1, 'quartInOut')
	end

	if curStep == 64 then
		noteTweenX('OpUpMove', 2, 956, 1, 'quartInOut')
		noteTweenX('PlUpMove', 6, 316, 1, 'quartInOut')
	end

	if curStep == 96 then
		noteTweenX('OpUpMove', 3, 1068, 1, 'quartInOut')
		noteTweenX('PlUpMove', 7, 428, 1, 'quartInOut')
	end

    if curStep == 384 then --384
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
		setProperty('defaultCamZoom', 0.7)
			
		--doTweenAngle('dfsd', 'camHUD', 360, 1, 'backOut')

		for i = 3, 0, -1 do 
			nOpAl = i +1
			noteTweenAlpha(nOpAl, i, 0, 0.4, backOut)
		end

    end

	if curStep == 511 then
		NoteSize = getPropertyFromGroup('strumLineNotes', 4, 'scale.x')
	end

	if curStep >= 512 and curStep <= 640 then
		--math.randomseed(os.time())
		--for i=0,3,1 do
		--	setPropertyFromGroup("strumLineNotes", i+4, 'scale.x', NoteSize+math.random(-0.4, 0,4))
		--end
	end

	if curStep == 640 then
		for i=0,3,1 do
			setPropertyFromGroup("strumLineNotes", i+4, 'scale.x', NoteSize)
		end

		doTweenAngle('dfasdsd', 'camHUD', 180, 1, 'backOut')

		noteTweenX('asdf1', 4, 412, 1, 'quartInOut')
		noteTweenX('asdf2', 5, 524, 1, 'quartInOut')
		noteTweenX('asdf3', 6, 636, 1, 'quartInOut')
		noteTweenX('asdf4', 7, 748, 1, 'quartInOut')
	end

	if curStep == 768 then
		doTweenAngle('dfasdsd', 'camHUD', 0, 1, 'backOut')
	end

	if curStep == 896 then
		for i = 7, 4, -1 do 
			fuckMyself = i + 2
			
			noteTweenY('asdf34' ..fuckMyself, i, 314.5, 0.5, 'quartInOut')
		end

		noteTweenDirection('FUC1K', 4, 180, 0.5 , 'quadInOut');
		noteTweenDirection('FUC3K', 6, -90, 0.5 , 'quadInOut');
		noteTweenDirection('FUC4K', 7, 0, 0.5 , 'quadInOut');

	end

	if curStep == 1056 then
		doTweenAngle('dfsd', 'camHUD', 90, 1, 'backOut')
	end

	if curStep == 1088 then
		doTweenAngle('dfsd', 'camHUD', 180, 1, 'backOut')
	end

	if curStep == 1120 then
		doTweenAngle('dfsd', 'camHUD', 270, 1, 'backOut')
	end

	if curStep == 1152 then
		doTweenAngle('dfsd', 'camHUD', 360, 1, 'backOut')
	end

	if curStep == 1168 then
		doTweenAngle('dfsd', 'camHUD', 90, 1, 'backOut')
	end

	if curStep == 1172 then
		doTweenAngle('dfsd', 'camHUD', 180, 1, 'backOut')
	end

	if curStep == 1176 then
		doTweenAngle('dfsd', 'camHUD', 270, 1, 'backOut')
	end

	if curStep == 1180 then
		doTweenAngle('dfsd', 'camHUD', 360, 1, 'backOut')
	end

	if curStep == 1184 then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
		doTweenAngle('dfsd', 'camHUD', 0, 1, 'backOut')

		for i = 7, 4, -1 do
			noteTweenY(i+69, i, defaultPlayerStrumY0, 1, linear)
			noteTweenDirection('FUC2K' ..i, i, 90, 1, linear);
		end

	end

	if curStep == 1200 then
		noteTweenX('asdf1', 4, 412, 1, 'quartInOut')
		noteTweenX('asdf2', 5, 524, 1, 'quartInOut')
		noteTweenX('asdf3', 6, 636, 1, 'quartInOut')
		noteTweenX('asdf4', 7, 748, 1, 'quartInOut')
	end

	if curStep == 1216 then
		for i = 3, 0, -1 do
			pennis = i+5
			noteTweenY(pennis, i, 570, 0.1, linear)
		end
	end

	if curStep == 1712 then
		setProperty('defaultCamZoom', 0.6)
	end


	if curStep == 1730 then
		setProperty('gf.visible', true)
		characterPlayAnim('gf', 'fall', true)
	end

	if curStep == 1744 then
		setProperty('defaultCamZoom', 0.65)

		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)

		for i = 3, 0, -1 do 
			noteTweenAlpha('TwAlpha' .. i, i, 100, 0.25, backOut)
			noteTweenY('TwY' .. i, i, defaultOpponentStrumY0, 0.25, backOut)
			noteTweenX('TwX' .. i, i, StrumsX[i+5], 0.25, linear)
		end

		for i = 7, 4, -1 do
			noteTweenX('TwX' .. i, i, StrumsX[i-3], 0.25, linear)
			noteTweenY('TwY' .. i, i, defaultPlayerStrumY0, 0.25, backOut)
		end

		CamHudCustomZoom = 0.8
	end

	if curStep == 2000 then
		cameraFlash('camHUD', 'FFFFFF', 1, true)
		StrengthThingHUD = 3
		setProperty('defaultCamZoom', 0.86)

	end

	if curStep == 2256 then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
		setProperty('defaultCamZoom', 1.2)
		StrengthThingHUD = 7
	end

	if curStep == 2320 then
		setProperty('defaultCamZoom', 0.7)
	end


	if curStep == 2560 then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
		setProperty('defaultCamZoom', 0.65)
		cameraShake('hud', 0.0125, 0.1)
		strengthThing = 4.2
	end

	if curStep >= 2560 then
		cameraShake('hud', 0.01, 0.1)
		cameraShake('game', 0.01, 0.1)
		triggerEvent('Add Camera Zoom', 0.015, 0.015)

	end
end

function onBeatHit()
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if curStep > 384 then
		if getProperty('health') > 0.05 then
			setProperty('health', getProperty('health')-0.015)
		end
		if (curStep > 1888 and curStep < 1904) then
			cameraShake('hud', 0.0125, 0.1)
			triggerEvent('Add Camera Zoom', 0.02, 0.02)
		else
			cameraShake('hud', 0.0125, 0.1)
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Devilish Notes" then
		--setProperty('playbackRate', getProperty('playbackRate')+0.05)
	end
end

function onUpdatePost() -- original code by vCherry.kAI.16
	if curStep >= 1299 then
		for i = 0, getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', Strums_Texture);
			if not getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing' or 'Alt Animation') then
				setPropertyFromGroup('notes', i, 'texture', Notes_Texture);
			end
		end
	end
end
