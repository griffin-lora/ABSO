-- TrafficConeGod

return function(Sunshine, entity)
    local teleporter = entity.teleporter
    local collider = entity.collider
    local button = entity.button
    if teleporter then
        local scene = require(teleporter.scene)
        if collider then
            Sunshine:change(function(hitEntity)
                if hitEntity and hitEntity.character and
                hitEntity.character.controllable then
                    teleporter.activated = true
                    local cutout = Sunshine:getEntityByTag("sceneTransition")
                    cutout.sceneTransition.scene = scene
                    cutout.sceneTransition.type = "teleport"
                    cutout.sceneTransition.loading = true
                end
            end, entity, collider, "hitEntity")
        elseif button then
            Sunshine:change(function(activated)
                if activated then
                    teleporter.activated = true
                    local cutout = Sunshine:getEntityByTag("sceneTransition")
                    cutout.sceneTransition.scene = scene
                    cutout.sceneTransition.type = "teleport"
                    cutout.sceneTransition.loading = true
                end
            end, entity, button, "activated")
        end
    end
end