local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "Component",
    "table",
    "string"
}, function(Sunshine, component, componentInterface, componentName)
    local metatable
    if not getmetatable(component) then
        metatable = {
            callbacks = {},
            properties = {},
            componentInterface = componentInterface,
            componentName = componentName,
            __newindex = function(_, property, value)
                local propertyInterface = metatable.componentInterface[property]
                if propertyInterface then
                    local interfaceType = propertyInterface.type
                    local valueType = Sunshine:typeOf(value)
                    if (propertyInterface.canBeNil and value == nil) or interfaceType == valueType or
                    (interfaceType == "Entity" and valueType == "string") then
                        metatable.properties[property] = value
                        for _, callback in ipairs(metatable.callbacks) do
                            if callback[1] and callback[3] == property then
                                callback[2](value)
                            end
                        end
                    else
                        error("Attempted to set property " .. tostring(property) .. " to type " .. tostring(valueType)
                        .. " on component " .. tostring(metatable.componentName))
                    end
                else
                    error("Property " .. tostring(property) .. " doesn't exist on component "
                    .. tostring(metatable.componentName))
                end
            end,
            __index = function(_, property)
                local propertyInterface = metatable.componentInterface[property]
                if propertyInterface then
                    local value
                    for _, callback in ipairs(metatable.callbacks) do
                        if not callback[1] and callback[3] == property then
                            local currentValue = callback[2](metatable.properties[property])
                            if value and currentValue then
                                error("Access conflict. 2 or more access callbacks are returning a value.")
                            end
                            value = currentValue
                        end
                    end
                    if value then
                        local interfaceType = propertyInterface.type
                        local valueType = Sunshine:typeOf(value)
                        if (propertyInterface.canBeNil and value == nil) or interfaceType == valueType then
                            return value
                        else
                            error("Access callback returned type " .. tostring(valueType) .. " instead of "
                            .. tostring(interfaceType))
                        end
                    else
                        return metatable.properties[property]
                    end
                else
                    error("Property " .. tostring(property) .. " doesn't exist on component "
                    .. tostring(metatable.componentName))
                    return nil
                end
            end
        }
        setmetatable(component, metatable)
    else
        metatable = getmetatable(component)
    end
    return metatable
end)