function onStepHit()
	if curStep == 1472 then
		addLuaText('d1')
		doTweenAlpha('camGameFadeOut', 'camGame', 0, 0.5, 'linear')
		doTweenAlpha('camHUDFadeOut', 'camHUD', 0, 0.5, 'linear')
	end

	if curStep == 1504 then
		doTweenAlpha('d1fade', 'd1', 0, 0.1, 'linear')
		addLuaText('d2')
	end

	if curStep == 1535 then
		doTweenAlpha('d2fade', 'd2', 0, 0.1, 'linear')
		addLuaText('d3')
	end

	if curStep == 1568 then
		doTweenAlpha('d3fade', 'd3', 0, 0.1, 'linear')
		addLuaText('d4')
	end

	if curStep == 1600 then
		doTweenAlpha('d4fade', 'd4', 0, 0.1, 'linear')
		addLuaText('d5')
	end

	if curStep == 1632 then
		doTweenAlpha('d5fade', 'd5', 0, 0.1, 'linear')
		addLuaText('d6')
	end

    if curStep == 1664 then
		doTweenAlpha('d6fade', 'd6', 0, 0.1, 'linear')
		addLuaText('d7')

		setProperty('defaultCamZoom', 1.25)
		doTweenAlpha('camGameFadeOut', 'camGame', 1, 0.5, 'linear')
		doTweenAlpha('camHUDFadeOut', 'camHUD', 1, 0.5, 'linear')
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
	end

	if curStep == 1680 then
		doTweenAlpha('d7fade', 'd7', 0, 0.1, 'linear')
		addLuaText('d8')
	end

	if curStep == 1692 then
		doTweenAlpha('d8fade', 'd8', 0, 0.1, 'linear')
		addLuaText('d9')
	end

	if curStep == 1708 then
		doTweenAlpha('d9fade', 'd9', 0, 0.1, 'linear')
		addLuaText('d10')
	end

	if curStep == 1728 then
		removeLuaText('d10')
	end
end

function onCreate()
	addVCREffect('camHUD',0.05,true,true,true)
	setProperty('defaultCamZoom', 1.05)
end

function onCreate()
	makeLuaText('d1', 'Are you ready for another really happy sunday?', 600, 325, 200)
	setTextSize('d1', 35)
	setObjectCamera('d1', 'camOther')
	screenCenter('d1')

	makeLuaText('d2', 'Feeling frenzical like every melancholic day...', 600, 325, 200)
	setTextSize('d2', 35)
	setObjectCamera('d2', 'camOther')
	screenCenter('d2')

	makeLuaText('d3', 'Suffering with some wistfulness', 600, 325, 200)
	setTextSize('d3', 35)
	setObjectCamera('d3', 'camOther')
	screenCenter('d3')

	makeLuaText('d4', 'with that crisis which I am aware.', 600, 325, 200)
	setTextSize('d4', 35)
	setObjectCamera('d4', 'camOther')
	screenCenter('d4')

	makeLuaText('d5', 'Isolated full of sadness', 600, 325, 200)
	setTextSize('d5', 35)
	setObjectCamera('d5', 'camOther')
	screenCenter('d5')

	makeLuaText('d6', 'Happily psychotic insane', 600, 325, 200)
	setTextSize('d6', 35)
	setObjectCamera('d6', 'camOther')
	screenCenter('d6')

	makeLuaText('d7', 'THE SIGHTS OF HELL', 600, 325, 200)
	setTextSize('d7', 35)
	setObjectCamera('d7', 'camOther')
	screenCenter('d7')

	makeLuaText('d8', 'MADE YOU DECAY', 600, 325, 200)
	setTextSize('d8', 35)
	setObjectCamera('d8', 'camOther')
	screenCenter('d8')

	makeLuaText('d9', 'TOO LATE TO ESCAPE', 600, 325, 200)
	setTextSize('d9', 35)
	setObjectCamera('d9', 'camOther')
	screenCenter('d9')

	makeLuaText('d10', 'GO AND SAVE YOURSELF', 600, 325, 200)
	setTextSize('d10', 35)
	setObjectCamera('d10', 'camOther')
	screenCenter('d10')
end