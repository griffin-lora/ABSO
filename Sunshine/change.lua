local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "function",
    "Entity",
    "Component",
    "string"
}, function(_, callback, entity, component, property)
    local metatable = getmetatable(component)
    metatable.callbacks[#metatable.callbacks + 1] = {true, callback, property}
    entity.core.metatableCallbacks[#entity.core.metatableCallbacks] = {component, #metatable.callbacks}
end)