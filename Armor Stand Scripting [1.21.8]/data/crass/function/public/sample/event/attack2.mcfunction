# full sword slash animation

# appends the torso_idle fsm to timeline as body default

## raise arm
# set up the payload
data modify storage crass:sample root.payload set value {time:3,lerp:"linear"}
data modify storage crass:sample root.payload.LeftArm set value {values:[-70f,0f,5f]}
data modify storage crass:sample root.payload.RightArm set value {values:[-70f,0f,-5f]}
# request an addition to the timeline
function crass:interface/add_action {storage:"crass:sample root.payload",timeline:2}

## raise arm
# set up the payload
data modify storage crass:sample root.payload set value {time:9,lerp:"icbrt"}
data modify storage crass:sample root.payload.LeftArm set value {values:[-190f,0f,2f],dir:"specified"}
data modify storage crass:sample root.payload.RightArm set value {values:[-190f,0f,-20f],dir:"specified"}
data modify storage crass:sample root.payload.Head set value {values:[-10f,0f,-20f]}
# request an addition to the timeline
function crass:interface/add_action {storage:"crass:sample root.payload",timeline:2}

## slash
# set up the payload
data modify storage crass:sample root.payload set value {time:10,lerp:"cbrt"}
data modify storage crass:sample root.payload.LeftArm set value {values:[-49f,17f,-10f],dir:"specified"}
data modify storage crass:sample root.payload.RightArm set value {values:[-63f,0f,15f],dir:"specified"}
data modify storage crass:sample root.payload.Head set value {values:[2f,0f,0f]}
# request an addition to the timeline
function crass:interface/add_action {storage:"crass:sample root.payload",timeline:2}

## minor recovery
# set up the payload
data modify storage crass:sample root.payload set value {time:9,lerp:"icbrt",fsm:"smash"}
data modify storage crass:sample root.payload.LeftArm set value {values:[10f,10f,10f]}
data modify storage crass:sample root.payload.RightArm set value {values:[0f,0f,-10f]}
data modify storage crass:sample root.payload.Head set value {values:[2f,0f,0f]}
# request an addition to the timeline
function crass:interface/add_action {storage:"crass:sample root.payload",timeline:2}

## go back to torso idle afterwards
# set up the payload (time -1 means it switches as soon as there's another event)
data modify storage crass:sample root.payload set value {fsm:"torso_idle"}
# request an addition to the timeline
function crass:interface/add_action {storage:"crass:sample root.payload",timeline:2}

