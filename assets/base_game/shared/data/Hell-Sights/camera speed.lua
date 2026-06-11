function onStepHit()
    -- Cambia la velocidad de la cámara en ciertos pasos

    if curStep == 1 then
        setProperty('cameraSpeed', 2) -- Aumenta la velocidad de seguimiento
    elseif curStep == none then
        setProperty('cameraSpeed', 1.0) -- Vuelve a la normalidad
    end
end
