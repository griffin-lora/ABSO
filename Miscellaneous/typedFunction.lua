local typeOf = require(game:GetService("ReplicatedStorage"):WaitForChild("typeOf"))

return function(argTypes, func)
    return function(...)
        local args = {...}
        for index, argument in pairs(args) do
            local argType = argTypes[index]
            if argType ~= "any" then
                assert(typeOf(argument) == argType, "Invalid argument type. Expected type " .. argType ..
                " instead got " .. typeOf(argument))
            end
        end
        func(...)
    end
end