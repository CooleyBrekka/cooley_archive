## motion controller
# this timeline is taken by a sort of ai
# specifically, this fsm's tick function requests motion towards the nearest player
# set up the payload
data modify storage cooley:sample root.payload set value {fsm:"walking_controller"}

# request an addition to the timeline
function cooley:interface/add_action {storage:"cooley:sample root.payload",timeline:3}

