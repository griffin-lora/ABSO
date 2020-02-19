local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "RBXScriptSignal",
    "function",
    "Entity",
    "boolean"
}, function(_, event, callback, entity, ignoreInactive)
    entity.core.connections[#entity.core.connections + 1] = event:Connect(function(...)
        if (entity.core.active and entity.core.scene.active) or ignoreInactive then
            callback(...)
        end
    end)
end)