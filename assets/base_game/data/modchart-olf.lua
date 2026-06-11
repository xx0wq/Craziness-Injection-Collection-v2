function stepHit(step)
end
function beatHit(beat)
end
function removeSprite(tag)
	removeLuaSprite(tag..'BALLS420', true)
end
function rgbToHex(rgb)
	local hexadecimal = ''

	for key, value in pairs(rgb) do
		local hex = ''

		while(value > 0)do
			local index = math.fmod(value, 16) + 1
			value = math.floor(value / 16)
			hex = string.sub('0123456789ABCDEF', index, index) .. hex			
		end

		if(string.len(hex) == 0)then
			hex = '00'

		elseif(string.len(hex) == 1)then
			hex = '0' .. hex
		end

		hexadecimal = hexadecimal .. hex
	end

	return hexadecimal
end
function makeSprite(tag,x,y,width, height, r, g, b)
	if width == nil then width = 100 end
	if height == nil then height = 100 end
	if r == nil then r = 0 end
	if g == nil then g = 0 end
	if b == nil then b = 0 end
	rgb = {r,g,b}
	makeLuaSprite(tag..'BALLS420','',x,y)
	makeGraphic(tag..'BALLS420',width,height,rgbToHex(rgb))
end

function getSpriteValues(tag)
	return {		['x']=getProperty(tag..'BALLS420.x'),
		['y']=getProperty(tag..'BALLS420.y'),
		['angle']=getProperty(tag..'BALLS420.angle'),
		['alpha']=getProperty(tag..'BALLS420.alpha')
	}
end
function addSprite(tag, under)
	addLuaSprite(tag..'BALLS420',under)
	setObjectCamera(tag..'BALLS420','hud')
end
function setSpriteX(tag,value)
	setProperty(tag..'BALLS420.x',value)
end
function setSpriteY(tag,value)
	setProperty(tag..'BALLS420.y',value)
end
function setSpriteAngle(tag,value)
	setProperty(tag..'BALLS420.angle',value)
end
function setSpriteAlpha(tag,value)
	setProperty(tag..'BALLS420.alpha',value)
end
function setSpriteColor(tag,r,g,b)
	setProperty(tag..'BALLS420.color',getColorFromHex(rgbToHex(r,g,b)))
end
lastCurStep = 0
lastCurBeat = 0
function HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSHDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDS()
end
thecool={ [true]=-0.7, [false]=0.7 }
thecool2={ [true]=0, [false]=180 }
function setNoteX(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'x', value)
end
function setNoteY(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'y', value)
end
function setNoteAngle(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'angle', value)
end
function setNoteAlpha(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'alpha', value)
end
function setNoteDirection(note,value)
    setPropertyFromGroup('strumLineNotes', note, 'direction', value)
end
function getNoteValues(note)
    return {['direction']=getPropertyFromGroup('strumLineNotes', note, 'direction'),
    ['x']=getPropertyFromGroup('strumLineNotes', note, 'x'),
    ['y']=getPropertyFromGroup('strumLineNotes', note, 'y'),
    ['angle']=getPropertyFromGroup('strumLineNotes', note, 'angle'),
    ['alpha']=getPropertyFromGroup('strumLineNotes', note, 'alpha')
}
end
lastConductorPos = 0
function onSongStart()
olddotwnx = doTweenX
olddotwny = doTweenY
olddotwna = doTweenAngle
olddotwncol = doTweenColor
olddotwnal = doTweenAlpha
function doTweenX(tag,obj,value,dur,ease)
	olddotwnx(tag,obj..'BALLS420',value,dur,ease)
end
function doTweenY(tag,obj,value,dur,ease)
	olddotwny(tag,obj..'BALLS420',value,dur,ease)
end
function doTweenAngle(tag,obj,value,dur,ease)
	olddotwna(tag,obj..'BALLS420',value,dur,ease)
end
function doTweenColor(tag,obj,r,g,b,dur,ease)
	olddotwncol(tag,obj..'BALLS420',rgbToHex({rgb}),dur,ease)
end
function doTweenAlpha(tag,obj,value,dur,ease)
	olddotwnal(tag,obj..'BALLS420',value,dur,ease)
