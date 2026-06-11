-- Code made by Sergierix
-- Make sure all the caps of the songName match so the code works !!
step = 0
vocals = 0
inst = 0

function onCreate()
    switch(songName) : caseof {
        -- Tape A
        ['Bad Thoughts'] = function (x)
            step = 144
            composer = 'SansPZSG'
            charter = 'Just_Sheb'
        end,
        ['Hopeless'] = function (x)
            composer = 'SansPZSG'
            charter = 'Just_Sheb'
        end,
        ['Overjoy'] = function (x)
            composer = 'WindowsGod2'
            charter = 'Just_Sheb'
        end,
        ['Injection'] = function (x)
            composer = 'Awe & JustShxdow'
            charter = 'Just_Sheb'
        end,
        ['Hell Sights'] = function (x)
            composer = 'ForFurtherNotice'
            charter = 'Just_Sheb'
        end,
        ['The Last Show'] = function (x)
            composer = 'Sergierix'
            charter = 'Just_Sheb'
        end,

        -- Tape B
        ['Pardon'] = function (x)
            composer = 'UnKnown'
            charter = 'Just_Sheb'
        end,
        ['Displeaced'] = function (x)
            composer = 'SanseyRevival'
            charter = 'Just_Sheb'
        end,
        ['Methyphobia'] = function (x)
            composer = 'JustShxdow'
            charter = 'Sergierix'
        end,

        -- Soulless
        ['Soulless Bad Thoughts'] = function (x)
            composer = 'SansPZSG'
            charter = 'Sergierix'
        end,
        ['Soulless Hell Sights V2'] = function (x)
            composer = 'SansPZSG'
            charter = 'Just_Sheb'
        end,
        ['Soulless The Last Show'] = function (x)
            composer = 'Sergierix'
            charter = 'Just_Sheb'
        end,
        -- Pixel
        ['Resentfulness'] = function (x)
            composer = 'JustShxdow'
            charter = 'Just_Sheb'
        end,


        -- Extras
        ['Faux Show'] = function (x)
            composer = 'ThatFedoraDude'
            charter = 'Just_Sheb'
        end,
        ['NetherSights'] = function (x)
            step = 144
            composer = 'Sergix'
            charter = 'Just_Sheb'
        end,
        ['Motion Blur'] = function (x)
            composer = 'Sergierix'
            charter = 'Sergierix'
        end,
        ['Brainwashing Inoculation'] = function (x)
            composer = 'Sergierix & ThatFedoraDude'
            vocals = 'Sergierix'
            inst = 'ThatFedoraDude'
            charter = 'Sergierix'
        end,
        ['Overcum'] = function (x)
            step = 216
            composer = 'SansPZSG'
            charter = 'Sergierix'
        end,
        ['Infernal Legacies'] = function (x)
            composer = 'Sergierix'
            charter = 'Just_Sheb'
        end,
        ['Mindless'] = function (x)
            composer = 'Sergierix'
            charter = 'Sergierix'
        end,
        ['Briefcasing'] = function (x)
            composer = 'Sergierix & ThatFedoraDude'
            vocals = 'Sergierix'
            inst = 'ThatFedoraDude'
            charter = 'Just_Sheb'
        end,
        ['Aware'] = function (x)
            composer = 'Unknown'
            charter = 'Just_Sheb'
        end,
        ['Lost Thoughts'] = function (x)
            composer = 'Unknown'
            charter = 'Just_Sheb'
        end,

        ['Hell Sights V2'] = function (x)
            composer = 'Unknown'
            charter = 'Just_Sheb'
        end,
        ['Isolated V2'] = function (x)
            composer = 'Obscure(nscomosellamajaja)'
            charter = 'Just_Sheb'
        end,
        ['Isolated Legacy'] = function (x)
            composer = 'Obscure(nscomosellamajaja)'
            charter = 'Just_Sheb'
        end,
        ['Hideous Curse'] = function (x)
            composer = 'UnKnown'
            charter = 'Just_Sheb'
        end,
        ['Grin'] = function (x)
            composer = 'Sergix'
            charter = 'Just_Sheb'
        end,
        ['Hell Sights Scrapped'] = function (x)
            composer = 'SansPSZG'
            charter = 'Just_Sheb'
        end,
        ['Hell Sights JustSdow'] = function (x)
            composer = 'JustShxdow'
            charter = 'Just_Sheb'
        end,
        ['LowHead'] = function (x)
            composer = 'UnKnown'
            charter = 'Just_Sheb'
        end,
        ['Our Funki Party'] = function (x)
            composer = 'SansPSZG'
            charter = 'Just_Sheb'
        end,
        ['Frenzical'] = function (x)
            composer = 'Saster'
            charter = 'Just_Sheb'
        end,
        ['Compressed Madness'] = function (x)
            composer = 'Unknown'
            charter = 'Just_Sheb'
        end,
    default = function (x) composer = 'Default' end,
    missing = function (x) composer = 'Missing' end,
    }
