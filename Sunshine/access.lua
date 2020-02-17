return function(Sunshine, callback, component, property)
    local value = component[property]
    local metatable = Sunshine:createMetatable(component)
    metatable.properties[property] = value
    component[property] = nil
    metatable.callbacks[#metatable.callbacks + 1] = {false, callback, property}
end