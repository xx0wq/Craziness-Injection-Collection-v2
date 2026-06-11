--Floating Arrows Event uwu
--By Gart00n4321#2330

local speed
local able

function onEvent(name, value1, value2)
	if name == 'Moving Arrows' then
		speed = value2
		if value1 == 'on' then
			able = true
		end
		if value1 == 'off' then
			able = false
		end
		if value1 == '' or value2 == '' or value1 == '' and value2 == '' then
			able = false
		end
	end
end

function onStepHit()
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	if able == true then
		noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 - 50*math.sin((currentBeat+0*0.25)*math.pi), speed)
		noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 - 50*math.sin((currentBeat+1*0.25)*math.pi), speed)
		noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 - 50*math.sin((currentBeat+2*0.25)*math.pi), speed)
		noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 - 50*math.sin((currentBeat+3*0.25)*math.pi), speed)
		noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), speed)
		noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - 50*math.sin((currentBeat+5*0.25)*math.pi), speed)
		noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+6*0.25)*math.pi), speed)
		noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 - 50*math.sin((currentBeat+7*0.25)*math.pi), speed)
	else
		noteTweenX('ogOpponentStrumX0', 0, defaultOpponentStrumX0, speed)
		noteTweenX('ogOpponentStrumX1', 1, defaultOpponentStrumX1, speed)
		noteTweenX('ogOpponentStrumX2', 2, defaultOpponentStrumX2, speed)
		noteTweenX('ogOpponentStrumX3', 3, defaultOpponentStrumX3, speed)
		noteTweenX('ogPlayerStrumX0', 4, defaultPlayerStrumX0, speed)
		noteTweenX('ogPlayerStrumX1', 5, defaultPlayerStrumX1, speed)
		noteTweenX('ogPlayerStrumX2', 6, defaultPlayerStrumX2, speed)
		noteTweenX('ogPlayerStrumX3', 7, defaultPlayerStrumX3, speed)
	end
end