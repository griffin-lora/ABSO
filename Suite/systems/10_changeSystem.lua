return function(Sunshine, entity)
    local change = entity.change
    if change then
        local function handleChange(changedEntity, componentName, propertyName, propertyValue, alreadyChangedOnEntity)
            if not alreadyChangedOnEntity then
                changedEntity[componentName][propertyName] = propertyValue
            end
            if not changedEntity.core.dataEntity[componentName] then
                changedEntity.core.dataEntity[componentName] = {}
            end
            changedEntity.core.dataEntity[componentName][propertyName] = propertyValue
            changedEntity.core.scene.instance.Source = "return " .. Sunshine:encodeTable(Sunshine.dataScenes
            [changedEntity.core.scene.index])
        end
        Sunshine:update(function()
            if change.entity then
                change.teamCreateUpdate = false
                handleChange(change.entity, change.componentName, change.propertyName, change.propertyValue,
                change.alreadyChangedOnEntity)
                change.entity = nil
                change.componentName = nil
                change.propertyName = nil
                change.propertyValue = nil
                change.alreadyChangedOnEntity = nil
            end
        end, entity)
    end
end