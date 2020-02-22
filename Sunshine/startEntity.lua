local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "Entity",
    "Scene"
}, function(Sunshine, entity, scene)
    for name, component in pairs(entity) do
        if name ~= "core" and name ~= "objectType" then
            local componentInterface = Sunshine.componentInterfaces[name]
            for propertyName, property in pairs(component) do
                if propertyName ~= "objectType" then
                    local propertyInterface = componentInterface[propertyName]
                    local interfaceType = propertyInterface.type
                    local propertyType = Sunshine:typeOf(property)
                    if interfaceType == "Entity" and propertyType == "string" then
                        local propertyEntity = Sunshine:getEntityById(property)
                        if propertyEntity then
                            component[propertyName] = propertyEntity
                        else
                            error("There is no entity with the id of " .. property)
                        end
                    end
                end
            end
        end
    end
    for _, system in ipairs(Sunshine.systems) do
        system(Sunshine, entity, scene)
    end
end)