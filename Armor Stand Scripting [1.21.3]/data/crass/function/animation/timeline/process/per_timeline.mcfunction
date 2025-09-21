# get the uuid and timeline id together
#$tellraw @a "$(data)"
$data modify storage crass:statue root.timeline_check.id set value "$(data)"
function crass:animation/timeline/process/get_timeline with storage crass:statue root.timeline_check
