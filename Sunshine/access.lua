local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "function",
    "Entity",
    "Component",
    "string"
}, function(Sunshine, callback, entity, component, property)
    local value = component[property]
    local metatable = Sunshine:createMetatable(component)
    metatable.properties[property] = value
    component[property] = nil
    metatable.callbacks[#metatable.callbacks + 1] = {false, callback, property}
    entity.core.metatableCallbacks[#entity.core.metatableCallbacks] = {component, #metatable.callbacks}
end)