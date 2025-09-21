# full sword slash animation

# appends the torso_idle fsm to timeline as body default

## raise arm
# set up the payload
data modify storage cooley:sample root.payload set value {time:6,lerp:"icbrt"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[0f,-78f,-70f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## slash
# set up the payload
data modify storage cooley:sample root.payload set value {time:8,lerp:"cbrt"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[165f,-182f,-120f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}


## minor recovery
# set up the payload
data modify storage cooley:sample root.payload set value {time:6,lerp:"icbrt",fsm:"slash"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[147f,-240f,-180f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## go back to torso idle afterwards
# set up the payload (time -1 means it switches as soon as there's another event)
data modify storage cooley:sample root.payload set value {fsm:"torso_idle"}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}


