# loop over timeline
$data modify storage crass:statue root.temp.uuid set value "$(uuid)"
$function crass:storage/forloop_array {str:"crass:statue",path:"root.$(uuid).timelines",cmd:"function crass:animation/statue/erase_timeline_uuid"}

# reset some metadata
$data remove storage crass:statue root.$(uuid).timelines
$data modify storage crass:statue root.$(uuid).timelines_length set value 0

