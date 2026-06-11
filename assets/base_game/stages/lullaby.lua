function onCreate()
	-- background shit
	makeLuaSprite('line', 'lullaby/whiteLine', 0, 0)
	addLuaSprite('line')
	setScrollFactor('line', 1, 1);

	makeAnimatedLuaSprite('sign', 'lullaby/sign', -800, 100)   ----- Sansno
	setLuaSpriteScrollFactor('sign', 1, 1);
	addAnimationByPrefix('sign', 'ShopSign', 'ShopSign', 24, false)
	addLuaSprite('sign', true)

	makeLuaSprite('line2', 'lullaby/whiteLine', -1200, 0)
	addLuaSprite('line2', true)
	setScrollFactor('line2', 1, 1);

	makeAnimatedLuaSprite('unk', 'lullaby/pictures/unknown', 220, 275)
	setLuaSpriteScrollFactor('unk', 1, 1);
	addAnimationByPrefix('unk', 'idle', 'idle', 24, true)
	objectPlayAnimation('unk', 'idle', true)
	addLuaSprite('unk')
	setProperty('unk.alpha', 0.2)
    setProperty('unk.visible', false)

	makeLuaSprite('margin', 'lullaby/margin', 50, 0)
	addLuaSprite('margin')
	setScrollFactor('margin', 1, 1);

	makeAnimatedLuaSprite('sellInt', 'lullaby/sellerIntro', -1200, 100)   ----- Sansno
	setLuaSpriteScrollFactor('sellInt', 1, 1);
	addAnimationByPrefix('sellInt', 'CG_Intro', 'CG_Intro', 24, false)
	addLuaSprite('sellInt')

	makeAnimatedLuaSprite('sell', 'lullaby/seller', -1200, 100)   ----- Sansno
	setLuaSpriteScrollFactor('sell', 1, 1);
	addAnimationByPrefix('sell', 'CG_Idle01', 'CG_Idle01', 24, true)
	addLuaSprite('sell')
	setProperty('sell.visible', false)

	makeLuaSprite('candle', 'lullaby/CandleLight', -1340, 280)
	addLuaSprite('candle', true)
	setScrollFactor('candle', 1, 1);

	makeLuaSprite('squa', 'lullaby/squares', -1200, 0)
	addLuaSprite('squa')
	setScrollFactor('squa', 1, 1);

	makeLuaSprite('box', 'lullaby/box', -1200, 0)
	addLuaSprite('box')
	setScrollFactor('box', 1, 1);

	makeLuaSprite('sel', 'lullaby/boxSel', -1200, 0)
	addLuaSprite('sel')
	setScrollFactor('sel', 1, 1);

	makeLuaSprite('game', 'lullaby/items/game', -520, 220)  ----- Shop Items
	addLuaSprite('game')
	setScrollFactor('game', 1, 1);

	makeLuaSprite('cost1', 'lullaby/costs/150', -519, 230)  ----- Costs
	addLuaSprite('cost1')
	setScrollFactor('cost1', 1, 1);

	makeLuaSprite('own1', 'lullaby/costs/owned', -519, 230)
	addLuaSprite('own1')
	setScrollFactor('own1', 1, 1);
	setProperty('own1.visible', false)

	makeAnimatedLuaSprite('hand', 'lullaby/hand', -650, 220) 
	setLuaSpriteScrollFactor('hand', 1, 1);
	addAnimationByPrefix('hand', 'ShopCursor instance 10', 'ShopCursor instance 10', 24, true)
	objectPlayAnimation('hand', 'ShopCursor instance 10', false)
	scaleObject('hand', 0.5, 0.5)
	addLuaSprite('hand', true)
	setProperty('hand.visible', false)

	makeLuaSprite('down', 'lullaby/arrowDown', 0, 180)
	addLuaSprite('down')
	setScrollFactor('down', 1, 1);

	makeLuaSprite('up', 'lullaby/arrowUp', 0, -80)
	addLuaSprite('up')
	setScrollFactor('up', 1, 1);

	makeLuaSprite('left', 'lullaby/arrowLeft', 10, 0)
	addLuaSprite('left')
	setScrollFactor('left', 1, 1);

	makeLuaSprite('right', 'lullaby/arrowRight', -1200, 0)
	addLuaSprite('right')
	setScrollFactor('right', 1, 1);

	makeLuaSprite('f', 'lullaby/letters/F', 450, 27)
	addLuaSprite('f')
	setScrollFactor('f', 1, 1);

	makeLuaSprite('r', 'lullaby/letters/R', 500, 27)
	addLuaSprite('r')
	setScrollFactor('r', 1, 1);

	makeLuaSprite('e', 'lullaby/letters/E', 550, 27)
	addLuaSprite('e')
	setScrollFactor('e', 1, 1);

	makeLuaSprite('ee', 'lullaby/letters/E', 600, 27)
	addLuaSprite('ee')
	setScrollFactor('ee', 1, 1);

	makeLuaSprite('p', 'lullaby/letters/P', 650, 27)
	addLuaSprite('p')
	setScrollFactor('p', 1, 1);

	makeLuaSprite('l', 'lullaby/letters/L', 700, 27)
	addLuaSprite('l')
	setScrollFactor('l', 1, 1);

	makeLuaSprite('a', 'lullaby/letters/A', 750, 27)
	addLuaSprite('a')
	setScrollFactor('a', 1, 1);

	makeLuaSprite('y', 'lullaby/letters/Y', 800, 27)
	addLuaSprite('y')
	setScrollFactor('y', 1, 1);

	makeLuaSprite('s', 'lullaby/letters/S', -650, 27)
	addLuaSprite('s', true)
	setScrollFactor('s', 1, 1);

	makeLuaSprite('h', 'lullaby/letters/H', -600, 27)
	addLuaSprite('h', true)
	setScrollFactor('h', 1, 1);

	makeLuaSprite('o', 'lullaby/letters/O', -550, 27)
	addLuaSprite('o', true)
	setScrollFactor('o', 1, 1);

	makeLuaSprite('pp', 'lullaby/letters/P', -500, 27)
	addLuaSprite('pp', true)
	setScrollFactor('pp', 1, 1);

	makeAnimatedLuaSprite('oppo', 'lullaby/pictures/image', 308, 355)   ------ Songs
	setLuaSpriteScrollFactor('oppo', 1, 1);
	addAnimationByPrefix('oppo', 'idle', 'idle', 17, true)
	objectPlayAnimation('oppo', 'idle', true)
	addLuaSprite('oppo')

	makeLuaSprite('tuto', 'lullaby/songs/tutorial', 730, 380)
	addLuaSprite('tuto')
	setScrollFactor('tuto', 1, 1);
      setProperty('tuto.visible', true)

	makeLuaSprite('pee', 'lullaby/songs/bopeebo', 760, 380)
	addLuaSprite('pee')
	setScrollFactor('pee', 1, 1);
      setProperty('pee.visible', false)

	makeLuaSprite('fresh', 'lullaby/songs/fresh', 810, 380)
	addLuaSprite('fresh')
	setScrollFactor('fresh', 1, 1);
      setProperty('fresh.visible', false)

	  makeAnimatedLuaSprite('unlocked1', 'lullaby/unlocked', 890, 380)
	  setLuaSpriteScrollFactor('unlocked1', 1, 1);
	  addAnimationByPrefix('unlocked1', 'lock', 'lock', 24, true)
	  objectPlayAnimation('unlocked1', 'lock', true)
	  addLuaSprite('unlocked1')
	  scaleObject('unlocked1', 0.6, 0.6)
	  setProperty('unlocked1.visible', false)

	makeAnimatedLuaSprite('sansno', 'lullaby/pictures/sansno', 220, 275)   ----- Sansno
	setLuaSpriteScrollFactor('sansno', 1, 1);
	addAnimationByPrefix('sansno', 'idle', 'idle', 24, true)
	objectPlayAnimation('sansno', 'idle', true)
	addLuaSprite('sansno')
    setProperty('sansno.visible', false)

	makeLuaSprite('sans', 'lullaby/songs/sansno', 770, 380)
	addLuaSprite('sans')
	setScrollFactor('sans', 1, 1);
      setProperty('sans.visible', false)

	makeLuaSprite('text1', 'lullaby/dialogue/text1', -1200, 0)  ----- Seller Dialogue
	addLuaSprite('text1')
	setScrollFactor('text1', 1, 1);

	makeLuaSprite('text2', 'lullaby/dialogue/text2', -1200, 0)
	addLuaSprite('text2')
	setScrollFactor('text2', 1, 1);
	setProperty('text2.visible', false)

	makeAnimatedLuaSprite('dollar', 'lullaby/dollar', 970, 30)
	setLuaSpriteScrollFactor('dollar', 1, 1);
	addAnimationByPrefix('dollar', 'PokeDollarSign instance 10', 'PokeDollarSign instance 10', 24, true)
	objectPlayAnimation('dollar', 'PokeDollarSign instance 10', true)
	scaleObject('dollar', 0.5, 0.5)
	setObjectCamera('dollar', 'hud')
	addLuaSprite('dollar', true)

	makeLuaSprite('scan', 'lullaby/scan', 0, 0)  ---- Scan Lmao
	addLuaSprite('scan', true)
	setScrollFactor('scan', 1, 1);
	setObjectCamera('scan', 'hud')
    setProperty('scan.alpha', 0.4)

      setProperty('debugKeysChart', null);

      runTimer('letf', 1)
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('gf.visible', false)
	setProperty('dad.visible', false)
