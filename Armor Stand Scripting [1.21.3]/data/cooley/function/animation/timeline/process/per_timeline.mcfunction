# get the uuid and timeline id together
#$tellraw @a "$(data)"
$data modify storage cooley:statue root.timeline_check.id set value "$(data)"
function cooley:animation/timeline/process/get_timeline with storage cooley:statue root.timeline_check
