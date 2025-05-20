# if object exists
$data modify storage cooley:statue root.temp.object set from storage cooley:statue root.$(uuid).timeline_$(id)_object
data modify storage cooley:statue root.temp merge value {fsm:"none",time:-1,lerp:"linear"}
$data modify storage cooley:statue root.temp.fsm set from storage cooley:statue root.$(uuid).timeline_$(id)_object.fsm
$data modify storage cooley:statue root.temp.lerp set from storage cooley:statue root.$(uuid).timeline_$(id)_object.lerp
$data modify storage cooley:statue root.temp merge value {uuid:"$(uuid)",id:"$(id)"}
execute if data storage cooley:statue root.temp.object run function cooley:animation/timeline/process/object with storage cooley:statue root.temp

# if object doesnt exist (regardless of not gotten yet or previous finished)
data remove storage cooley:statue root.temp.object
data remove storage cooley:statue root.temp.object_next
$data modify storage cooley:statue root.temp.object set from storage cooley:statue root.$(uuid).timeline_$(id)_object
$data modify storage cooley:statue root.temp.object_next set from storage cooley:statue root.$(uuid).timeline_$(id)[0]

# pass in fsm and time params of next object
data modify storage cooley:statue root.temp merge value {fsm:"none",time:-1,lerp:"linear"}
data modify storage cooley:statue root.temp.fsm set from storage cooley:statue root.temp.object_next.fsm
data modify storage cooley:statue root.temp.time set from storage cooley:statue root.temp.object_next.time
data modify storage cooley:statue root.temp.lerp set from storage cooley:statue root.temp.object_next.lerp
execute unless data storage cooley:statue root.temp.object if data storage cooley:statue root.temp.object_next run function cooley:animation/timeline/process/get_next with storage cooley:statue root.temp



