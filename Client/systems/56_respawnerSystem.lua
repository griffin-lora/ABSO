return function(Sunshine, entity)
    local respawner = entity.respawner
    local health = entity.health
    if respawner then
        local dataSceneCopy = Sunshine:cloneTable(Sunshine.dataScenes[entity.core.scene.index])
        dataSceneCopy.objectType = "Scene"
        local initialEntity = Sunshine:getEntityById(entity.core.id,
        dataSceneCopy)
        local startTick
        Sunshine:update(function()
            if not respawner.active then
                startTick = nil
            elseif not startTick then
                startTick = entity.core.tick
            end
            if startTick and entity.core.tick - startTick >= respawner.time or (health and health.health <= 0) then
                Sunshine:destroyEntity(entity)
                Sunshine:createEntity(initialEntity, entity.core.scene)
            end
        end, entity)
    end
end