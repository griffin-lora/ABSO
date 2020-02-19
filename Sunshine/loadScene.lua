local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "table",
    "number"
}, function(Sunshine, dataScene, index)
    if not Sunshine.managing then
        Sunshine:manage()
    end
    index = index or 1
    if Sunshine.scenes[index] then
        Sunshine:unloadScene(Sunshine.scenes[index])
    end
    Sunshine.dataScenes[index] = dataScene
    local scene = {
        objectType = "Scene",
        entities = {},
        active = true,
        index = index
    }
    Sunshine.scenes[index] = scene
    for _, entity in pairs(dataScene.entities) do
        Sunshine:createEntity(entity, scene)
    end
    return scene
end)