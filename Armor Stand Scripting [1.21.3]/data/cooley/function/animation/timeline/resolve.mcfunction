# causes the object to resolve, instantly triggering the appropriate number of ticks and exit
# TODO test this, i don't think it actually works
$data modify storage cooley:statue root.$(marker).timeline_$(timeline)_object.duration set value 0

# calculate loop num
$function cooley:storage/operation_storage {str:"cooley:statue root.temp.resolve",op:"",mod:"cooley:statue root.$(marker).timeline_$(timeline)_object.duration"}
$function cooley:storage/operation_storage {str:"cooley:statue root.temp.resolve",op:"-",mod:"cooley:statue root.$(marker).timeline_$(timeline)_object.current_time"}

# prep forloop
$data modify storage cooley:statue root.temp.prep_resolve set value {uuid:"$(marker)",id:"$(timeline)"}
function cooley:storage/operation_storage {str:"cooley:statue root.temp.max_iter",op:"",mod:"cooley:statue root.temp.resolve"}
data modify storage cooley:statue root.temp merge value {iter:0,command:"function cooley:animation/timeline/process/prep_resolve with storage cooley:statue root.temp.prep_resolve"}

function cooley:storage/forloop with storage cooley:statue root.temp


