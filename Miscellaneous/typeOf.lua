return function(object)
    if typeof(object) == "table" then
        return object.objectType or "table"
    else
        return typeof(object)
    end
end