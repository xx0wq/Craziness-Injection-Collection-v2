StrumsSize = 0.6
NotesSize = 0.6
--SustainSize = 0.7
StrumsXDefault = {}
beginningPos = 17.1
TotalHits = 0

function onCreate()
    setPropertyFromClass('ClientPrefs', 'middleScroll', false)

    if songName ~= 'Resentfulness' and songName ~= 'Shed Tears' and songName ~= 'Last Smile' and songName ~= 'Mindless' and songName ~= 'Briefcasing' then
		makeAnimatedLuaSprite('Static', 'staticEffect', -35, -40); -- static layer
		setScrollFactor('Static', 0, 0);
		addAnimationByPrefix('Static', 'idle', 'Simbolo 1', 24, true);
		setObjectCamera('Static', 'other')
		scaleObject('Static', 0.66, 0.65);
		screenCenter('Static')
		addLuaSprite('Static')

        makeLuaSprite('Frame', 'frame', 0, 0)
        setObjectCamera('Frame', 'HUD')
        setProperty('Frame.alpha', 0.75)
        setBlendMode('Frame', 'multiply')
        addLuaSprite('Frame')
    end

    makeAnimatedLuaSprite('Reel2', 'film_reel_assets', -35, -170); -- static layer
    setScrollFactor('Reel2', 0, 0);
    addAnimationByPrefix('Reel2', 'idle', 'film reel', 20, true);
    setObjectCamera('Reel2', 'camHUD')
    scaleObject('Reel2', 0.86, 0.86);
    screenCenter('Reel2', 'x')
    setProperty('Reel2.flipY', true)
    addLuaSprite('Reel2')

    makeAnimatedLuaSprite('Reel', 'film_reel_assets', -35, 597); 
    setScrollFactor('Reel', 0, 0);
    addAnimationByPrefix('Reel', 'idle', 'film reel', 20, true);
    setObjectCamera('Reel', 'camHUD')
    scaleObject('Reel', 0.86, 0.86);
    screenCenter('Reel', 'x')
    addLuaSprite('Reel')
end

function onUpdatePost()
    if curStep >= 0  and songName ~= 'Soulless Hell Sights' then
        --setProperty('camHUD.zoom', 0.95)
    end

    --for i = 0, getProperty('notes.length')-1 do
    --    setPropertyFromGroup('notes', i, 'x', getPropertyFromGroup('notes', i, 'x')+math.random(-20,20)*1.25)
    --end
end

function onCreatePost()
    if songName ~= 'Resentfulness' and songName ~= 'Shed Tears' and songName ~= 'Last Smile' then
        setProperty('showRating', false)
        setProperty('showComboNum', false)

        for i = 0,7,1 do
            StrumsXDefault[i] = getPropertyFromGroup('strumLineNotes', i, 'x')
            setPropertyFromGroup('strumLineNotes', i, 'scale.x', StrumsSize)
            setPropertyFromGroup('strumLineNotes', i, 'scale.y', StrumsSize)
        end

        for i = 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i, 'isSustainNote') == false then 
                CurNoteScale = NotesSize
                setPropertyFromGroup('unspawnNotes', i, 'scale.x', CurNoteScale)
                setPropertyFromGroup('unspawnNotes', i, 'scale.y', CurNoteScale)
            end
        end
    end

    if songName == 'Resentfulness' or songName == 'Shed Tears' or songName == 'Last Smile' then size = 21; font = 'VCRosdNEUE.ttf' else size = 14.5; font = 'waltographUI.ttf' end
    if (getPropertyFromClass('ClientPrefs', 'downScroll')) then DefaultHUDY = 30; TextY = 600 else DefaultHUDY = 540; TextY = 60 end

	originalConfig = (getPropertyFromClass('ClientPrefs', 'timeBarType'))
    setProperty('camHUD.alpha', 0.7569)

    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)

    setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')
    setPropertyFromClass('ClientPrefs', 'showMsText', false)

    makeLuaText('ScoreTxt', '?', 1100, 95, 680)
    addLuaText('ScoreTxt')
    setTextFont('ScoreTxt', font)
    setTextSize('ScoreTxt', size)
    setObjectCamera('ScoreTxt', 'other')
    screenCenter('ScoreTxt', 'x')
    setProperty('ScoreTxt.alpha', 0)

    makeLuaText('ComboTxt', 'None', 1100, 95, TextY)
    addLuaText('ComboTxt')
    setTextFont('ComboTxt', font)
    setTextSize('ComboTxt', 21)
    setObjectCamera('ComboTxt', 'camHUD')
    screenCenter('ComboTxt', 'x')
    setProperty('ComboTxt.alpha', 0)

    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'sufferingGameOver');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'sufferingEnd');

    setProperty("scoreTxt.visible", false)

    makeLuaSprite('Scanline', 'scanline')
    setObjectCamera('Scanline', 'camOther')
    setProperty('Scanline.alpha', 0.68)
    scaleObject('Scanline', 2, 1)
    setProperty('Scanline.x', getProperty('Scanline.x')+600)
    screenCenter('Scanline')

    if songName ~= 'Mindless' then
        addLuaSprite('Scanline')
    end

    objectPlayAnimation('Static', 'idle');
    objectPlayAnimation('Reel', 'idle');
