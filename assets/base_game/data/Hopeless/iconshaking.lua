function onUpdate(e)

local angleOfs = math.random(-5, 5)

if getProperty('healthBar.percent') > 80 then

setProperty('iconP2.angle', angleOfs)

else

setProperty('iconP2.angle', 0)

end

if getProperty('healthBar.percent') < 20 then

setProperty('iconP1.angle', angleOfs)

else

setProperty('iconP1.angle', 0)

end

end