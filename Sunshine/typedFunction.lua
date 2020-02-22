local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return function(_, ...)
    return typedFunction(...)
end