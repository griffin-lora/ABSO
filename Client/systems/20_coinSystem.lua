-- SuperMakerPlayer and TrafficConeGod

local ZERO_VECTOR3 = Vector3.new(0,0,0)

return function(Sunshine, entity)
    local coin = entity.coin
    local regionalCoin = entity.regionalCoin
    local transform = entity.transform
    local transparency = entity.transparency
    local collider = entity.collider
    local speaker = entity.speaker

    local stop = false

    if (coin or regionalCoin) and transform and collider and speaker and transparency then
        local collected = false
        local info
        if coin then
            info = coin.tweenInfo
        elseif regionalCoin then
            info = regionalCoin.tweenInfo
        end
        local startTick
        local size = transform.size
        Sunshine:update(function()
            if collected and entity.core.tick - startTick <= info.Time then
                transform.size = Sunshine:tween(entity.core.tick - startTick, info, size, ZERO_VECTOR3)
                if transform.size.x < 0.06 then
                    transparency.transparency = 1
                end
            elseif collected and speaker.sounds == 0 then
                Sunshine:destroyEntity(entity)
            elseif collected then
                transparency.transparency = 1
            end
        end, entity)
        Sunshine:change(function(hitEntities)
            for _, hitEntity in pairs(hitEntities) do
                if not collected and hitEntity.tag and hitEntity.tag.tag == "mainCharacter" or
                hitEntity.tag.tag == "character" then
                    local player
                    if hitEntity.character then
                        player = hitEntity.character.player
                    elseif hitEntity.head then
                        local character = Sunshine:getEntityByTag(hitEntity.head.characterTag)
                        player = character.character.player
                    end
                    startTick = entity.core.tick
                    collected = true
                    if coin then
                        player.stats.coins = player.stats.coins + 1
                    elseif regionalCoin then
                        player.stats.regionalCoins = player.stats.regionalCoins + 1
                    end
                    speaker.playing = true
                    stop = true
                end
                if startTick ~= nil and stop then
                    if entity.core.tick - startTick > 0.6 then
                        stop = false
                    end
                end
            end
        end, entity, collider, "hitEntities")
    end
end