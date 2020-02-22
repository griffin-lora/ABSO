local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "string"
}, function(Sunshine, tag)
    for _, scene in pairs(Sunshine.scenes) do
        for _, entity in pairs(scene.entities) do
            if entity.tag then
                if entity.tag.tag == tag then
                    return entity
                end
            end
        end
    end
end)