end
ogposx0 = getPropertyFromGroup('opponentStrums', 0, 'x')
ogposy0 = getPropertyFromGroup('opponentStrums', 0, 'y');
ogposx1 = getPropertyFromGroup('opponentStrums', 1, 'x')
ogposy1 = getPropertyFromGroup('opponentStrums', 1, 'y');
	ogposx2 = getPropertyFromGroup('opponentStrums', 2, 'x');
	ogposy2 = getPropertyFromGroup('opponentStrums', 2, 'y');
	ogposx3 = getPropertyFromGroup('opponentStrums', 3, 'x');
	ogposy3 = getPropertyFromGroup('opponentStrums', 3, 'y');
	ogposx4 = getPropertyFromGroup('playerStrums', 0, 'x');
	ogposy4 = getPropertyFromGroup('playerStrums', 0, 'y');
	ogposx5 = getPropertyFromGroup('playerStrums', 1, 'x');
	ogposy5 = getPropertyFromGroup('playerStrums', 1, 'y');
	ogposx6 = getPropertyFromGroup('playerStrums', 2, 'x');
	ogposy6 = getPropertyFromGroup('playerStrums', 2, 'y');
	ogposx7 = getPropertyFromGroup('playerStrums', 3, 'x');
	ogposy7 = getPropertyFromGroup('playerStrums', 3, 'y');
end
function onUpdate(HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSH)

	ballssimulatorroblox = getSongPosition();
