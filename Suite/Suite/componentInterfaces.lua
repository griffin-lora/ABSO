return {
    widget = {
        title = {type = "string", default = "Name"},
        dockState = {type = "EnumItem", default = Enum.InitialDockState.Right},
        enabled = {type = "boolean", default = true},
        overrideEnabledRestore = {type = "boolean", default = true},
        size = {type = "Vector2", default = Vector2.new(400, 500)},
        minSize = {type = "Vector2", Vector2.new(300, 80)},
        widget = {type = "Instance", default = nil}
    },
    componentEditor = {},
    loader = {},
    creator = {},
    scroller = {
        axis = {type = "string", default = "xy"},
        amount = {type = "number", default = 75},
        tweenInfo = {type = "TweenInfo",
        defualt = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0)}
    },
    change = {
        entity = {type = "Entity", default = nil},
        componentName = {type = "string", default = nil},
        propertyName = {type = "string", default = nil},
        propertyValue = {type = "any", default = nil},
        alreadyChangedOnEntity = {type = "boolean", default = nil}
    },
    history = {},
    addComponent = {}
}