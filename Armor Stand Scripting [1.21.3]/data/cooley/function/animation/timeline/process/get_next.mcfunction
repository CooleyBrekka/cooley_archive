# grab the next object in the timeline
$data modify storage cooley:statue root.$(uuid).timeline_$(id)_object set from storage cooley:statue root.$(uuid).timeline_$(id)[0]
$data remove storage cooley:statue root.$(uuid).timeline_$(id)[0]
$function cooley:storage/operation {str:"cooley:statue root.$(uuid).timeline_$(id)_length",op:"-",mod:1}

# store current pose and new pose
$data modify storage cooley:statue root.temp.head_uuid set from storage cooley:statue root.$(uuid)_bind.head
function cooley:animation/timeline/process/get_pose with storage cooley:statue root.temp

# get the duration
# scoreboard cheaper than storage for this
#$data modify storage cooley:statue root.$(uuid).timeline_$(id)_object.duration set value $(time)
$scoreboard players set $(uuid)_$(id) co_duration $(time)

# scoreboard cheaper than storage for this
#$data modify storage cooley:statue root.$(uuid).timeline_$(id)_object.current_time set value 0
$scoreboard players set $(uuid)_$(id) co_current_time 0
#$say reset $(uuid)_$(id)

# run the fsm init for this operation
$execute as $(uuid) run function cooley:public/fsm/$(fsm)/init



