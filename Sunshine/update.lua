local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "function",
    "Entity",
    "boolean"
}, function(_, callback, entity, ignoreInactive)
    entity.core.updateCallbacks[#entity.core.updateCallbacks + 1] = {callback, ignoreInactive}
end)