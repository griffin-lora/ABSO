local CFRAME_NEW = CFrame.new

return function(Sunshine, entity)
    local player = entity.player
    if player then
        local lastCharacter
        Sunshine:update(function()
            local mainCharacter = Sunshine:getEntityByTag(player.mainCharacterTag)
            local character = Sunshine:getEntityByTag(player.characterTag)
            local camera = Sunshine:getEntityByTag(player.cameraTag)
            if mainCharacter and character and camera then
                print("b")
                character.character.player = entity
                character.input.cameraTag = player.cameraTag
                camera.camera.subjectTag = player.characterTag
                if character ~= mainCharacter then
                    mainCharacter.transform.cFrame = CFRAME_NEW(0, 100000, 0)
                    mainCharacter.physics.movable = false
                    mainCharacter.character.controllable = false
                    character.character.controllable = true
                    character.capture.active = true
                    character.respawner.active = false
                    if character.follow then
                        character.follow.active = false
                    end
                end
                if lastCharacter and lastCharacter.capture and lastCharacter ~= character and
                character == mainCharacter then
                    lastCharacter.capture.active = false
                    lastCharacter.respawner.active = true
                    lastCharacter.character.controllable = false
                    character.physics.movable = true
                    character.character.controllable = true
                    character.character.state = "bounce"
                    character.transform.cFrame = lastCharacter.transform.cFrame + Vector3.new(0, 10, 0)
                end
                lastCharacter = character
            end
        end, entity)
    end
end