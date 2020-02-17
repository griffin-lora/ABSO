return function(_, component)
    local metatable
    if not getmetatable(component) then
        metatable = {
            callbacks = {},
            properties = {},
            __newindex = function(_, property, value)
                metatable.properties[property] = value
                for _, callback in ipairs(metatable.callbacks) do
                    if callback[1] and callback[3] == property then
                        callback[2](value)
                    end
                end
            end,
            __index = function(_, property)
                local value
                for _, callback in ipairs(metatable.callbacks) do
                    if not callback[1] and callback[3] == property then
                        local currentValue = callback[2](component[property])
                        if value and currentValue then
                            error("Access conflict. 2 or more callbacks are returning a value.")
                        end
                        value = currentValue
                    end
                end
                return value or metatable.properties[property]
            end
        }
        setmetatable(component, metatable)
    else
        metatable = getmetatable(component)
    end
    return metatable
end