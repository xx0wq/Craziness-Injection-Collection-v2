function onCreate()
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		setPropertyFromClass('ClientPrefs', 'downScroll', true);
	end
end