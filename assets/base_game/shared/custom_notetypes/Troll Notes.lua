function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Troll Notes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'TROLL_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Troll Notes" then
		cameraShake('camGame', 0.025, 0.2)
		cameraShake('hud', 0.01, 0.2)
		setProperty('health', getProperty('health')-3);
	end
end
