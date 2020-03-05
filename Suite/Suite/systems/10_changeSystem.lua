return function(Sunshine, entity)
    local change = entity.change
    if change then
        local function handleChange(changedEntity, componentName, propertyName, propertyValue, alreadyChangedOnEntity,
            newEntity, newComponent)
            if newComponent then
                if not alreadyChangedOnEntity then
                    -- local defaultComponent = {}
                end
            end
            if componentName and propertyName then
                if not alreadyChangedOnEntity then
                    changedEntity[componentName][propertyName] = propertyValue
                end
                if not changedEntity.core.dataEntity[componentName] then
                    changedEntity.core.dataEntity[componentName] = {}
                end
                changedEntity.core.dataEntity[componentName][propertyName] = propertyValue
            end
            local dataScene = Sunshine.dataScenes[changedEntity.core.scene.index]
            if newEntity then
                dataScene.entities[#dataScene.entities + 1] =
                changedEntity.core.dataEntity
            end
            changedEntity.core.scene.instance.Source = "return " .. Sunshine:encodeTable(dataScene)
        end
        Sunshine:update(function()
            if change.entity then
                change.teamCreateUpdate = false
                handleChange(change.entity, change.componentName, change.propertyName, change.propertyValue,
                change.alreadyChangedOnEntity, change.newEntity, change.newComponent)
                change.entity = nil
                change.componentName = nil
                change.propertyName = nil
                change.propertyValue = nil
                change.alreadyChangedOnEntity = nil
            end
        end, entity)
    end
end