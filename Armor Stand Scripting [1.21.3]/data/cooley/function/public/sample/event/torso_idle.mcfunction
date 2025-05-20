# set up the payload
data modify storage cooley:sample root.payload set value {fsm:"torso_idle"}

# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:2}

