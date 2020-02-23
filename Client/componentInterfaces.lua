return {
    prefab = {
        prefab = {type = "Instance", default = nil},
        dataPrefab = {type = "table", default = nil, editable = false}
    },
    model = {
        model = {type = "Instance", default = nil}
    },
    transform = {
        cFrame = {type = "CFrame", default = CFrame.new()},
        size = {type = "Vector3", default = Vector3.new(1, 1, 1)}
    },
    physics = {
        anchored = {type = "boolean", default = true},
        canCollide = {type = "boolean", default = true},
        welded = {type = "boolean", default = true},
        massless = {type = "boolean", default = false},
        velocity = {type = "Vector3", default = Vector3.new()},
        angularVelocity = {type = "Vector3", default = Vector3.new()},
        density = {type = "number", default = 0.7},
        friction = {type = "number", default = 0.3},
        elasticity = {type = "number", default = 0.5},
        frictionWeight = {type = "number", default = 1},
        elasticityWeight = {type = "number", default = 1},
        movable = {type = "boolean", default = true},
    },
    tag = {
        tag = {type = "string", default = ""}
    },
    collider = {
        trigger = {type = "boolean", default = false},
        anchored = {type = "boolean", default = false},
        hitEntities = {type = "table", default = {}, editable = false}
    },
    collectible = {
    },
    input = {
        moveVector = {type = "Vector3", default = Vector3.new()},
        space = {type = "boolean", default = false},
        shift = {type = "boolean", default = false},
        cameraTag = {type = "string", default = ""},
        e = {type = "boolean", default = false, editable = false}
    },
    character = {
        controllable = {type = "boolean", default = false},
        canLoseMagnitude = {type = "boolean", default = false, editable = false},
        shirtGraphic = {type = "string", default = ""},
        shirtGraphicColor = {type = "Color3", default = Color3.fromRGB(255, 255, 255)},
        shirt = {type = "string", default = ""},
        shirtColor = {type = "Color3", default = Color3.fromRGB(255, 255, 255)},
        pants = {type = "string", default = ""},
        pantsColor = {type = "Color3", default = Color3.fromRGB(255, 255, 255)},
        headColor = {type = "Color3", default = Color3.fromRGB(163, 162, 165)},
        leftArmColor = {type = "Color3", default = Color3.fromRGB(163, 162, 165)},
        leftLegColor = {type = "Color3", default = Color3.fromRGB(163, 162, 165)},
        rightArmColor = {type = "Color3", default = Color3.fromRGB(163, 162, 165)},
        rightLegColor = {type = "Color3", default = Color3.fromRGB(163, 162, 165)},
        torsoColor = {type = "Color3", default = Color3.fromRGB(163, 162, 165)},
        walkSpeed = {type = "number", default = 16},
        walkSpeedFactor = {type = "number", default = 1},
        moveAnimation = {type = "number", default = 0},
        idleAnimation = {type = "number", default = 0},
        fallAnimation = {type = "number", default = 0},
        swimAnimation = {type = "number", default = 0},
        sinkAnimation = {type = "number", default = 0},
        movable = {type = "boolean", default = true},
        cameraTag = {type = "string", default = ""},
        state = {type = "string", default = nil, editable = false}
    },
    charData = {
        coins = {type = "number", default = 0}
    },
    stats = {
        coins = {type = "number", default = 0},
        regionalCoins = {type = "number", default = 0}
    },
    jump = {
        power = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },

    dive = {
        power = {type = "number", default = 50},
        bouncePower = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        doAnimation = {type = "number", default = 0},
        endAnimation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    camera = {
        controllable = {type = "boolean", default = false},
        subjectTag = {type = "string", default = ""},
        fieldOfView = {type = "number", default = 70},
        rotateSpeed = {type = "number", default = 0.5},
        scrollSpeed = {type = "number", default = 5},
        maxZoom = {type = "number", default = 40},
        minZoom = {type = "number", default = 10},
        lerpSpeed = {type = "number", default = 15}
    },
    spinner = {
        speed = {type = "number", default = 1},
        axis = {type = "string", default = "y"}
    },
    animator = {
        core = {type = "number", default = nil},
        idle = {type = "number", default = nil},
        movement = {type = "number", default = nil},
        action = {type = "number", default = nil},
        coreSpeed = {type = "number", default = 1},
        idleSpeed = {type = "number", default = 1},
        movementSpeed = {type = "number", default = 1},
        actionSpeed = {type = "number", default = 1},
    },
    frame = {
        frame = {type = "Instance", default = nil}
    },
    uiTransform = {
        position = {type = "UDim2", default = UDim2.new()},
        rotation = {type = "number", default = 0},
        size = {type = "Vector2", default = Vector2.new(1, 1)},
        zIndex = {type = "number", default = 0},
        anchorPoint = {type = "Vector2", default = Vector2.new()},
    },
    label = {
        text = {type = "string", default = "label"},
        size = {type = "UDim2", default = UDim2.new(0, 100, 0, 100)},
        color = {type = "Color3", default = Color3.new(1, 1, 1)},
        font = {type = "EnumItem", default = Enum.Font.Highway}
    },
    button = {
        activated = {type = "boolean", default = false},
        size = {type = "UDim2", default = UDim2.new(0, 100, 0, 100)},
        text = {type = "string", default = ""}
    },
    box = {
        focused = {type = "boolean", default = false},
        enterPressed = {type = "boolean", default = false},
        size = {type = "UDim2", default = UDim2.new(0, 100, 0, 100)},
        text = {type = "string", default = ""}
    },
    sound = {
        id = {type = "number", default = 0},
        playing = {type = "boolean", default = false},
        volume = {type = "number", default = 0.5},
        looped = {type = "boolean", default = false},
        autoStop = {type = "boolean", default = true}
    },
    animation = {
        id = {type = "number", default = 0},
        looped = {type = "boolean", default = false},
        playing = {type = "boolean", default = false},
        speed = {type = "number", default = 1}
    },
    transparency = {
        transparency = {type = "number", default = 0}
    },

    lighting = {
        sky = {type = "Instance", default = nil},
        lightness = {type = "number", default = 2},
        ambient = {type = "Color3", default = Color3.fromRGB(128, 128, 128)},
        outdoorAmbient = {type = "Color3", default = Color3.fromRGB(128, 128, 128)},
        globalShadows = {type = "boolean", default = true},
        clockTime = {type = "number", default = 12},
        sunPos = {type = "number", default = 41},
        fogColor = {type = "Color3", default = Color3.fromRGB(192, 192, 192)},
        fogStart = {type = "number", default = 0},
        fogEnd = {type = "number", default = 100000},
        brightness = {type = "number", default = 0},
        contrast = {type = "number", default = 0},
        saturation = {type = "number", default = 0},
        tintColor = {type = "Color3", default = Color3.new(1,1,1)},
        blurAmount = {type = "number", default = 0},
        bloomThreshold = {type = "number", default = 2},
        sunRays = {type = "boolean", default = false},
        sunIntensity = {type = "number", default = 0.25}
    },
    crouch = {
        walkSpeedFactor = {type = "number", default = 0.5},
        animation = {type = "number", default = 0},
        moveAnimation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    groundPound = {
        walkSpeedFactor = {type = "number", default = 0.1},
        speed = {type = "number", default = 50},
        delay = {type = "number", default = 0.5},
        startAnimation = {type = "number", default = 0},
        animation = {type = "number", default = 0},
        endAnimation = {type = "number", default = 0},
        sound = {type = "number", default = 0},
        endSound = {type = "number", default = 0}
    },
    groundPoundJump = {
        power = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    backFlip = {
        power = {type = "number", default = 50},
        backPower = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    longJump = {
        power = {type = "number", default = 50},
        bouncePower = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    store = {
    },
    moving = {
        extend = {type = "CFrame", default = CFrame.new(0,0,0)},
        speed = {type = "number", default = 1}
    },
    head = {
        character = {type = "Entity", default = nil},
        time = {type = "number", default = 2},
        holdTime = {type = "number", default = 5},
        bounceTime = {type = "number", default = 0.5},
    },

    bouncer = {
        power = {type = "number", default = 50},
        direct = {type = "boolean", default = false}
    },

    teleporter = {
        scene = {type = "Instance", default = nil},
        activated = {type = "boolean", default = false}
    },

    throw = {
        power = {type = "number", default = 50},
        distance = {type = "number", default = 20},
        animation = {type = "number", default = 0},
        headTag = {type = "string", default = ""},
        sound = {type = "number", default = 0}
    },

    health = {
        health = {type = "number", default = 3},
        time = {type = "number", default = 2},
        invulnerabilityFrames = {type = "boolean", default = true},
        invulnerable = {type = "boolean", default = false}
    },

    bounce = {
        power = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        bounceCount = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    capture = {
        active = {type = "boolean", default = false},
        character = {type = "Entity", default = nil}
    },

    lockAxis = {
        x = {type = "boolean", default = false},
        y = {type = "boolean", default = false},
        z = {type = "boolean", default = false}
    },
    coin = {
        tweenInfo = {type = "TweenInfo", default = TweenInfo.new()}
    },
    regionalCoin = {
        tweenInfo = {type = "TweenInfo", default = TweenInfo.new()}
    },

    coinCounter = {
        playerTag = {type = "string", default = nil}
    },
    deathBarrier = {
        y = {type = "number", default = -500}
    },

    wallPush = {
        animation = {type = "number", default = 0}
    },
    wallSlide = {
        animation = {type = "number", default = 0},
        speed = {type = "number", default = -50},
        factor = {type = "number", default = 0.8}
    },

    wallJump = {
        animation = {type = "number", default = 0},
        power = {type = "number", default = 5},
        bouncePower = {type = "number", default = 20},
        sound = {type = "number", default = 0}
    },
    hazard = {
        damage = {type = "number", default = 1}
    },

    player = {
        mainCharacterTag = {type = "string", default = ""},
        characterTag = {type = "string", default = ""},
        cameraTag = {type = "string", default = ""}
    },
    doubleJump = {
        power = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0},
        time = {type = "number", default = 0.7}
    },
    tripleJump = {
        power = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0},
        time = {type = "number", default = 0.7}
    },
    follow = {
        range = {type = "number", default = 50},
        radius = {type = "number", default = 70},
        active = {type = "boolean", default = true}
    },
    spawner = {
        active = {type = "boolean", default = false},
        entity = {type = "Entity", default = nil}
    },
    collisionSpawner = {
    },
    crate = {
        hits = {type = "number", default = 1}
    },

    sceneTransition = {
        tweenInfo = {type = "TweenInfo", default = TweenInfo.new()},
        scene = {type = "table", default = nil},
        type = {type = "string", default = nil},
        loading = {type = "boolean", default = false}
    },

    visible = {
        visible = {type = "boolean", default = true},
    },

    spawn = {
        active = {type = "boolean", default = false}
    },
    checkpoint = {
    },
    magicMirror = {
        preview = {type = "number", default = 0},
        active = {type = "boolean", default = false},
    },
    terrain = {
        -- material = {type = Enum.Material, default = Enum.Material.Grass}
    },
    water = {

    },
    swimUp = {
        power = {type = "number", default = 50},
        animation = {type = "number", default = 0},
        sound = {type = "number", default = 0}
    },
    music = {
        id = {type = "number", default = 0},
        volume = {type = "number", default = 1},
        paused = {type = "boolean", default = false},
    },
    scriptCollectible = {
        name = {type = "string", default = "rename this or you\'re a poo poo head"},
        active = {type = "boolean", default = false}
    },
    pause = {},
    oscillator = {
        amplitude = {type = "number", default = 1},
        frequency = {type = "number", default = 1},
        axis = {type = "string", default = "y"}
    },
    lockRotationAxis = {
        x = {type = "boolean", default = false},
        y = {type = "boolean", default = false},
        z = {type = "boolean", default = false}
    },
    cracked = {
        time = {type = "number", default = 2},
        instant = {type = "boolean", default = false},
        respawn = {type = "boolean", default = true},
        animation = {type = "number", default = 0},
    },
    dash = {
        animation = {type = "number", default = 0},
        factor = {type = "number", default = 3},
        time = {type = "number", default = 3}
    },
    respawner = {
        active = {type = "boolean", default = false},
        time = {type = "number", default = 0}
    },
    scriptCollectibleDisplay = {
        dateLabel = {type = "Entity", default = nil}
    },
    key = {
        scriptCollectible = {type = "Entity", default = nil},
        active = {type = "boolean", default = false}
    },
    gyroBlock = {
        hits = {type = "number", default = 2},
        ring1 = {type = "Entity", default = nil},
        ring2 = {type = "Entity", default = nil},
    },

    crackedWall = {
        animation = {type = "number", default = 0},
        time = {type = "number", default = 0}
    },
    hydrophobic = {
    },
    bonk = {
        power = {type = "number", default = 20},
        animation = {type = "number", default = 0},
        doAnimation = {type = "number", default = 0},
        sound = {type = "number", default = 0},
        walkSpeedFactor = {type = "number", default = 0.05}
    },
    gravity = {
        ignore = {type = "boolean", default = true}
    },
    parent = {
        parent = {type = "Entity", default = nil}
    },
    healthUI = {
        playerTag = {type = "string", default = ""},
        image = {type ="number", default = 2324645164},
        rectOffset3 = {type = "Vector2", default = Vector2.new()},
        rectOffset2 = {type = "Vector2", default = Vector2.new()},
        rectOffset1 = {type = "Vector2", default = Vector2.new()},
        rectOffset0 = {type = "Vector2", default = Vector2.new()}
    },
    speaker = {
        id = {type = "number", default = 0},
        playing = {type = "boolean", default = false},
        volume = {type = "number", default = 1},
    },
    swingingUprightPlatform = {
        speed = {type = "number", default = 2},
        range = {type = "number", default = 45},
    },
    musicTracker = {
        entityTag = {type = "string", default = ""},
    },
    inertia = {},
    gameVisible = {},
    distancePause = {
        disabled = {type = "boolean", default = true},
        distance = {type = "number", default = 250}
    },
    textureScroller = {
        incrementU = {type = "number", default = 0.1},
        incrementV = {type = "number", default = 0.1}
    },
    costumeChanger = {
        currentCostume = {type = "string", default = "Default"}
    }
}