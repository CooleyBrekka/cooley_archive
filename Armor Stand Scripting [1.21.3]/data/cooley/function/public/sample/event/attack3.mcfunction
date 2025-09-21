## jump
# set up the payload
data modify storage cooley:sample root.payload set value {time:12,lerp:"icbrt",fsm:"jump"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[-90f,-50f,0f]}
data modify storage cooley:sample root.payload.RightArm set value {values:[-95f,60f,0f]}
data modify storage cooley:sample root.payload.LeftLeg set value {values:[-13f,-23f,0f]}
data modify storage cooley:sample root.payload.RightLeg set value {values:[-15f,31f,0f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## slam
# set up the payload
data modify storage cooley:sample root.payload set value {time:12,lerp:"cbrt",fsm:"fall"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[-30f,-31f,0f]}
data modify storage cooley:sample root.payload.RightArm set value {values:[-35f,20f,0f]}
data modify storage cooley:sample root.payload.LeftLeg set value {values:[-13f,-23f,0f]}
data modify storage cooley:sample root.payload.RightLeg set value {values:[-15f,31f,0f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## recovery
# set up the payload
data modify storage cooley:sample root.payload set value {time:8,lerp:"cbrt",fsm:"slam"}
data modify storage cooley:sample root.payload.LeftArm set value {values:[-11f,-5f,0f]}
data modify storage cooley:sample root.payload.RightArm set value {values:[-7f,4f,0f]}
data modify storage cooley:sample root.payload.LeftLeg set value {values:[-5f,-2f,0f]}
data modify storage cooley:sample root.payload.RightLeg set value {values:[-4f,0f,0f]}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

## go back to torso idle afterwards
# set up the payload (time -1 means it switches as soon as there's another event)
data modify storage cooley:sample root.payload set value {fsm:"torso_idle"}
# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}
