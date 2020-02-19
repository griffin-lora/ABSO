local exception = "You must publish this place to the web to access DataStore."
local typedFunction = require(game:GetService("ReplicatedStorage"):WaitForChild("typedFunction"))

return typedFunction({
    "Sunshine",
    "function"
}, function(Sunshine, callback)
    local remoteEvent = Sunshine.remoteEvent
    return remoteEvent.OnServerEvent:Connect(function(player, ...)
        local args = {...}
        local success, message = pcall(function()
            callback(player, unpack(args))
        end)
        if not success and message ~= exception then
            player:Kick("dont try to pull that")
            warn(player, " caused error: ", message)
        end
    end)
end)