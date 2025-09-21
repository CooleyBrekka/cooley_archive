# set up the payload
data modify storage crass:sample root.payload set value {fsm:"torso_idle"}

# request an addition to the timeline
function crass:interface/add_action {storage:"crass:sample root.payload",timeline:2}

