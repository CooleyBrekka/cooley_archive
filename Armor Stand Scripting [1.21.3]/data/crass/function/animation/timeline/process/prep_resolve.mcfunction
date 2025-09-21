$data modify storage crass:statue root.temp.fsm set from storage crass:statue root.$(uuid).timeline_$(id)_object.fsm
$data modify storage crass:statue root.temp merge value {uuid:"$(uuid)",id:"$(id)"}
execute if data storage crass:statue root.temp.object run function crass:animation/timeline/process/object with storage crass:statue root.temp


