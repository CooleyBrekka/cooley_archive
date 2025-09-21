# if the entity didn't have this timeline yet, add it to the list of timelines
# use forloop to check
scoreboard players set #find_timeline co_math 0
$data modify storage crass:statue root.temp.max_iter set from storage crass:statue root.$(uuid).timelines_length
data modify storage crass:statue root.temp merge value {iter:0,command:"function crass:animation/timeline/find_timeline with storage crass:statue root.temp",current:"#index co_math"}
function crass:storage/forloop with storage crass:statue root.temp

$execute if score #find_timeline co_math matches 0 run data modify storage crass:statue root.$(uuid).timelines append value "$(timeline_id)"
#$execute if score #find_timeline co_math matches 0 run say data modify storage crass:statue root.$(uuid).timelines append value "$(timeline_id)"

# increment length by 1
$execute if score #find_timeline co_math matches 0 run function crass:storage/operation {str:"crass:statue root.$(uuid).timelines_length",op:"+",mod:1}

# write the temp to the entity's unique timeline array
$data modify storage crass:statue root.$(uuid).timeline_$(timeline_id) append from storage crass:statue root.temp_block

# increment length by 1
$function crass:storage/operation {str:"crass:statue root.$(uuid).timeline_$(timeline_id)_length",op:"+",mod:1}




