local RunService = game:GetService("RunService")
local typeOf = require(game:GetService("ReplicatedStorage"):WaitForChild("typeOf"))

return function(argTypes, func)
    if RunService:IsStudio() then
        return function(...)
            local args = {...}
            for index, argument in pairs(args) do
                local argType = argTypes[index]
                if argType and argType ~= "any" then
                    assert(typeOf(argument) == argType, "Invalid argument type. Expected type " .. argType ..
                    " instead got " .. typeOf(argument))
                end
            end
            return func(...)
        end
    else
        return func
    end
end