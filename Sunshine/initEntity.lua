local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "table",
    "Scene"
}, function(Sunshine, dataEntity, scene)
    if dataEntity.core then
        local entity = {
            objectType = "Entity",
            core = {
                objectType = "Component",
                name = dataEntity.core.name,
                id = dataEntity.core.id,
                active = dataEntity.core.active,
                prefab = dataEntity.core.prefab and require(dataEntity.core.prefab) or nil,
                scene = scene,
                tick = 0,
                updateCallbacks = {},
                instances = {},
                connections = {},
                sceneUnloadCallbacks = {},
                entityDestroyCallbacks = {},
                metatableCallbacks = {},
                dataEntity = dataEntity
            }
        }
        for componentName, dataComponent in pairs(dataEntity) do
            if componentName ~= "core" then
                local componentInterface = Sunshine.componentInterfaces[componentName]
                if componentInterface then
                    local component = { objectType = "Component" }
                    Sunshine:createMetatable(component, componentInterface, componentName)
                    for name, value in pairs(dataComponent) do
                        if typeof(value) ~= "table" then
                            component[name] = value
                        else
                            component[name] = Sunshine:cloneTable(value)
                        end
                    end
                    for name, propertyInterface in pairs(componentInterface) do
                        if not component[name] then
                            local value = propertyInterface.default
                            if typeof(value) ~= "table" then
                                component[name] = value
                            else
                                component[name] = Sunshine:cloneTable(value)
                            end
                        end
                    end
                    entity[componentName] = component
                else
                    error("Component " .. componentName .. " does not exist.")
                end
            end
        end
        if entity.core.prefab then
            for componentName, dataComponent in pairs(entity.core.prefab) do
                if componentName ~= "core" then
                    local componentInterface = Sunshine.componentInterfaces[componentName]
                    if componentInterface then
                        local component = entity[componentName] and entity[componentName]
                        or { objectType = "Component" }
                        if not entity[componentName] then
                            Sunshine:createMetatable(component, componentInterface, componentName)
                        end
                        for name, value in pairs(dataComponent) do
                            if not component[name] then
                                if typeof(value) ~= "table" then
                                    component[name] = value
                                else
                                    component[name] = Sunshine:cloneTable(value)
                                end
                            end
                        end
                        for name, propertyInterface in pairs(componentInterface) do
                            if not component[name] then
                                local value = propertyInterface.default
                                if typeof(value) ~= "table" then
                                    component[name] = value
                                else
                                    component[name] = Sunshine:cloneTable(value)
                                end
                            end
                        end
                        entity[componentName] = component
                    else
                        error("Component " .. componentName .. " does not exist.")
                    end
                end
            end
        end
        -- final type check
        for componentName, component in pairs(entity) do
            if componentName ~= "core" and componentName ~= "objectType" then
                local componentInterface = Sunshine.componentInterfaces[componentName]
                if componentInterface then
                    for name, propertyInterface in pairs(componentInterface) do
                        local value = component[name]
                        local valueType = Sunshine:typeOf(value)
                        local interfaceType = propertyInterface.type
                        if not ((propertyInterface.default == nil and value == nil) or interfaceType == valueType or
                        (interfaceType == "Entity" and valueType == "string")) then
                            error("Property " .. name .. " on component " .. componentName .. " has type "
                            .. valueType .. " instead of " .. interfaceType)
                        end
                    end
                else
                    error("Component " .. componentName .. " does not exist.")
                end
            end
        end
        scene.entities[#scene.entities + 1] = entity
        return entity
    else
        error("Entity does not have a core component.")
    end
end)