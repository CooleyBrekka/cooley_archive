# for each timeline, get its id
#$tellraw @a "$(data)"

$execute as $(data) run function crass:animation/timeline/process/teleport with storage crass:statue root.$(data)_bind

$data modify storage crass:statue root.timeline_check.uuid set value "$(data)"
$data modify storage crass:statue root.temploop set from storage crass:statue root.$(data).timelines
function crass:storage/forloop_array {str:"crass:statue",path:"root.temploop",cmd:"function crass:animation/timeline/process/per_timeline"}