end

function onUpdate(elapsed)
	if keyPressed('left') then
		setProperty('left.alpha', 0.5)
	else
		setProperty('left.alpha', 1)
    end

    if keyPressed('right') then
        setProperty('right.alpha', 0.5)
    else
        setProperty('right.alpha', 1)
	end

    if keyPressed('up') then
        setProperty('up.alpha', 0.5)
    else
        setProperty('up.alpha', 1)
	end

    if keyPressed('down') then
        setProperty('down.alpha', 0.5)
    else
        setProperty('down.alpha', 1)
	end
end

function onTimerCompleted(t,l,ll)
if t == 'letf' then
doTweenY('f.y','f', 24, 2.5,'sineIn')
doTweenY('r.y','r', 30, 2.5,'sineIn')
doTweenY('e.y','e', 24, 2.5,'sineIn')
doTweenY('ee.y','ee', 30, 2.5,'sineIn')
doTweenY('p.y','p', 24, 2.5,'sineIn')
doTweenY('l.y','l', 30, 2.5,'sineIn')
doTweenY('a.y','a', 24, 2.5,'sineIn')
doTweenY('y.y','y', 30, 2.5,'sineIn')
doTweenY('s.y','s', 24, 2.5,'sineIn')
doTweenY('h.y','h', 30, 2.5,'sineIn')
doTweenY('o.y','o', 24, 2.5,'sineIn')
doTweenY('pp.y','pp', 30, 2.5,'sineIn')
doTweenY('sans.y','sans', getProperty('sans.y') + 12 , 2.5,'sineIn')
doTweenY('fresh.y','fresh', getProperty('fresh.y') + 12 , 2.5,'sineIn')
doTweenY('pee.y','pee', getProperty('pee.y') + 12 , 2.5,'sineIn')
doTweenY('tuto.y','tuto', getProperty('tuto.y') + 12 , 2.5,'sineIn')
runTimer('lefr', 2.5)
end
if t == 'lefr' then
doTweenY('f.y','f', 30, 2.5,'sineIn')
doTweenY('r.y','r', 24, 2.5,'sineIn')
doTweenY('e.y','e', 30, 2.5,'sineIn')
doTweenY('ee.y','ee', 24, 2.5,'sineIn')
doTweenY('p.y','p', 30, 2.5,'sineIn')
doTweenY('l.y','l', 24, 2.5,'sineIn')
doTweenY('a.y','a', 30, 2.5,'sineIn')
doTweenY('y.y','y', 24, 2.5,'sineIn')
doTweenY('s.y','s', 30, 2.5,'sineIn')
doTweenY('h.y','h', 24, 2.5,'sineIn')
doTweenY('o.y','o', 30, 2.5,'sineIn')
doTweenY('pp.y','pp', 24, 2.5,'sineIn')
doTweenY('sans.y','sans', getProperty('sans.y') - 12 , 2.5,'sineIn')
doTweenY('fresh.y','fresh', getProperty('fresh.y') - 12 , 2.5,'sineIn')
doTweenY('pee.y','pee', getProperty('pee.y') - 12 , 2.5,'sineIn')
doTweenY('tuto.y','tuto', getProperty('tuto.y') - 12 , 2.5,'sineIn')
runTimer('letf', 2.5)
end
end