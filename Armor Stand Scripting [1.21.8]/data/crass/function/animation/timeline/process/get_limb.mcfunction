# get default old value
$execute unless data storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) run data modify storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) set from storage crass:statue root.default_pose.$(limb)

# get details for new positions
$data modify storage crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb) set from storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).values

# drop data from previous limbs
data remove storage crass:statue root.direction_override

# default to nearest but overwrite if there's a given direction
data modify storage crass:statue root.direction_override.direction_modification set value "nearest"
$execute if data storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).dir run data modify storage crass:statue root.direction_override.direction_modification set from storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).dir
$data modify storage crass:statue root.direction_override.direction_old_values set from storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)
$data modify storage crass:statue root.direction_override.direction_new_values set from storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).values
$data modify storage crass:statue root.direction_override.limb_check set value "$(limb)"
$data modify storage crass:statue root.direction_override.storage set value "crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)"

# adjust as needed
function crass:animation/timeline/process/pose_direction_adjustment with storage crass:statue root.direction_override

# if relative position is requested
data modify storage crass:statue root.temp_check.type set value "absolute"
$data modify storage crass:statue root.temp_check.type set from storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).type
$execute if data storage crass:statue {root:{temp_check:{type:"relative"}}} run function coco:storage/operation_storage {str:"crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[0]",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[0]"}
$execute if data storage crass:statue {root:{temp_check:{type:"relative"}}} run function coco:storage/operation_storage {str:"crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[1]",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[1]"}
$execute if data storage crass:statue {root:{temp_check:{type:"relative"}}} run function coco:storage/operation_storage {str:"crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[2]",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[2]"}

# overwrite the original values 
$data modify storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) set from storage crass:statue root.direction_override.direction_old_values

