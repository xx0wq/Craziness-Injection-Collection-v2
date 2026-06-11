-- code by vCherry.kAI.16

local Strums_Texture = 'BLURREDNOTE_assets'
local Notes_Texture = 'COOLNOTE_assets'

function onUpdatePost()
    for i = 0, getProperty('opponentStrums.length')-1 do
        setPropertyFromGroup('opponentStrums', i, 'texture', Strums_Texture);

    if not getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing') then
        setPropertyFromGroup('notes', i, 'texture', Notes_Texture);
    end

    end
end

--
function onCreate()
	setProperty('healthBar.alpha', 0)
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
end