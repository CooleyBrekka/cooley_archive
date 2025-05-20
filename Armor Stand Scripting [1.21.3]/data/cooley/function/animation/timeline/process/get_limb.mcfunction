# get default old value
$execute unless data storage cooley:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) run data modify storage cooley:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb) set from storage cooley:statue root.default_pose.$(limb)

# get details for new positions
$data modify storage cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb) set from storage cooley:statue root.$(uuid).timeline_$(id)_object.$(limb).values

# if relative position is requested
$execute if data storage cooley:statue {root:{$(uuid):{timeline_$(id)_object:{$(limb):{type:"relative"}}}}} run function cooley:storage/operation_storage {str:"cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[0]",op:"+",mod:"cooley:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[0]"}
$execute if data storage cooley:statue {root:{$(uuid):{timeline_$(id)_object:{$(limb):{type:"relative"}}}}} run function cooley:storage/operation_storage {str:"cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[1]",op:"+",mod:"cooley:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[1]"}
$execute if data storage cooley:statue {root:{$(uuid):{timeline_$(id)_object:{$(limb):{type:"relative"}}}}} run function cooley:storage/operation_storage {str:"cooley:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[2]",op:"+",mod:"cooley:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[2]"}


