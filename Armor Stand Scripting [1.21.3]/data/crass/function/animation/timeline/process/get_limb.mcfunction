# get default old value
$execute unless data storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) run data modify storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) set from storage crass:statue root.default_pose.$(limb)

# get details for new positions
$data modify storage crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb) set from storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).values

# if relative position is requested
data modify storage crass:statue root.temp_check.type set value "absolute"
$data modify storage crass:statue root.temp_check.type set from storage crass:statue root.$(uuid).timeline_$(id)_object.$(limb).type
$execute if data storage crass:statue {root:{temp_check:{type:"relative"}}} run function crass:storage/operation_storage {str:"crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[0]",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[0]"}
$execute if data storage crass:statue {root:{temp_check:{type:"relative"}}} run function crass:storage/operation_storage {str:"crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[1]",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[1]"}
$execute if data storage crass:statue {root:{temp_check:{type:"relative"}}} run function crass:storage/operation_storage {str:"crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[2]",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[2]"}