end

function onSongStart()
    doTweenAlpha('ScoreTxt_AlphaTween', 'ScoreTxt', 0.666, 1.5, 'linear')
end


function onUpdate()
    --customAccuracy = 100-((PlayerNotesTotal*350)-getProperty('songScore'))/getProperty('songScore')
    --debugPrint(customAccuracy)

    if getProperty('ratingPercent') > 0 then Sanity = math.floor(getProperty('ratingPercent')*1000)/10 else Sanity = '100' end

    TimerPichula = getProperty('timeTxt.text') .. ' / ' ..(secToMin((getProperty('songLength')) /1000))
    setTextString('ScoreTxt', 'Score: ' .. getProperty('songScore') .. ' || Sanity: ' .. Sanity .. '% || ' .. TimerPichula)

    setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -30)
    setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -30)
end

function onBeatHit()
	if curBeat % 2 == 0 then
		setProperty('iconP1.angle', beginningPos*1)
		setProperty('iconP2.angle', beginningPos*-1)
	else
		setProperty('iconP1.angle', beginningPos*-1)
		setProperty('iconP2.angle', beginningPos*1)
	end

	doTweenAngle('p1tween', 'iconP1', 0, 0.5, 'backOut')
	doTweenAngle('p2tween', 'iconP2', 0, 0.5, 'backOut')
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if isSustainNote == false then
        cancelTimer('ComboFade')
        cancelTween('ComboFadeTween')
        TotalHits = TotalHits+1

        local Rating0 = getPropertyFromGroup('notes', id, 'rating')
        local Rating = string.upper(Rating0)

        setTextString('ComboTxt', Rating .. '\n' .. getProperty('combo'))

        scaleObject('ScoreTxt', 1.1, 1.1)
        cancelTween('ScoreTxtTwX')
        cancelTween('ScoreTxtTwY')
        screenCenter('ScoreTxt', 'x')
    
        doTweenX('ScoreTxtTwX', 'ScoreTxt.scale', 1, 0.5, 'quadOut')
        doTweenY('ScoreTxtTwY', 'ScoreTxt.scale', 1, 0.5, 'quadOut')
        screenCenter('ScoreTxt', 'x')

        setProperty('ComboTxt.alpha', 1)
        runTimer('ComboFade', 1, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'ComboFade' then
        doTweenAlpha('ComboFadeTween', 'ComboTxt', 0, 0.45, 'linear')
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
    TotalHits = TotalHits + 1
end

function secToMin(amount)
	local stm = tonumber(amount)
    fish = math.floor(stm % 60)
    
    if string.len(fish) == 1 then
        fish = 0 ..fish
    end

	return math.floor(stm / 60)..":"..fish
end

function onDestroy()
    setPropertyFromClass('ClientPrefs', 'timeBarType', originalConfig)
end

function onMoveCamera(focus)
	if focus == 'boyfriend' then
        --setProperty('defaultCamZoom', 2)
	elseif focus == 'dad' then
        --debugPrint(originalZoom)
		--setProperty('defaultCamZoom', originalZoom)
	end
end