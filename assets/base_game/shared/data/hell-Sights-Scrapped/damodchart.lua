local allowCountdown = false
local Strums_Texture = 'COOLNOTE_assets'
local Notes_Texture = 'COOLNOTE_assets'
nOpAl = 0
nPlMov = 3
pennis = 0
addcounter = 1
nOpsAl = 0

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		startVideo('cutscene3');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	if middlescroll then
		makeLuaText('ms', 'The Middlescroll bugs the song events in Hell Sights. Unactivate it in Gameplay options to make it work correctly.', 600, 325, 200)
		setTextSize('ms', 25)

	--	addLuaText('ms')
	end
	setProperty('defaultCamZoom', 0.8)
end

function onSongStart()
	setProperty('defaultCamZoom', 0.8)
end

function onStepHit()
	if curStep == 1 then
		noteTweenX('OpLeftMove', 0, 732, 1, 'quartInOut')
		noteTweenX('PlLeftMove', 4, 92, 1, 'quartInOut')
	end

	if curStep == 16 then
		noteTweenX('OpDownMove', 1, 844, 1, 'quartInOut')
		noteTweenX('PlDownMove', 5, 204, 1, 'quartInOut')
	end

	if curStep == 32 then
		noteTweenX('OpUpMove', 2, 956, 1, 'quartInOut')
		noteTweenX('PlUpMove', 6, 316, 1, 'quartInOut')
	end

	if curStep == 48 then
		noteTweenX('OpUpMove', 3, 1068, 1, 'quartInOut')
		noteTweenX('PlUpMove', 7, 428, 1, 'quartInOut')
	end

    if curStep == 384 then --384
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
			
		doTweenAngle('dfsd', 'camHUD', 360, 1, 'backOut')

		for i = 3, 0, -1 do 
			nOpAl = i +1
			noteTweenAlpha(nOpAl, i, 0, 0.4, backOut)
		end

    end

	if curStep == 512 then
		noteTweenX('PlSLMove', 4, 956, 1.2, 'quartInOut')
	end

	if curStep == 528 then
		noteTweenX('PlSDMove', 5, 1068, 1.2, 'quartInOut')
	end

	if curStep == 544 then
		noteTweenX('PlSUMove', 6, 92, 1.2, 'quartInOut')
	end

	if curStep == 560 then
		noteTweenX('PlSRMove', 7, 204, 1.2, 'quartInOut')
	end

	if curStep == 640 then
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
		if downScroll then
			noteTweenY('asdf15', 4, 454.5, 4, 'quartInOut')
			noteTweenY('asdf25', 5, 454.5, 4, 'quartInOut')
			noteTweenY('asdf35', 6, 454.5, 4, 'quartInOut')
			noteTweenY('asdf45', 7, 454.5, 4, 'quartInOut')
		else
			noteTweenY('asdf15', 4, 174.5, 4, 'quartInOut')
			noteTweenY('asdf25', 5, 174.5, 4, 'quartInOut')
			noteTweenY('asdf35', 6, 174.5, 4, 'quartInOut')
			noteTweenY('asdf45', 7, 174.5, 4, 'quartInOut')
		end	
	end

	if curStep == 1056 then
		for i = 7, 4, -1 do
			noteTweenY(i+69, i, defaultPlayerStrumY0, 1, linear)
		end

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

	if curStep == 1760 then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)

		for i = 3, 0, -1 do 
			nOpsAl = i +32
			noteTweenAlpha(nOpsAl, i, 100, 0.25, backOut)
		end
	end

	if curStep == 2032 then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if curStep > 384 then
		if (curStep > 1888 and curStep < 1904) then
			cameraShake('hud', 0.0125, 0.1)
			triggerEvent('Add Camera Zoom', 0.02, 0.02)
		else
			cameraShake('hud', 0.0125, 0.1)
		end
	end
end




-- original code by vCherry.kAI.16

function onUpdatePost()
	if curStep >= 1299 then
		for i = 0, getProperty('opponentStrums.length')-1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', Strums_Texture);
			if not getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing' or 'Alt Animation') then
				setPropertyFromGroup('notes', i, 'texture', Notes_Texture);
			end
		end
	end
end
