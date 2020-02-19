local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "any",
    "string"
}, function(_, string)
   return (string):gsub(".%f[%l]", " %1"):gsub("%l%f[%u]", "%1 "):gsub("^.", string.upper)
end)