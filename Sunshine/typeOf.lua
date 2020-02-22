local typeOf = require(game:GetService("ReplicatedStorage"):WaitForChild("typeOf"))

return function(_, ...)
    return typeOf(...)
end