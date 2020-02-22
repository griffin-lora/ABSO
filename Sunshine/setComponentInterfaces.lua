local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "table"
}, function(Sunshine, interfaces)
    Sunshine.componentInterfaces = interfaces
end)