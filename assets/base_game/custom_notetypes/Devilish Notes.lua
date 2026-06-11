function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Devilish Notes' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HURTNOTE_assets2'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "Devilish Notes" then
		cameraShake('camGame', 0.025, 0.2)
		cameraShake('hud', 0.01, 0.2)
		setProperty('health', getProperty('health')-3);
		setProperty('playbackRate', getProperty('playbackRate')+0.05)
		debugPrint(getProperty('playbackRate'))
	end
end