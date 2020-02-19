local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "number",
    "number",
    "number"
}, function(_, start, goal, alpha)
    return start * (1 - alpha) + (goal * alpha)
end)