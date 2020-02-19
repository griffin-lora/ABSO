local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "Instance"
}, function(Sunshine, player, ...)
    local remoteEvent = Sunshine.remoteEvent
    remoteEvent:FireClient(player, ...)
end)