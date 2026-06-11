local defaultNotePos = {}
local spin = 7

function onCreate()
    addCharacterToList('happymouse-V2', 'dad')
  --  setProperty('textBlackSquare.alpha', 0)

    makeLuaSprite('blackSquare', 'black', -370, -225)
    setScrollFactor('blackSquare', 0)
    addLuaSprite('blackSquare', true)
    setObjectCamera('blackSquare', 'camOther')
    setProperty('blackSquare.alpha',0)
end

function onStepHit()
    if curStep == 16 then
--
    end

    if curStep == 544 then
        setProperty('defaultCamZoom', 1.15)
    end

    if curStep == 672 then
        cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
        
        addTiltshiftEffect('camHUD', 0.64, 3)
        setProperty('defaultCamZoom', 0.65)
    end

    if curStep == 800 then
        clearEffects('camHUD')
        setProperty('defaultCamZoom', 1)
    end

    if curStep == 1200 then
        cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
        
        addTiltshiftEffect('camHUD', 0.13, 3)
        setProperty('defaultCamZoom', 0.65)
    end

    if curStep == 1328 then
        addBloomEffect('camGame', 0.3, 2.5)
        clearEffects('camHUD')
        cameraFlash('camGame', 'FFFFFF', 1, true)
		cameraFlash('camHUD', 'FFFFFF', 1, true)
        
        addTiltshiftEffect('camHUD', 0.87, 3)
        setProperty('defaultCamZoom', 1.1)
    end

    if curStep == 1452 then
        doTweenAlpha('blackSquareTween', 'blackSquare', 100, 5, 'circInOut')
    end
end

local defaultNotePos = {}
local spin = 7 -- how much it moves before going the other direction
 
function onSongStart()
    for i = 0, 7 do
        defaultNotePos[i] = {
            getPropertyFromGroup('strumLineNotes', i, 'x'),
            getPropertyFromGroup('strumLineNotes', i, 'y')
        }
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000 --How long it will take.
    
    if curStep >= 1328  then
        setProperty("camHUD.angle", spin * math.sin(songPos))
    end
    
end