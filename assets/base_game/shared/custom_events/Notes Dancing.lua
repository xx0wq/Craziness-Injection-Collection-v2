-- all of this code by ThatDevSabrina! https://gamebanana.com/members/1936424
-- i just did some modifications for hell sights

function onEvent(name, value1, value2)
    if name == 'Notes Dancing' then
        dance = value1
    end
end

function onUpdate(elapsed)
    if dance == 'true' then
        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/60)
        local currentBeat2 = (songPos/200)*(curBpm/200)

        setProperty('camFollowPos.x',getProperty('camFollowPos.x') + (math.sin(currentBeat2) * 0.2))
        setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.cos(currentBeat2) * 0.2))

        noteTweenX(defaultPlayerStrumX0, 4, 412 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX1, 5, 524 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX2, 6, 636 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
        noteTweenX(defaultPlayerStrumX3, 7, 748 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)

        noteTweenX(defaultOpponentStrumX0, 0, 412 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX1, 1, 524 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX2, 2, 636 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
        noteTweenX(defaultOpponentStrumX3, 3, 748 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
    end
end