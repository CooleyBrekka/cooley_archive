# full sword slash animation

# appends the torso_idle fsm to timeline as body default

## raise arm
# set up the payload
data modify storage cooley:sample root.payload set value {time:12,lerp:"icbrt"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[-190f,0f,2f]}
data modify storage cooley:sample root.payload.RightArm set value {values:[-190f,0f,-20f]}
data modify storage cooley:sample root.payload.Head set value {values:[-10f,0f,-20f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## slash
# set up the payload
data modify storage cooley:sample root.payload set value {time:10,lerp:"cbrt"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[-49f,17f,-10f]}
data modify storage cooley:sample root.payload.RightArm set value {values:[-63f,0f,15f]}
data modify storage cooley:sample root.payload.Head set value {values:[2f,0f,0f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## minor recovery
# set up the payload
data modify storage cooley:sample root.payload set value {time:9,lerp:"icbrt",fsm:"smash"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[10f,10f,10f]}
data modify storage cooley:sample root.payload.RightArm set value {values:[0f,0f,-10f]}
data modify storage cooley:sample root.payload.Head set value {values:[2f,0f,0f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## go back to torso idle afterwards
# set up the payload (time -1 means it switches as soon as there's another event)
data modify storage cooley:sample root.payload set value {fsm:"torso_idle"}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

