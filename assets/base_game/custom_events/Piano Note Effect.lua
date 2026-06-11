-- Thank you zPablo!
function onEvent(name, value1, value2)
	if name == 'Piano Note Effect' then
		noteNumber = value1;
		animType = value2;

		if downscroll then 
			defPos = 570
		else
			defPos = 50
		end

		if animType == '' then
			animType = 'backOut'
			if noteNumber == '' then
				close(true)
			end
		end

		noteTweenY('NoteTweenPiano '..noteNumber, noteNumber, defPos + 60, 0.325, animType)
		runTimer('NoteBackUp '..noteNumber, 0.45, 1)
	end
end

function onTimerCompleted()
		noteTweenY('NoteTweenPianoUP '..noteNumber, noteNumber, defPos, 0.15, animType)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if string.match(tag, "NoteBackUp ") then
		noteTweenY('NoteTweenPianoUP '..tonumber(string.sub(tag, -2, -1)), string.sub(tag, -2, -1), defPos, 0.15, animType)
	end
end