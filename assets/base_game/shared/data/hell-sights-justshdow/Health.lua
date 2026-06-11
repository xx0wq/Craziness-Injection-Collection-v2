function opponentNoteHit(id, direction, noteType, isSustainNote)
		health = getProperty('health')
		if getProperty('health') > 0.10 then
			setProperty('health', health- 0.03);
		end
	end
    