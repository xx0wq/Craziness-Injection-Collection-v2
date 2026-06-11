MyX = {}
MyY = {}

Wildness = 45

function onCreatePost()
   -- setProperty("camHUD.zoom", 0.000012)

    makeLuaText('wipTesxtLUA', '(WORK IN PROGRESS!) \n @CrazinessInject', 1100, 95, 540+90)
    --addLuaText('wipTesxtLUA')
    setTextFont('wipTesxtLUA', 'BalooWI.ttf')
    setTextSize('wipTesxtLUA', 31)
    setProperty('wipTesxtLUA.alpha', 0.4)
    screenCenter('wipTesxtLUA')

    makeLuaSprite('cum', 'cum', 0, 0)
	setScrollFactor('cum', 0, 0)
	makeGraphic('cum', 3840, 2160, 'FFFFFFF')
    setProperty('cum.alpha', 0)
	screenCenter('cum')
	addLuaSprite('cum', false)

    for i = 0,7,1 do
		MyX[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
        MyY[i] = getPropertyFromGroup('strumLineNotes', i, 'y')
	end
end

function onBeatHit()
    if curBeat >= 96 and curBeat < 240 or curBeat >= 304 and curBeat < 464 then
        if curBeat % 4 == 0 then
            setProperty("camHUD.zoom", 1.05)
        end
    end

    if curBeat == 176 then
        setProperty('camHUD.angle', 0)
        cameraFlash('camGame', 'FFFFFFF', 1, true)
    end


    if curBeat >= 176 and curBeat < 208 then
        if curBeat % 2 == 0 then
            setProperty("camHUD.zoom", 1.05)
            setProperty('camHUD.y', -42)
            doTweenY('hudTween', 'camHUD', 0, 0.25, 'backOut')
        else
            setProperty('camHUD.y', 42)
            doTweenY('hudTween2', 'camHUD', 0, 0.25, 'backOut')
        end
    end

    if curBeat >= 208 and curBeat < 240 then
        Wildness = 90
        if curBeat % 2 == 0 then
            setProperty('camHUD.x', -42)
            doTweenX('hudTween', 'camHUD', 0, 0.25, 'backOut')
        else
            setProperty('camHUD.x', 42)
            doTweenX('hudTween2', 'camHUD', 0, 0.25, 'backOut')
        end
    end

    if curBeat == 240 then
        Wildness = 0
    end

    if curBeat >= 240 and curBeat < 300 then
        if curBeat % 2 == 0 then
            setProperty("camHUD.zoom", 1.165)
        end
    end

    if curBeat >= 300 and curBeat < 304 then
        setProperty("camHUD.zoom", 1.15)
    end

    if curBeat == 352 then 
        cameraFlash('hud', 'FFFFFF', 0.25)
        setTextFont('ScoreTxt', 'BalooWI.ttf')
        setTextFont('ComboTxt', 'BalooWI.ttf')
    end

    if curBeat == 368 then
        cameraFlash('hud', 'FFFFFF', 0.25)

        for i = 0,7,1 do
            setPropertyFromGroup('strumLineNotes', i, 'x', MyX[i])
            setPropertyFromGroup('strumLineNotes', i, 'y', MyY[i])
        end

        setTextFont('ScoreTxt', 'waltographUI.ttf')
        setTextFont('ComboTxt', 'waltographUI.ttf')
    end

    if curBeat == 393 then
        --triggerEvent('changeCamShader', 'chromaticPincush', 'camGame')
		setProperty('defaultCamZoom', 0.7)
        doTweenColor('bf', 'boyfriend', '000000', 2, 'linear')
        doTweenColor('randy', 'dad', '000000', 2, 'linear')
        doTweenAlpha('cum', 'cum', 1, 2, 'linear')
    end

    if curBeat == 400 then
        cameraFlash('camGame', 'FFFFFF', 3.3)
    end

    if curBeat == 492 then
        setProperty('defaultCamZoom', 1)
        cameraFlash('camGame', 'FFFFFF', 2)
        doTweenColor('bf', 'boyfriend', 'FFFFFF', 2, 'linear')
        doTweenColor('randy', 'dad', 'FFFFFF', 2, 'linear')
        doTweenAlpha('cum', 'cum', 0, 2, 'linear')
    end

    if curBeat >= 464 and curBeat < 496 then
        setProperty("camHUD.zoom", 1.03)
    end

    if curBeat == 496 then
        triggerEvent('Bopping HUD', -0.5)
        setProperty("camHUD.zoom", 0.95)
    end
end

function onStepHit()
    if curStep == 816 or curStep == 820 or curStep == 824 or curStep == 828 then
        setProperty("camHUD.zoom", 1.25)
    end
end

function onUpdate(elapsed)
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000

    if curBeat >= 96 and curBeat < 176 then
        setProperty('camHUD.angle', math.sin(songPos))
    end
    if curBeat >= 176 and curBeat < 352 then
        for i = 0,7,1 do
			setPropertyFromGroup('strumLineNotes', i, 'x', MyX[i] + math.sin(songPos*5.5)*Wildness)
		end
    end
    if curBeat >= 352 and curBeat < 368 then
        for i = 0,7,1 do
			setPropertyFromGroup('strumLineNotes', i, 'x', MyX[i] + math.random(-4, 4))
            setPropertyFromGroup('strumLineNotes', i, 'y', MyY[i] + math.random(-4, 4))
		end
    end
end