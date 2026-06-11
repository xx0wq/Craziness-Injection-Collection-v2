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

    if curStep >= 449  then
        setProperty("camGame.angle", spin * math.sin(songPos))
    end

end
function onCreate()
    precacheImage('Nw/black')
function onStepHit()
if curStep == 63 then
    makeAnimatedLuaSprite('Nw', 'Songs/Nw', -290, 50); -- dura entre 4 a 5 segundos
    addAnimationByPrefix('Nw','Idle','Pass',24,true);
    setLuaSpriteScrollFactor('Nw', 0, 0);
    scaleObject('Nw', 1.0, 1.0);
    addLuaSprite('Nw',true);
    objectPlayAnimation('Nw','Idle',false);

    setObjectCamera('Nw', 'camHUD')
end 
if curStep == 97 then 
    removeLuaSprite('Nw')
end
if curStep == 128 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 256 then 
    cameraFlash('game', 'FFFFFF', 1, true)
    removeLuaSprite('bg')
end
if curStep == 320 then 
    cameraFlash('game', 'FFFFFF', 1, true)
    makeLuaSprite('bg', 'Ci/bg', -165, -95);
    setLuaSpriteScrollFactor('bg', 0.9, 0.9);
    addLuaSprite('bg', false);
end
if curStep == 449 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 832 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1088 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1216 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1232 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1248 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1264 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1280 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1296 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1312 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1328 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
if curStep == 1433 then 
    cameraFlash('game', 'FFFFFF', 1, true)
end
end
end