local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "table",
    "Scene"
}, function(Sunshine, dataEntity, scene)
    local entity = Sunshine:initEntity(dataEntity, scene)
    if entity then
        Sunshine:startEntity(entity, scene)
        return entity
    end
end)