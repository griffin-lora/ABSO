-- Unused

return function(Sunshine, entity)
    local creator = entity.creator
    local button = entity.button
    local changeManager
    local componentEditor
    if creator and button then
        Sunshine:change(function(activated)
            if activated then
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
                local selectedEntity = componentEditor.componentEditor.selectedEntity
                if selectedEntity then
                    changeManager.change.entity = Sunshine:createEntity({
                        core = {
                            name = "Entity",
                            id = game:GetService("HttpService"):GenerateGUID(true),
                            active = true
                        },
                        model = {
                            model = game.ReplicatedStorage.Assets.models.BaseModel
                        },
                        transform = {
                            cFrame = CFrame.new(),
                            size = Vector3.new(1, 1, 1)
                        }
                    }, selectedEntity.core.scene)
                    changeManager.change.newEntity = true
                end
            end
        end, entity, button, "activated")
    end
end