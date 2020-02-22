local Sunshine = require(game:GetService("ReplicatedStorage"):WaitForChild("Sunshine"))

Sunshine:addSystemFolder(script:WaitForChild("systems"))
Sunshine:setComponentInterfaces(require(script:WaitForChild("componentInterfaces")))
Sunshine:loadScene(require(script:WaitForChild("scene")))