function onEvent(name, value1, value2)
	if name == 'UpAndDown' then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)

		v1 = value1 +(camHUD.y)
		v2 = value2
	end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('camHUD.y', v1)
		doTweenY('hudTween', 'camHUD', 0, 0.5, 'backOut')
	else
		setProperty('camHUD.y', v1*-12)
		doTweenY('hudTween', 'camHUD', 0, 0.5, 'backOut')
	end
end