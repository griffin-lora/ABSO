return function(Sunshine, callback, entity, component, property)
    local value = component[property]
    local metatable = Sunshine:createMetatable(component)
    metatable.properties[property] = value
    component[property] = nil
    metatable.callbacks[#metatable.callbacks + 1] = {true, callback, property}
    entity.core.metatableCallbacks[#entity.core.metatableCallbacks] = {component, #metatable.callbacks}
end