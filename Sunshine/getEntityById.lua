local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "string",
    "Scene"
}, function(_, id, scene)
    for _, entity in pairs(scene.entities) do
        if entity.core.id == id then
            return entity
        end
    end
end)