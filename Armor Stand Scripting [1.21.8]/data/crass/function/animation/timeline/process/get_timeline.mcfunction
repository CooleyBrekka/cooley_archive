# if object exists
$data modify storage crass:statue root.temp.object set from storage crass:statue root.$(uuid).timeline_$(id)_object
data modify storage crass:statue root.temp merge value {fsm:"none",time:-1,lerp:"linear"}
$data modify storage crass:statue root.temp.fsm set from storage crass:statue root.$(uuid).timeline_$(id)_object.fsm
$data modify storage crass:statue root.temp.lerp set from storage crass:statue root.$(uuid).timeline_$(id)_object.lerp
$data modify storage crass:statue root.temp merge value {uuid:"$(uuid)",id:"$(id)"}
execute if data storage crass:statue root.temp.object run function crass:animation/timeline/process/object with storage crass:statue root.temp

# if object doesnt exist (regardless of not gotten yet or previous finished)
data remove storage crass:statue root.temp.object
data remove storage crass:statue root.temp.object_next
$data modify storage crass:statue root.temp.object set from storage crass:statue root.$(uuid).timeline_$(id)_object
$data modify storage crass:statue root.temp.object_next set from storage crass:statue root.$(uuid).timeline_$(id)[0]

# pass in fsm and time params of next object
data modify storage crass:statue root.temp merge value {fsm:"none",time:-1,lerp:"linear"}
data modify storage crass:statue root.temp.fsm set from storage crass:statue root.temp.object_next.fsm
data modify storage crass:statue root.temp.time set from storage crass:statue root.temp.object_next.time
data modify storage crass:statue root.temp.lerp set from storage crass:statue root.temp.object_next.lerp
execute unless data storage crass:statue root.temp.object if data storage crass:statue root.temp.object_next run function crass:animation/timeline/process/get_next with storage crass:statue root.temp



