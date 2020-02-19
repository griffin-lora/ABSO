local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "Scene"
}, function(Sunshine, scene)
    Sunshine:loadScene(Sunshine.dataScenes[scene.index])
end)