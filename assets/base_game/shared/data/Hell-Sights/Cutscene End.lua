function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('Hell_Sights_End_Cutscene');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end