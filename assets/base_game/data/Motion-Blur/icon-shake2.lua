local turnvalue = 0 --Dont Touch this

function onBeatHit()
turnvalue = 5 --Backwards
if curBeat % 3 == 0 then
turnvalue = -3 --Forwards
end
--Dont Touch any of this code down here

setProperty('iconP2.angle',-turnvalue)
setProperty ('iconP1.angle',turnvalue)
doTweenAngle ('iconTween1','iconP1',0,crochet/1000,'circIn')
doTweenAngle ('iconTween2','iconP2',0,crochet/1000,'circIn')
end

function onCreatePost()
setObjectOrder('iconP1',getObjectOrder('iconP2'))
end