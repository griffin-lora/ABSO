local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "Instance",
    "Entity"
}, function(_, instance, entity)
    entity.core.instances[#entity.core.instances + 1] = instance
end)
