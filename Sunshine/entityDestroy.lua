local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "function",
    "Entity"
}, function(_, callback, entity)
    entity.core.entityDestroyCallbacks[#entity.core.entityDestroyCallbacks + 1] = callback
end)