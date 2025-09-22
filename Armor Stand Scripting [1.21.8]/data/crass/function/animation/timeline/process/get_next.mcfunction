# grab the next object in the timeline
$data modify storage crass:statue root.$(uuid).timeline_$(id)_object set from storage crass:statue root.$(uuid).timeline_$(id)[0]
$data remove storage crass:statue root.$(uuid).timeline_$(id)[0]
$function crass:storage/operation {str:"crass:statue root.$(uuid).timeline_$(id)_length",op:"-",mod:1}

# store current pose and new pose
$data modify storage crass:statue root.temp.head_uuid set from storage crass:statue root.$(uuid)_bind.head
function crass:animation/timeline/process/get_pose with storage crass:statue root.temp

# get the duration
# scoreboard cheaper than storage for this
$scoreboard players set $(uuid)_$(id) co_duration $(time)

# scoreboard cheaper than storage for this
$scoreboard players set $(uuid)_$(id) co_current_time 0

# run the fsm init for this operation
$execute as $(uuid) at @s rotated as @s run function crass:interface/fsm_packs {fsm:"$(fsm)",fn:"init"}



