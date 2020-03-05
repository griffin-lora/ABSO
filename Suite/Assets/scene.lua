return {entities = {
    --Widgets
    {
        core = {
            id = "{3E798C2C-B6C6-4E73-BF9A-7DAFD0B4473F}",
            name = "UtilWidget",
            active = true
        },
        widget = {
            title = "Utility",
            dockState = Enum.InitialDockState.Right,
            enabled = true,
            overrideEnabledRestore = true,
            size = Vector2.new(400, 500),
            minSize = Vector2.new(300, 80)
        }
    },
    {
        core = {
            id = "{BC51A2F2-3163-4DF7-95BA-68750BA7B7CF}",
            name = "CompEditWidget",
            active = true
        },
        widget = {
            title = "Component Editor",
            dockState = Enum.InitialDockState.Left,
            enabled = true,
            overrideEnabledRestore = true,
            size = Vector2.new(400, 500),
            minSize = Vector2.new(300, 80)
        },
        tag = { tag = "componentEditor" },
        componentEditor = {}
    },
    --Scene Loader
    {
        core = {
            id = "{0CB50030-50BA-4A0D-A80C-0E607F52C8D5}",
            name = "LoadSceneButton",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0.5, 0, 0.65, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 0,
            anchorPoint = Vector2.new(0.5, 0.5)
        },
        frame = {
            frame = script.Parent.frames.button
        },
        parent = {
            parent = "{3E798C2C-B6C6-4E73-BF9A-7DAFD0B4473F}"
        },
        button = {
            size = UDim2.new(0.6, 0, 0.2, 0),
            text = "Load Scene",
            textColor = Color3.fromRGB(69, 189, 117),
            font = Enum.Font.GothamBlack
        },
        loader = {}
    },
    -- Create Entity Button
    {
        core = {
            id = "{E4918A2E-98D9-48EC-BD12-A6A66D90FE56}",
            name = "CreateEntityButton",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0.5, 0, 0.35, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 0,
            anchorPoint = Vector2.new(0.5, 0.5)
        },
        frame = {
            frame = script.Parent.frames.button
        },
        parent = {
            parent = "{3E798C2C-B6C6-4E73-BF9A-7DAFD0B4473F}"
        },
        button = {
            size = UDim2.new(0.6, 0, 0.2, 0),
            text = "Create Entity",
            textColor = Color3.fromRGB(69, 189, 117),
            font = Enum.Font.GothamBlack
        },
        creator = {}
    },
    -- {
    --     core = {
    --         id = "{CBF6F8AB-8358-4ED6-AACC-13BF1BECB567}",
    --         name = "SaveSceneButton",
    --         active = true
    --     },
    --     uiTransform = {
    --         position = UDim2.new(0.5, 0, 0.65, 0),
    --         size = Vector2.new(1, 1),
    --         rotation = 0,
    --         zIndex = 0,
    --         anchorPoint = Vector2.new(0.5, 0.5)
    --     },
    --     frame = {
    --         frame = script.Parent.frames.button
    --     },
    --     parent = {
    --         parent = "{3E798C2C-B6C6-4E73-BF9A-7DAFD0B4473F}"
    --     },
    --     button = {
    --         size = UDim2.new(0.6, 0, 0.2, 0),
    --         text = "Save Scene",
    --         textColor = Color3.fromRGB(0, 135, 200),
    --         font = Enum.Font.GothamBlack
    --     },
    --     saver = {}
    -- },
    {
        core = {
            id = "{949bca1d-e16f-4125-a4a3-7997ff0f3f5e}",
            name = "SceneManagerBackground",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0, 0, 0, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = -1,
            anchorPoint = Vector2.new(0, 0)
        },
        frame = {
            frame = script.Parent.frames.backgroundGreen
        },
        scroller = {
            axis = "xy",
            amount = 75,
            tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)
        },
        parent = {
            parent = "{3E798C2C-B6C6-4E73-BF9A-7DAFD0B4473F}"
        }
    },
    --Component Editor
    {
        core = {
            id = "{5cf0ec08-06d3-43e6-bfaf-34ebebb192e7}",
            name = "CompEditorBackground",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0, 0, 0, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = -1,
            anchorPoint = Vector2.new(0, 0)
        },
        frame = {
            frame = script.Parent.frames.backgroundRed
        },
        scroller = {
            axis = "xy",
            amount = 75,
            tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)
        },
        parent = {
            parent = "{BC51A2F2-3163-4DF7-95BA-68750BA7B7CF}"
        }
    },
    {
        core = {
            id = "{3779b6e0-4235-402a-8fe6-146e7dbd5bbd}",
            name = "CompEditorFrame",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0, 0, 0, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 0,
            anchorPoint = Vector2.new(0, 0)
        },
        frame = {
            frame = script.Parent.frames.blank
        },
        parent = {
            parent = "{BC51A2F2-3163-4DF7-95BA-68750BA7B7CF}"
        }
    },
    {
        core = {
            id = "{084886b2-5de6-4566-b31f-79a57f736fa0}",
            name = "CompEditorSelected",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0.5, 0, 0.03, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 1,
            anchorPoint = Vector2.new(0.5, 0)
        },
        label = {
            text = "No entity selected!",
            color = Color3.new(1, 1, 1),
            outlineTransparency = 1,
            outlineColor = Color3.new(0, 0, 0),
            size = UDim2.new(0.8, 0, 0.1, 0),
            font = Enum.Font.GothamBold
        },
        tag = {
            tag = "entitySelectedText"
        },
        parent = {
            parent = "{3779b6e0-4235-402a-8fe6-146e7dbd5bbd}"
        }
    },
    {
        core = {
            id = "{7419E0EF-4D76-47C8-92B1-09F38E8A8F36}",
            name = "ScrollingFrame",
            active = true
        },
        uiTransform = {
            position = UDim2.new(1, 5, 0.5, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 1,
            anchorPoint = Vector2.new(1, 0.5)
        },
        scrollingFrame = {
            size =  UDim2.new(1,-5,0.65,0),
            canvasSize = UDim2.new(0,0,0,0),
            scrollingDirection = "Y",
            frame = nil,
        },
        tag = {
            tag = "componentsFrame"
        },
        visible = {
            visible = true
        },
        parent = {
            parent = "{3779b6e0-4235-402a-8fe6-146e7dbd5bbd}"
        }
    },
    {
        core = {
            id = "{CACF2305-D309-41E9-AA7C-2BC4E518B7F3}",
            name = "ComponentBackButton",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0.5, 0, 1, -5),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 0,
            anchorPoint = Vector2.new(0.5, 1)
        },
        frame = {
            frame = script.Parent.frames.button
        },
        parent = {
            parent = "{3779b6e0-4235-402a-8fe6-146e7dbd5bbd}"
        },
        visible = {
            visible = false
        },
        button = {
            size = UDim2.new(0.9, 0, 0.15, 0),
            text = "Back",
            textColor = Color3.fromRGB(0, 0, 0),
            font = Enum.Font.GothamBold
        },
        tag = {
            tag = "componentBackButton"
        }
    },
        {
        core = {
            id = "{D74A2253-35CD-4921-99C5-3A3F775A3F24}",
            name = "focusedComponentFrame",
            active = true
        },
        uiTransform = {
            position = UDim2.new(1, 0, 0.5, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 1,
            anchorPoint = Vector2.new(1, 0.5)
        },
        frame = {
            frame = script.Parent.frames.focusedComponentFrame
        },
        tag = {
            tag = "focusedComponentFrame"
        },
        visible = {
            visible = false
        },
        parent = {
            parent = "{3779b6e0-4235-402a-8fe6-146e7dbd5bbd}"
        }
    },
    {
        core = {
            id = "{8465CE6D-CB7D-4779-8BFE-0AA1C205E188}",
            name = "focusedComponentScrollingFrame",
            active = true
        },
        uiTransform = {
            position = UDim2.new(0, 5, 1, 0),
            size = Vector2.new(1, 1),
            rotation = 0,
            zIndex = 1,
            anchorPoint = Vector2.new(0, 1)
        },
        scrollingFrame = {
            size =  UDim2.new(1, -5, 0.85, 0),
            canvasSize = UDim2.new(0, 0, 2, 0),
            scrollingDirection = "Y",
            frame = nil,
        },
        tag = {
            tag = "focusedComponentScrollingFrame"
        },
        visible = {
            visible = true
        },
        uiListLayout = {
            padding = UDim.new(0, 5),
            instance = nil
        },
        parent = {
            parent = "{D74A2253-35CD-4921-99C5-3A3F775A3F24}"
        }
    },
--changemanager
    {
        core = {
            id = "{27331DC5-098F-4C08-807A-11A6A4B0AC2B}",
            name = "ScnChangeManager",
            active = true
        },
        change = {
        },
        history = {
        },
        tag = {
            tag = "changeManager"
        }
    },
    -- add component box
    {
        core = {
            name = "addComponentBox",
            id = "{8E726647-B3BE-4BDD-9380-80102CB635BB}",
            active = true
        },
        parent = {
            parent = "{BC51A2F2-3163-4DF7-95BA-68750BA7B7CF}"
        },
        frame = {
            frame = script.Parent.frames.box
        },
        box = {
            size = UDim2.new(0.5, 0, 0.5, 0),
            text = "",
            placeholderText = "Add Component",
            textColor = Color3.fromRGB(255, 255, 255),
            font = Enum.Font.SourceSans
        },
        tag = {
            tag = "addComponentBox"
        },
        visible = {
            visible = false
        },
        uiTransform = {
            position = UDim2.new(0.5, 0, 0.9, 0),
            size = Vector2.new(1.7, 0.2),
            rotation = 0,
            zIndex = 1,
            anchorPoint = Vector2.new(0.5, 0.5)
        },
        addComponent = {}
    }
}}