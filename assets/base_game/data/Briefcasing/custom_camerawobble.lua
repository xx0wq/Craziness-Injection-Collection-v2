local angleshit = 0.2;
local anglevar = 0.2;

function onBeatHit()
	if curBeat < 388 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*-1)
		setProperty('camGame.angle',angleshit*-1)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'sineOut')
		doTweenX('tuin', 'camHUD', -angleshit*9, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'sineOut')
		doTweenX('ttrn', 'camGame', -angleshit*9, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -10, stepCrochet*0.002, 'sineOut')
			doTweenY('rtr', 'camGame.scroll', 10, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end