notetime = 298 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls11', 1, ogposx1 + 0.5, 0.5, 'sineInOut')
noteTweenY('balls12', 1, ogposy1 + (187.142857 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls13', 1, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls14', 1, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls15', 1, 1, 0.5, 'sineInOut')
end
end
notetime = 2698 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls01', 0, ogposx0 + 11, 0.5, 'sineInOut')
noteTweenY('balls02', 0, ogposy0 + (324.285714 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls05', 0, 1, 0.5, 'sineInOut')
end
end
notetime = 4198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls71', 7, ogposx7 + -244.900024, 0.5, 'sineInOut')
noteTweenY('balls72', 7, ogposy7 + (-18.572213 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls73', 7, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls74', 7, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls75', 7, 1, 0.5, 'sineInOut')
end
end
notetime = 4200 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls01', 0, ogposx0 + -65, 0.5, 'sineInOut')
noteTweenY('balls02', 0, ogposy0 + (767.14277 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls05', 0, 1, 0.5, 'sineInOut')
end
end
notetime = 4200 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls11', 1, ogposx1 + -175.5, 0.5, 'sineInOut')
noteTweenY('balls12', 1, ogposy1 + (590 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls13', 1, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls14', 1, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls15', 1, 1, 0.5, 'sineInOut')
end
end
notetime = 4200 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls21', 2, ogposx2 + -293.500061, 0.5, 'sineInOut')
noteTweenY('balls22', 2, ogposy2 + (195.714286 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls23', 2, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls24', 2, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls25', 2, 1, 0.5, 'sineInOut')
end
end
notetime = 4200 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls31', 3, ogposx3 + -413.500488, 0.5, 'sineInOut')
noteTweenY('balls32', 3, ogposy3 + (24.28554 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls33', 3, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls34', 3, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls35', 3, 1, 0.5, 'sineInOut')
end
end
notetime = 4198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls41', 4, ogposx4 + -344.900024, 0.5, 'sineInOut')
noteTweenY('balls42', 4, ogposy4 + (-35.714286 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls43', 4, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls44', 4, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls45', 4, 1, 0.5, 'sineInOut')
end
end
notetime = 4198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls51', 5, ogposx5 + -314.900024, 0.5, 'sineInOut')
noteTweenY('balls52', 5, ogposy5 + (-32.857143 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls53', 5, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls54', 5, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls55', 5, 1, 0.5, 'sineInOut')
end
end
notetime = 4198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls61', 6, ogposx6 + -276.900024, 0.5, 'sineInOut')
noteTweenY('balls62', 6, ogposy6 + (-30 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls63', 6, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls64', 6, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls65', 6, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls01', 0, ogposx0 + -523, 0.5, 'sineInOut')
noteTweenY('balls02', 0, ogposy0 + (12.857143 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls04', 0, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls05', 0, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls11', 1, ogposx1 + -659.5, 0.5, 'sineInOut')
noteTweenY('balls12', 1, ogposy1 + (130 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls13', 1, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls14', 1, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls15', 1, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls21', 2, ogposx2 + -579.5, 0.5, 'sineInOut')
noteTweenY('balls22', 2, ogposy2 + (44.285714 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls23', 2, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls24', 2, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls25', 2, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls31', 3, ogposx3 + -889.500366, 0.5, 'sineInOut')
noteTweenY('balls32', 3, ogposy3 + (227.142683 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls33', 3, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls34', 3, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls35', 3, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls41', 4, ogposx4 + -706.900085, 0.5, 'sineInOut')
noteTweenY('balls42', 4, ogposy4 + (727.142857 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls43', 4, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls44', 4, (357.926025 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls45', 4, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls51', 5, ogposx5 + -590.900024, 0.5, 'sineInOut')
noteTweenY('balls52', 5, ogposy5 + (718.571429 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls53', 5, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls54', 5, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls55', 5, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls61', 6, ogposx6 + -18.900024, 0.5, 'sineInOut')
noteTweenY('balls62', 6, ogposy6 + (744.285714 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls63', 6, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls64', 6, (270.454041 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls65', 6, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls71', 7, ogposx7 + 0, 0.5, 'sineInOut')
noteTweenY('balls72', 7, ogposy7 + (0 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls73', 7, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls74', 7, (90 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls75', 7, 1, 0.5, 'sineInOut')
end
end
notetime = 19198 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls71', 7, ogposx7 + 69.099854, 0.5, 'sineInOut')
noteTweenY('balls72', 7, ogposy7 + (755.713501 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls73', 7, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls74', 7, (180.21611 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls75', 7, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls01', 0, ogposx0 + -63, 0.5, 'sineInOut')
noteTweenY('balls02', 0, ogposy0 + (698.571429 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls03', 0, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls04', 0, (180.06414 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls05', 0, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls11', 1, ogposx1 + -175.5, 0.5, 'sineInOut')
noteTweenY('balls12', 1, ogposy1 + (498.571429 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls13', 1, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls14', 1, (179.617432 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls15', 1, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls21', 2, ogposx2 + -291.5, 0.5, 'sineInOut')
noteTweenY('balls22', 2, ogposy2 + (235.714286 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls23', 2, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls24', 2, (178.446136 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls25', 2, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls31', 3, ogposx3 + -397.500488, 0.5, 'sineInOut')
noteTweenY('balls32', 3, ogposy3 + (18.571254 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls33', 3, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls34', 3, (179.239929 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls35', 3, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls41', 4, ogposx4 + 455.099976, 0.5, 'sineInOut')
noteTweenY('balls42', 4, ogposy4 + (29.999913 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls43', 4, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls44', 4, (0.864517 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls45', 4, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls51', 5, ogposx5 + 325.099731, 0.5, 'sineInOut')
noteTweenY('balls52', 5, ogposy5 + (264.285714 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls53', 5, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls54', 5, (358.588165 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls55', 5, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls61', 6, ogposx6 + 217.099976, 0.5, 'sineInOut')
noteTweenY('balls62', 6, ogposy6 + (501.428571 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls63', 6, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls64', 6, (0.880554 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls65', 6, 1, 0.5, 'sineInOut')
end
end
notetime = 45598 * 0.5
if notetime <= ballssimulatorroblox + 3 then
if notetime >= lastconductorpos then
noteTweenX('balls71', 7, ogposx7 + 107.099609, 0.5, 'sineInOut')
noteTweenY('balls72', 7, ogposy7 + (689.999302 * thecool[downscroll]), 0.5, 'sineInOut')
noteTweenAngle('balls73', 7, 0 * (thecool[downscroll] / 0.7), 0.5, 'sineInOut')
noteTweenDirection('balls74', 7, (359.852051 * (-thecool[downscroll]) / 0.7) + thecool2[downscroll], 0.5, 'sineInOut')
noteTweenAlpha('balls75', 7, 1, 0.5, 'sineInOut')
end
end
notetime = 35400 * 0.5

if notetime <= ballssimulatorroblox and not HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSn1 then 
 
HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSn1 = true
end
notetime = 45600 * 0.5

if notetime <= ballssimulatorroblox and not HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSn2 then 
 local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeLuaSprite('bg','dmbg',-343.15, -295.45)
	addLuaSprite('bg',false)
	
end


function onBeatHit()
	if curBeat < 9999999999999999 then
		triggerEvent('Add Camera Zoom', 0.04,0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('camHUD.angle',angleshit*3)
		setProperty('camGame.angle',angleshit*3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
	else
		setProperty('camHUD.angle',0)
		setProperty('camHUD.x',0)
		setProperty('camHUD.x',0)
	end
		
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet*0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet*0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet*0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet*0.002, 'sineIn')
		end
	end
end
HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSn2 = true
end
lastconductorpos = ballssimulatorroblox
if curStep ~= lastCurStep then
    stepHit(curStep)
end
lastCurStep = curStep
if curBeat ~= lastCurBeat then
    beatHit(curBeat)
end
lastCurBeat = curBeat
HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSHDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDS(HDFSJKFDJKFHDJKHDFJKSHDJFKDFHDFKSHKFSDKFDSH)
end
function onCreatePost()
addHaxeLibrary("FlxRect", "flixel.math")
addHaxeLibrary("FlxCamera", "flixel")
luaDebugMode = false --oopsies
runHaxeCode([[
strumHUD = new FlxCamera();
strumHUD.bgColor = 0x00000000;
for (i in 0...8) {
game.strumLineNotes.members[i].cameras = [strumHUD];
}
FlxG.cameras.add(strumHUD,false);
]])
end
time = 0
function onUpdatePost(elapsed)
notelength = getProperty("notes.length")
for i = 0, notelength-1 do
noteData = getPropertyFromGroup("notes", i, "noteData")
setPropertyFromGroup("notes", i, "clipRect", nil)
if (getPropertyFromGroup("notes", i, "mustPress")) and (getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("playerStrums", noteData, "direction") - 90)
elseif (getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("opponentStrums", noteData, "direction") - 90)
end
if (noteData >= 4) and (not getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("playerStrums", noteData, "angle"))
elseif (not getPropertyFromGroup("notes", i, "isSustainNote")) then
setPropertyFromGroup("notes", i, "angle", getPropertyFromGroup("opponentStrums", noteData, "angle"))
end
if not (getPropertyFromGroup("notes", i, "isSustainNote")) then
runHaxeCode([[
if (!game.notes.members[]]..i..[[].isSustainNote && game.notes.members[]]..i..[[].camera != strumHUD) {
game.notes.members[]]..i..[[].camera = strumHUD;
}
]])
end
end
if downscroll then
runHaxeCode([[
game.notes.forEachAlive(function(daNote) {
if(daNote.distance > 0 && daNote.wasGoodHit)
{
strumGroup = game.playerStrums;
if(!daNote.mustPress) strumGroup = game.opponentStrums;
strumY = strumGroup.members[daNote.noteData].y - (daNote.swagWidth / 2);
swagRect = new FlxRect(0, 0, daNote.frameWidth, daNote.frameHeight);
swagRect.height = (50 + (-daNote.distance)) / daNote.scale.y;
swagRect.y = daNote.frameHeight - swagRect.height;
daNote.clipRect = swagRect;
trace(swagRect);
}
});
]])
else
runHaxeCode([[
game.notes.forEachAlive(function(daNote) {
if(daNote.distance < 0 && daNote.wasGoodHit)
{
strumGroup = game.playerStrums;
if(!daNote.mustPress) strumGroup = game.opponentStrums;
strumY = strumGroup.members[daNote.noteData].y + (daNote.swagWidth / 2);
swagRect = new FlxRect(0, 0, daNote.width / daNote.scale.x, daNote.height / daNote.scale.y);
swagRect.y = (50 - daNote.distance) / daNote.scale.y;
swagRect.height -= swagRect.y;
daNote.clipRect = swagRect;
trace(swagRect);
}
});
]])
end
end--generated by methewhenmethes modchart editor