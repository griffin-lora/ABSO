local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "string"
}, function(Sunshine, id, scene)
    if scene and Sunshine:typeOf(scene) == "Scene" then
        for _, entity in pairs(scene.entities) do
            if entity.core.id == id then
                return entity
            end
        end
    else
        for _, checkScene in pairs(Sunshine.scenes) do
            local entity = Sunshine:getEntityById(id, checkScene)
            if entity then
                return entity
            end
        end
    end
end)