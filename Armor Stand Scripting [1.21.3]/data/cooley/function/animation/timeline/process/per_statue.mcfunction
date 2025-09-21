# for each timeline, get its id
#$tellraw @a "$(data)"

$execute as $(data) run function cooley:animation/timeline/process/teleport with storage cooley:statue root.$(data)_bind

$data modify storage cooley:statue root.timeline_check.uuid set value "$(data)"
$data modify storage cooley:statue root.temploop set from storage cooley:statue root.$(data).timelines
function cooley:storage/forloop_array {str:"cooley:statue",path:"root.temploop",cmd:"function cooley:animation/timeline/process/per_timeline"}



