# no actions if duration matches 0
scoreboard players set #take_action co_math 1
$execute if data storage cooley:statue {root:{$(uuid):{timeline_$(id)_object:{duration:0}}}} run scoreboard players set #take_action co_math 0

# increment current by 1
# scoreboard is cheaper
#$function cooley:storage/operation {str:"cooley:statue root.$(uuid).timeline_$(id)_object.current_time",op:"+",mod:1}
#$execute store result score #fsm_tick co_math run data get storage cooley:statue root.$(uuid).timeline_$(id)_object.current_time
$scoreboard players add $(uuid)_$(id) co_current_time 1
$scoreboard players operation #fsm_tick co_math = $(uuid)_$(id) co_current_time
#tellraw @a [{"score": {"name": "#fsm_tick","objective": "co_math"}}]

# get current and final time
#$execute store result score #current co_math run data get storage cooley:statue root.$(uuid).timeline_$(id)_object.current_time 1
#$execute store result score #max co_math run data get storage cooley:statue root.$(uuid).timeline_$(id)_object.duration 1
$scoreboard players operation #current co_math = $(uuid)_$(id) co_current_time
$scoreboard players operation #max co_math = $(uuid)_$(id) co_duration

# calculate interpolation
scoreboard players operation #fraction co_math = #current co_math
scoreboard players operation #fraction co_math *= 10000 co_math
scoreboard players operation #fraction co_math /= #max co_math
# fraction is now on a scale of 0 - 10000 based on 0 - max timer progression

# apply lerp to fraction
$function cooley:animation/timeline/process/lerp/$(lerp)

# run the fsm tick unless duration is 0
# (`#fsm_tick co_math` contains current tick of animation)
# (`#fraction co_math` contains fraction of animation done from 0 to 10000)
$execute if score #take_action co_math matches 1 as $(uuid) run function cooley:public/fsm/$(fsm)/tick

# get children
$data modify storage cooley:statue root.temp.head set from storage cooley:statue root.$(uuid)_bind.head
$data modify storage cooley:statue root.temp.feet set from storage cooley:statue root.$(uuid)_bind.feet
$data modify storage cooley:statue root.temp.hands set from storage cooley:statue root.$(uuid)_bind.hands

# calculate position for limbs
$execute if data storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.Head if score #take_action co_math matches 1 run function cooley:animation/timeline/process/update_limb {limb:"Head",uuid:"$(uuid)",id:"$(id)"}
$execute if data storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.Body if score #take_action co_math matches 1 run function cooley:animation/timeline/process/update_limb {limb:"Body",uuid:"$(uuid)",id:"$(id)"}
$execute if data storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.RightLeg if score #take_action co_math matches 1 run function cooley:animation/timeline/process/update_limb {limb:"RightLeg",uuid:"$(uuid)",id:"$(id)"}
$execute if data storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.LeftLeg if score #take_action co_math matches 1 run function cooley:animation/timeline/process/update_limb {limb:"LeftLeg",uuid:"$(uuid)",id:"$(id)"}
$execute if data storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.RightArm if score #take_action co_math matches 1 run function cooley:animation/timeline/process/update_limb {limb:"RightArm",uuid:"$(uuid)",id:"$(id)"}
$execute if data storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.LeftArm if score #take_action co_math matches 1 run function cooley:animation/timeline/process/update_limb {limb:"LeftArm",uuid:"$(uuid)",id:"$(id)"}

# check if object needs to be exited
scoreboard players set #object_exit co_math 1
# if the duration isn't up, don't exit
execute unless score #current co_math >= #max co_math run scoreboard players set #object_exit co_math 0
# if duration is -1, only exit if there's another object queued
$execute if score $(uuid)_$(id) co_duration matches -1 unless data storage cooley:statue root.$(uuid).timeline_$(id)[0] run scoreboard players set #object_exit co_math 0
# if duration is -2, don't exit
$execute if score $(uuid)_$(id) co_duration matches -2 run scoreboard players set #object_exit co_math 0

# run the exit function
$execute if score #object_exit co_math matches 1 as $(uuid) run function cooley:public/fsm/$(fsm)/exit

# delete this action
$execute if score #object_exit co_math matches 1 run data remove storage cooley:statue root.$(uuid).timeline_$(id)_object
#$execute if score #object_exit co_math matches 1 run say data remove storage cooley:statue root.$(uuid).timeline_$(id)_object



