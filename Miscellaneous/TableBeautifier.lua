local toolbar = plugin:CreateToolbar("Scene Beautifier")
local beautifyButton = toolbar:CreateButton("Beautify Seleced Scene", "For scenes exported by Sunshine", "rbxassetid://4458901886")

beautifyButton.Click:connect(function()
	local selectedObjects = game.Selection:Get()
	local selectedFirst
	
	if #selectedObjects > 0 then
		selectedFirst = selectedObjects[1]
		if selectedFirst:IsA("ModuleScript") then
			local scriptSource = selectedFirst.Source
			if string.sub(scriptSource, 1, 8) == "return {" then
				local newSource = scriptSource:gsub("{", "{\n")
				local newSource = newSource:gsub(",", ",\n")
				newSource = newSource:gsub("=", " = ")
				
				local indents = 0
				local indentedSource = ""
				for line in newSource:gmatch("([^\r\n]*)[\r\n]?") do
					local i, j = line:gsub("}", "}")
					indents = indents - j
					
					local tabsString = ""
					if indents > 0 then
						for i=1, indents do
							tabsString = tabsString.."\t"
						end
						line = tabsString..line
					end
					
					local i, j = line:gsub("{", "{")
					indents = indents + j
					
					indentedSource = indentedSource.."\n"..line
				end
				newSource = indentedSource
					
				local outputScript = Instance.new("ModuleScript")
				outputScript.Source = newSource
				outputScript.Name = selectedFirst.Name.."_Beautified"
				outputScript.Parent = selectedFirst.Parent
				game:GetService("ChangeHistoryService"):SetWaypoint("Beautified a scene")
			else
				warn("Selected object is not a scene or prefab!")
			end
		else
			warn("Selected object is not a scene or prefab!")
		end
	else
		warn("No scripts are selected!")
	end
end)