local allowCountdown = false

function onStartCountdown()
	if not allowCountdown and isStoryMode then
		startVideo('HellSights');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end