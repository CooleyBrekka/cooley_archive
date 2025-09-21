# causes the object to resolve, instantly triggering the appropriate number of ticks and exit
# TODO test this, i don't think it actually works
$data modify storage crass:statue root.$(marker).timeline_$(timeline)_object.duration set value 0

# calculate loop num
$function crass:storage/operation_storage {str:"crass:statue root.temp.resolve",op:"",mod:"crass:statue root.$(marker).timeline_$(timeline)_object.duration"}
$function crass:storage/operation_storage {str:"crass:statue root.temp.resolve",op:"-",mod:"crass:statue root.$(marker).timeline_$(timeline)_object.current_time"}

# prep forloop
$data modify storage crass:statue root.temp.prep_resolve set value {uuid:"$(marker)",id:"$(timeline)"}
function crass:storage/operation_storage {str:"crass:statue root.temp.max_iter",op:"",mod:"crass:statue root.temp.resolve"}
data modify storage crass:statue root.temp merge value {iter:0,command:"function crass:animation/timeline/process/prep_resolve with storage crass:statue root.temp.prep_resolve"}

function crass:storage/forloop with storage crass:statue root.temp