end

function onStepHit()
    if step ~= 0 then
        if curStep == step then
            runTimer('HideTexts', 3, 1)
            doTweenAlpha('CTween1', 'ComposerText', 1, 0.4, 'backInOut')
            doTweenAlpha('CTween21', 'ComposerText2', 1, 0.4, 'backInOut')
            doTweenAlpha('NTween1', 'SongNameText', 1, 0.4, 'backInOut')
            doTweenAlpha('CHTween1', 'CharterText', 1, 0.4, 'backInOut')
        end
    end
end

function onCreatePost()
    if songName == 'Resentfulness' or songName == 'Shed Tears' or songName == 'Last Smile' then
        bigFont = 'vcr.ttf'
        font = 'pixel.otf'
    else
        bigFont = 'WickedMouse.otf'
        font = 'waltographUI.ttf'
    end

    makeLuaText('SongNameText', '' .. string.upper(songName), 1010, 75, 427);
    setTextSize('SongNameText', 40)
    setTextFont('SongNameText', bigFont)
    setObjectCamera('SongNameText', 'HUD')
    screenCenter('SongNameText', 'y')
    setTextColor('SongNameText', rgbToHex(getProperty('dad.healthColorArray[0]'), getProperty('dad.healthColorArray[1]'), getProperty('dad.healthColorArray[2]')))
    addLuaText('SongNameText');
    setProperty('SongNameText.alpha', 0)

    if vocals ~= 0 then
        makeLuaText('ComposerText', 'Vocals by ' .. vocals, 710, 75, 392);
        setTextSize('ComposerText', 20)
        setTextFont('ComposerText', font)
        setObjectCamera('ComposerText', 'HUD')
        addLuaText('ComposerText');
        setProperty('ComposerText.alpha', 0)

        makeLuaText('ComposerText2', 'Instrumental by ' .. inst, 710, 75, 422);
        setTextSize('ComposerText2', 20)
        setTextFont('ComposerText2', font)
        setObjectCamera('ComposerText2', 'HUD')
        addLuaText('ComposerText2');
        setProperty('ComposerText2.alpha', 0)

        CharterY = 452
    else
        makeLuaText('ComposerText', 'Song by ' .. composer, 710, 75, 392);
        setTextSize('ComposerText', 20)
        setTextFont('ComposerText', font)
        setObjectCamera('ComposerText', 'HUD')
        addLuaText('ComposerText');
        setProperty('ComposerText.alpha', 0)

        CharterY = 422
    end

    makeLuaText('CharterText', 'Charted by ' .. charter, 710, 75, CharterY);
    setTextSize('CharterText', 20)
    setTextFont('CharterText', font)
    setObjectCamera('CharterText', 'HUD')
    addLuaText('CharterText');
    setProperty('CharterText.alpha', 0)
        
    setTextAlignment('SongNameText', 'left')
    setTextAlignment('CharterText', 'left')
    setTextAlignment('ComposerText', 'left')
    setTextAlignment('ComposerText2', 'left')


    if step == 0 then
        setProperty('SongNameText.alpha', 1)
        setProperty('CharterText.alpha', 1)
        setProperty('ComposerText.alpha', 1)
        setProperty('ComposerText2.alpha', 1)
    end
end

function onSongStart()
    if step == 0 then
        runTimer('HideTexts', 2.5, 1)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'HideTexts' then
        doTweenAlpha('CTween', 'ComposerText', 0, 1, 'backInOut')
        doTweenAlpha('CTween2', 'ComposerText2', 0, 1, 'backInOut')

        doTweenAlpha('NTween', 'SongNameText', 0, 1, 'backInOut')
        doTweenAlpha('CHTween', 'CharterText', 0, 1, 'backInOut')
        runTimer('RemoveTexts', 2.25, 1)
    end
    if tag == 'RemoveTexts' then
        removeLuaText('ComposerText')
        removeLuaText('ComposerText2')
        removeLuaText('SongNameText')
        removeLuaText('CharterText')
    end
end

function switch(c)
    local swtbl = {
    casevar = c,
    caseof = function (self, code)
        local f
        if (self.casevar) then
            f = code[self.casevar] or code.default
        else
            f = code.missing or code.default
        end
        if f then
            if type(f)=="function" then
                    return f(self.casevar,self)
                else
                    error("case "..tostring(self.casevar).." not a function")
                end
            end
        end
    }
    return swtbl
end

function rgbToHex(r,g,b) -- https://gist.github.com/marceloCodget/3862929 !!
    return string.format("%02X%02X%02X", r, g, b)
end