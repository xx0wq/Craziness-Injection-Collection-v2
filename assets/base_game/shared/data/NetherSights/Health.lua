function opponentNoteHit(id, direction, noteType, isSustainNote)
		health = getProperty('health')
		if getProperty('health') > 0.35 then
			setProperty('health', health- 0.01);
		end
	end
    