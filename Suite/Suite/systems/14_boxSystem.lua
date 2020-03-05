return function(Sunshine, entity)
    local box = entity.box
    local frame = entity.frame
    local visible = entity.visible
    local uiTransform = entity.uiTransform
    local parent = entity.parent

    if box and uiTransform then
        local alreadySetText = false
        local boxInstance = Instance.new("TextBox")
        boxInstance.Text = box.text
        boxInstance.PlaceholderText = box.placeholderText
        boxInstance.TextColor3 = box.textColor
        boxInstance.TextScaled = true
        boxInstance.TextTruncate = "AtEnd"
        boxInstance.Font = box.font
        boxInstance.ClearTextOnFocus = false
        boxInstance.BackgroundTransparency = 1
        boxInstance.TextXAlignment = Enum.TextXAlignment.Left
        Sunshine:addInstance(boxInstance, entity)
        if parent then
            local parentEntity = parent.parent
            if parentEntity then
                local parentFrame = parentEntity.frame
                local parentLabel = parentEntity.label
                local parentWidget = parentEntity.widget
                if parentFrame then
                    boxInstance.Parent = parentFrame.frame
                elseif parentLabel then
                    boxInstance.Parent = parentLabel.label
                elseif parentWidget then
                    boxInstance.Parent = parentWidget.widget
                end
            else
                boxInstance.Parent = Sunshine.gui
            end
        else
            boxInstance.Parent = Sunshine.gui
        end
        Sunshine:addConnection(boxInstance.Focused, function()
            box.focused = true
        end, entity)
        Sunshine:addConnection(boxInstance.FocusLost, function(enterPressed)
            box.focused = false
            box.enterPressed = enterPressed
        end, entity)
        Sunshine:addConnection(boxInstance.Changed, function(property)
            if property == "Text" then
                alreadySetText = true
                box.text = boxInstance.Text
            end
        end, entity)
        local endActivation = false
        local originalSize = box.size
        if frame then
            frame.frame.Size = box.size
        end
        Sunshine:update(function()
            boxInstance.Position = uiTransform.position
            boxInstance.Size = UDim2.new(originalSize.X.Scale * uiTransform.size.X, originalSize.X.Offset *
            uiTransform.size.X, originalSize.Y.Scale * uiTransform.size.Y, originalSize.Y.Offset * uiTransform.size.Y)
            if frame then
                frame.frame.Size = boxInstance.Size
            end
            if visible then
                boxInstance.Visible = visible.visible
            end
            boxInstance.Rotation = uiTransform.rotation
            boxInstance.ZIndex = uiTransform.zIndex
            boxInstance.AnchorPoint = uiTransform.anchorPoint
        end, entity)
        Sunshine:change(function(placeholderText)
            boxInstance.PlaceholderText = placeholderText
        end, entity, box, "placeholderText")
        Sunshine:change(function(text)
            if not alreadySetText then
                boxInstance.Text = text or ""
            end
            alreadySetText = false
        end, entity, box, "text")
    end
end