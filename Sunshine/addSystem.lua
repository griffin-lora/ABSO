local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "function",
    "number"
}, function(Sunshine, system, index)
    Sunshine.systems[index] = system
end)