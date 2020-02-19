-- TrafficConeGod

return function(Sunshine, entity)
    local prefab = entity.prefab
    if prefab then
        prefab.prefab = require(prefab.prefab)
        for componentName, dataComponent in pairs(prefab.prefab) do
            if not entity[componentName] then
                local component = { objectType = "Component" }
                for name, value in pairs(dataComponent) do
                    component[name] = value
                end
                entity[componentName] = component
            else
                for propertyName, propertyValue in pairs(dataComponent) do
                    if not entity[componentName][propertyName] then
                        entity[componentName][propertyName] = propertyValue
                    end
                end
            end
        end
        if prefab.prefab.core then
            entity.core.id = prefab.prefab.core.id
        end
        entity.core.active = true
    end
end