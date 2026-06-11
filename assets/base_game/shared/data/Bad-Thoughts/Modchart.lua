strength = 0

function onCreatePost()
    makeAnimatedLuaSprite('Static', 'static', 0, 0)
    addAnimationByPrefix('Static', 'static', 'idle', 24, true)
    setObjectCamera('Static', 'camOther')
    scaleObject('Static', 2.6, 1.5)
    setProperty('Static.alpha', 0.6)
    screenCenter('Static')
    addLuaSprite('Static', true)
    objectPlayAnimation('Static', 'static')

    setProperty('camGame.alpha', 0)
    setProperty('camHUD.alpha', 0)

end

function onBeatHit()
    if curBeat == 10 then
        doTweenAlpha('DickAlpha', 'Static', 0, 2, 'linear')
    end

    if curBeat == 32 then
        doTweenAlpha('camGameAlpha', 'camGame', 1, 2, 'linear')
        doTweenAlpha('camHUDAlpha', 'camHUD', 1, 2, 'linear')
    end

    if curBeat == 204 then
        strength = 2
    end

    if curBeat == 252 then
        strength = 4
    end

    if curBeat == 306 then
        cameraFlash('camGame', 'FFFFFF', 1, true)
        cameraFlash('camHUD', 'FFFFFF', 1, true)
        --setObjectCamera('Static', 'camGame')
        setProperty('Static.alpha', 0.55)
        setBlendMode('Static', 'multiply')
        strength = 4
    end

    if curBeat % 3 == 0 then
		setProperty('camHUD.angle', strength*3)
		doTweenAngle('hudTween', 'camHUD', 0, 0.95, 'backOut')
	else
        if curBeat % 3 == 1 then
            setProperty('camHUD.angle', strength*-3)
            doTweenAngle('hudTween', 'camHUD', 0, 0.95, 'backOut')
        end
	end
end