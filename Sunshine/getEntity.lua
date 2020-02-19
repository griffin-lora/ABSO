local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "any",
    "Scene"
}, function(Sunshine, entityOrId, scene)
    if type(entityOrId) == "string" then
        return Sunshine:getEntityById(entityOrId, scene)
    else
        return entityOrId
    end
end)