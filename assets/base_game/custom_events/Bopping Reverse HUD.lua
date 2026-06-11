function onEvent(name, value1, value2)
	if name == 'Bopping Reverse HUD' then
		cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)

		v1=value1
	end
end

function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('camHUD.angle', v1*170)
		doTweenAngle('hudTween', 'camHUD', v1*180, 0.5, 'backOut')
	else
		setProperty('camHUD.angle', v1*190)
		doTweenAngle('hudTween', 'camHUD', v1*180, 0.5, 'backOut')
	end
end