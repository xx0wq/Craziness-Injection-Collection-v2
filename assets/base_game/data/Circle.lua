local WindowDance = true
local SineElap = 0
local DanceAmt = 3 -- I recommend 3

function onCreate()
    setPropertyFromClass('openfl.Lib', 'application.window.y', 180)
    setPropertyFromClass('openfl.Lib', 'application.window.x', 320)
    windowy = getPropertyFromClass("openfl.Lib", "application.window.y")
    windowx = getPropertyFromClass("openfl.Lib", "application.window.x")
end

function onStepHit()
    if curStep >= number and curStep <= number then
        WindowDance = true
    end
    if curStep == number then
        WindowDance = false
    end
end

function onUpdatePost(elapsed)
    SineElap = SineElap + (elapsed * DanceAmt)

    if WindowDance == true then
        setPropertyFromClass('openfl.Lib', 'resizable', false)
        setPropertyFromClass('openfl.Lib', 'application.window.y', 1000*math.sin(SineElap)/10+windowy + math.random(5*-1+windowy, 5+windowy))
        setPropertyFromClass('openfl.Lib', 'application.window.x', 1000*math.cos(SineElap)/5+windowx + math.random(5*-1+windowx, 5+windowx))
        setPropertyFromClass('openfl.Lib','application.window.width', 853.3) 
	    setPropertyFromClass('openfl.Lib','application.window.height', 480)

    end
end    

function onBeatHit()
    if curBeat % 4 == 0 then

    end
end