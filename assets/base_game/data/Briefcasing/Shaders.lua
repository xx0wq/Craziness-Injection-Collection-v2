local shaderName = 'vcrNoGlitch'
local shaderName2 = 'old'
local shaderName3 = 'vhs'
local shaderName4 = 'waveEffect'

ActiveShit = 1

function onCreate()
    if getProperty('shadersEnabled') then
        shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

        if songName == 'Mindless' then
            shaderName = 'vhs'
        else
            shaderName = 'vcrNoGlitch'
        end

        if ActiveShit == 1 then
            shaderName = 'crt'
        end
    end
end

function onCreatePost()
    if getProperty('shadersEnabled') then
        initLuaShader(shaderName)
        makeLuaSprite("shaderImage")
        makeGraphic("shaderImage", screenWidth, screenHeight)
        setSpriteShader("shaderImage", shaderName)
        addHaxeLibrary("ShaderFilter", "openfl.filters")

        if songName == 'Resentfulness' or songName == 'Shed Tears' or songName == 'Last Laugh' then
            runHaxeCode([[
                trace(ShaderFilter);
                game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
                game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
            ]])
        else
            runHaxeCode([[
                trace(ShaderFilter);
                game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
            ]])
        end    
    end
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData3 = spr.__cacheBitmapData2 = spr.__cacheBitmapData = null;
            spr.__cacheBitmapColorTransform = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
        ]])
        temp()
    end
end

function onUpdate(elapsed)
    if getProperty('shadersEnabled') then
        setShaderFloat("shaderImage", "iTime", os.clock())
    end
end