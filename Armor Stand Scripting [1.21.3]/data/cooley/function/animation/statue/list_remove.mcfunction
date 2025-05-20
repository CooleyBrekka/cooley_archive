# compare uuids
$data modify storage cooley:statue root.math.1 set value "$(uuid)"
data modify storage cooley:statue root.math.2 set from storage cooley:statue root.statue_list[0]
function cooley:storage/strcmp {1:"cooley:statue root.math.1", 2:"cooley:statue root.math.2"}

# 0 if uuids match
#tellraw @a [{"text":"V - 0 if uuids match"}]
#tellraw @a [{"score":{"name":"#strcmp","objective": "co_math"}}]
#function cooley:storage/print_storage {storage:"cooley:statue root.math.1"}
#function cooley:storage/print_storage {storage:"cooley:statue root.math.2"}

# if they don't match, write to temp
execute if score #strcmp co_math matches 1 run data modify storage cooley:statue root.temp.statue_list append from storage cooley:statue root.statue_list[0]
data remove storage cooley:statue root.statue_list[0]

# contains more uuids?
data remove storage cooley:statue root.temp.contains
execute store success storage cooley:statue root.temp.contains int 1 run data get storage cooley:statue root.statue_list[0]
# V debug contains value
#$execute if data storage cooley:statue {root:{temp:{contains:1}}} run tellraw @a "more after: $(uuid)"
#$execute unless data storage cooley:statue {root:{temp:{contains:1}}} run tellraw @a "no more after: $(uuid)"
#function cooley:storage/print_storage {storage:"cooley:statue root.temp.contains"}

# recurse to check entire array
$execute if data storage cooley:statue {root:{temp:{contains:1}}} run function cooley:animation/statue/list_remove {uuid:"$(uuid)"}

