--[[

    Sunshine Framework v3.0
    Written by TrafficConeGod and SuperMakerPlayer

]]

local folder = script

local function getMember(instance)
    if instance:IsA("ModuleScript") then
        return require(instance)
    elseif instance:IsA("Folder") then
        local member = {}
        for _, child in pairs(instance:GetChildren()) do
            member[child.Name] = getMember(child)
        end
        return member
    end
end

return setmetatable({}, {
    __index = function(Sunshine, name)
        -- This just routes an index to the correct module in the members folder.
        -- For example Sunshine.someIndex will return the required someIndex.lua file
        local member
        if folder:FindFirstChild(name) then
            local instance = folder[name]
            member = getMember(instance)
        else
            error(name .. " does not exist!")
        end
        Sunshine[name] = member
        return member
    end
})