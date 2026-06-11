-- mods/scripts/healthCounter.lua
-- Contador de salud con texto (Psych Engine 0.6.3)
-- Muestra: "Sanity: XX%" arriba del HUD

-- Configuración
local TEXT_X = 445       -- posición X
local TEXT_Y = 635       -- posición Y
local TEXT_SIZE = 32    -- tamaño de letra
local TEXT_COLOR = 'FFFFFF' -- color del texto (hex sin '#')
local SHOW_DECIMALS = false -- true = muestra decimales (ej. 87.5%)

function onCreatePost()
    -- Crear texto
    makeLuaText('healthText', '', 400, TEXT_X, TEXT_Y)
    setTextSize('healthText', TEXT_SIZE)
    setTextColor('healthText', TEXT_COLOR)
    setTextFont('healthText', 'vcr.ttf') -- usa la fuente por defecto de FNF
    setTextBorder('healthText', 2, '000000') -- borde negro para contraste
    setObjectCamera('healthText', 'hud')
    addLuaText('healthText')
end

function onUpdatePost(elapsed)
    -- El valor de "health" en FNF va de 0 a 2, donde 1 = 50% de Sanity
    local health = getProperty('health')
    local percent = math.floor((health / 2) * 100)

    -- Si SHOW_DECIMALS = true, se muestra con decimales
    if SHOW_DECIMALS then
        percent = string.format('%.1f', (health / 2) * 100)
    end

    -- Evitar que muestre más del 100% o menos del 0%
    if percent > 100 then percent = 100 end
    if percent < 0 then percent = 0 end

    -- Actualizar texto
    setTextString('healthText', 'Sanity: ' .. percent .. '%')
end
