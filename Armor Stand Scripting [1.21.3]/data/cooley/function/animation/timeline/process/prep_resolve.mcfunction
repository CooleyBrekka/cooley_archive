$data modify storage cooley:statue root.temp.fsm set from storage cooley:statue root.$(uuid).timeline_$(id)_object.fsm
$data modify storage cooley:statue root.temp merge value {uuid:"$(uuid)",id:"$(id)"}
execute if data storage cooley:statue root.temp.object run function cooley:animation/timeline/process/object with storage cooley:statue root.temp


