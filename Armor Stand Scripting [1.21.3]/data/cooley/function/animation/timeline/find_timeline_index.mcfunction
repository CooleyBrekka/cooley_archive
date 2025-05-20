# index into the array storage, write to 1
$data modify storage cooley:statue root.temp.1 set from storage cooley:statue root.$(uuid).timelines[$(1)]

# get the new id
$data modify storage cooley:statue root.temp.2 set value "$(timeline_id)"

# compare
function cooley:storage/strcmp {1:"cooley:statue root.temp.1",2:"cooley:statue root.temp.2"}

# if matches, set to 1
execute if score #strcmp co_math matches 0 run scoreboard players set #find_timeline co_math 1
#tellraw @a [{"score":{"name": "#strcmp","objective": "co_math"}}]

