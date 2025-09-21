# loop over timeline
$data modify storage cooley:statue root.temp.uuid set value "$(uuid)"
$function cooley:storage/forloop_array {str:"cooley:statue",path:"root.$(uuid).timelines",cmd:"function cooley:animation/statue/erase_timeline_uuid"}

# reset some metadata
$data remove storage cooley:statue root.$(uuid).timelines
$data modify storage cooley:statue root.$(uuid).timelines_length set value 0

