local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "string"
}, function(Sunshine, tag, scene)
    if scene and Sunshine:typeOf(scene) == "Scene" then
        for _, entity in pairs(scene.entities) do
            if entity.tag and entity.tag.tag == tag then
                return entity
            end
        end
    else
        for _, checkScene in pairs(Sunshine.scenes) do
            local entity = Sunshine:getEntityByTag(tag, checkScene)
            if entity then
                return entity
            end
        end
    end
end)