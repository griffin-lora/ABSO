local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "table",
    "Scene"
}, function(Sunshine, dataEntity, scene)
    if dataEntity.core then
        if dataEntity.core.active then
            local entity = {
                objectType = "Entity",
                core = {
                    objectType = "Component",
                    name = dataEntity.core.name,
                    id = dataEntity.core.id,
                    active = dataEntity.core.active,
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
                            component[name] = value
                        end
                        for name, propertyInterface in pairs(componentInterface) do
                            if not component[name] then
                                component[name] = propertyInterface.default
                            end
                        end
                        entity[componentName] = component
                    else
                        error("Component " .. componentName .. " does not exist.")
                    end
                end
            end
            scene.entities[#scene.entities + 1] = entity
            return entity
        end
    else
        error("Entity does not have a core component.")
    end
end)