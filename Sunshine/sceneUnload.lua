local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "function",
    "Entity"
}, function(_, callback, entity)
    entity.core.sceneUnloadCallbacks[#entity.core.sceneUnloadCallbacks + 1] = callback
end)