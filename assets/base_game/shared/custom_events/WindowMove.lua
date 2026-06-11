function onEvent(name, value1, value2)
        if name == 'WindowMove' then
                setPropertyFromClass('openfl.Lib','application.window.x', value1)
                setPropertyFromClass('openfl.Lib','application.window.y', value2) 
                cameraShake('hud', 0.08, 0.04);  
        end
end