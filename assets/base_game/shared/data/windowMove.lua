strengthThing = 90
windowWidth = 960
windowHeight = 540


function onCreate()
    setPropertyFromClass('openfl.Lib', 'application.window.width', windowWidth)
    setPropertyFromClass('openfl.Lib', 'application.window.height', windowHeight)

    setPropertyFromClass('openfl.Lib', 'application.window.x', 320)
    setPropertyFromClass('openfl.Lib', 'application.window.y', 160)

    windowy = getPropertyFromClass("openfl.Lib", "application.window.y")
    windowx = getPropertyFromClass("openfl.Lib", "application.window.x")
    curWindowX = getPropertyFromClass("openfl.Lib", "application.window.x")    
end

function onUpdate()
    local songPos = getPropertyFromClass('Conductor', 'songPosition') / 1000
	coolthingieX = (strengthThing * math.sin(songPos)*2)
    coolthingieY = (strengthThing/5.5 * math.cos(songPos)*12)*1.5

    --[[
    if curBeat % 4 == 0 then
        setPropertyFromClass('openfl.Lib', 'application.window.width', windowWidth*1.2)
        setPropertyFromClass('openfl.Lib', 'application.window.height', windowHeight*1.2)
    else
        setPropertyFromClass('openfl.Lib', 'application.window.width', getPropertyFromClass('openfl.Lib', 'application.window.width')+(windowWidth-getPropertyFromClass('openfl.Lib', 'application.window.width'))/7)
        setPropertyFromClass('openfl.Lib', 'application.window.height', getPropertyFromClass('openfl.Lib', 'application.window.height')+(windowHeight-getPropertyFromClass('openfl.Lib', 'application.window.height'))/7)
    end
    --setPropertyFromClass('openfl.Lib', 'application.window.width', (windowWidth-getPropertyFromClass('openfl.Lib', 'application.window.width'))/7)
    --setPropertyFromClass('openfl.Lib', 'application.window.height', (windowHeight-getPropertyFromClass('openfl.Lib', 'application.window.height'))/7)
    ]]--
end

function onUpdatePost(elapsed)
    setPropertyFromClass('openfl.Lib', 'application.window.x', 320+coolthingieX)
    setPropertyFromClass('openfl.Lib', 'application.window.y', 160+coolthingieY)
end    