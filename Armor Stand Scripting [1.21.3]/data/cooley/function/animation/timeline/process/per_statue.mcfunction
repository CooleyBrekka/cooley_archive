# for each timeline, get its id
#$tellraw @a "$(data)"

$execute as $(data) run function cooley:animation/timeline/process/teleport with storage cooley:statue root.$(data)_bind

$data modify storage cooley:statue root.timeline_check.uuid set value "$(data)"
$function cooley:storage/forloop_array {str:"cooley:statue ",path:"root.$(data).timelines",cmd:"function cooley:animation/timeline/process/per_timeline"}



