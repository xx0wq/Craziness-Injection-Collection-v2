function onEvent(name, value1, value2)
	if name == 'White Flash' then
		cameraFlash('camGame', 'FFFFFF', value1, true)
		cameraFlash('camHUD', 'FFFFFF', value1, true)
	end
end