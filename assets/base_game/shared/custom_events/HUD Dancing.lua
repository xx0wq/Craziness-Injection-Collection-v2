-- all of this code by ThatDevSabrina! https://gamebanana.com/members/1936424
-- i just did some modifications for hell sights

function onEvent(name, value1, value2)
    if name == 'HUD Dancing' then
        hdance = value1
    end
end

function onUpdate(elapsed)
    if hdance == true then
        songPos = getSongPosition()
        local currentBeat = (songPos/5000)*(curBpm/60)
        local currentBeat2 = (songPos/200)*(curBpm/200)

        setProperty('camFollowPos.x',getProperty('camFollowPos.x') + (math.sin(currentBeat2) * 0.2))
        setProperty('camFollowPos.y',getProperty('camFollowPos.y') + (math.cos(currentBeat2) * 0.2))

        doTweenX('camHUDtween', 'camGame', 412 - 100*math.cos((currentBeat2*0.25)*math.pi), 0.5)
    end
end