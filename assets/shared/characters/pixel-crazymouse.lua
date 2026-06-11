--script by lazy remix man  optimized by trolmongus͒

function onCreatePost()
    initLuaShader('glitch')

    setSpriteShader('iconP2', 'glitch')
        runHaxeCode('for (strum in game.opponentStrums) strum.shader = game.iconP2.shader;')
end

function onUpdate(elapsed)
    setShaderFloat('iconP2', 'iTime', getSongPosition())
end