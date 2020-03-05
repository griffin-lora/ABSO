return function(Sunshine, entity)
    local box = entity.box
    local addComponent = entity.addComponent
    local changeManager
    local componentEditor
    if box and addComponent then
        local function getEntities()
            if not changeManager then
                for _, otherEntity in pairs(Sunshine.scenes[1].entities) do
                    if otherEntity.tag and otherEntity.tag.tag == "changeManager" then
                        changeManager = otherEntity
                        break
                    end
                end
            end
            if not componentEditor then
                for _, otherEntity in pairs(Sunshine.scenes[1].entities) do
                    if otherEntity.tag and otherEntity.tag.tag == "componentEditor" then
                        componentEditor = otherEntity
                        break
                    end
                end
            end
        end
        Sunshine:change(function(text)
            getEntities()
            if text:match("\t") then
                text = text:sub(1, text:len() - 1)
                local names = {}
                for name, _ in pairs(componentEditor.componentEditor.components) do
                    if name:match(text) then
                        names[#names + 1] = name
                    end
                end
                local closestLengthDifference = math.huge
                local closestName = ""
                for _, name in pairs(names) do
                    local lengthDifference = math.abs(name:len() - text:len())
                    if lengthDifference < closestLengthDifference then
                        closestLengthDifference = lengthDifference
                        closestName = name
                    end
                end
                box.text = closestName
            end
        end, entity, box, "text")
        Sunshine:change(function()
            
        end, entity, box, "enterPressed")
    end
end