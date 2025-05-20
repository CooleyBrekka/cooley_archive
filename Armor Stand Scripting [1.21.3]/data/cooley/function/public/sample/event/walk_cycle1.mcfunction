## move limbs in opposite directions
# set up the payload
data modify storage cooley:sample root.payload set value {time:15,fsm:"walk_cycle1",lerp:"cbrt"}
data modify storage cooley:sample root.payload.LeftLeg set value {values:[-20f,0f,1f],type:"absolute"}
data modify storage cooley:sample root.payload.RightLeg set value {values:[20f,0f,1f],type:"absolute"}

# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:1}

# set up the payload
data modify storage cooley:sample root.payload set value {time:15}
data modify storage cooley:sample root.payload.LeftArm set value {values:[20f,0f,1f],type:"absolute"}
data modify storage cooley:sample root.payload.RightArm set value {values:[-20f,0f,1f],type:"absolute"}

# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:0}

