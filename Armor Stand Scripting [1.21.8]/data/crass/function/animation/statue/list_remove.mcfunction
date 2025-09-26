# compare uuids
$data modify storage crass:statue root.math.1 set value "$(uuid)"
data modify storage crass:statue root.math.2 set from storage crass:statue root.statue_list[0]
function coco:storage/strcmp {1:"crass:statue root.math.1", 2:"crass:statue root.math.2"}

# 0 if uuids match
#tellraw @a [{"text":"V - 0 if uuids match"}]
#tellraw @a [{"score":{"name":"#strcmp","objective": "co_math"}}]
#function coco:storage/print_storage {storage:"crass:statue root.math.1"}
#function coco:storage/print_storage {storage:"crass:statue root.math.2"}

# if they don't match, write to temp
execute if score #strcmp co_math matches 1 run data modify storage crass:statue root.temp.statue_list append from storage crass:statue root.statue_list[0]
data remove storage crass:statue root.statue_list[0]

# contains more uuids?
data remove storage crass:statue root.temp.contains
execute store success storage crass:statue root.temp.contains int 1 run data get storage crass:statue root.statue_list[0]
# V debug contains value
#$execute if data storage crass:statue {root:{temp:{contains:1}}} run tellraw @a "more after: $(uuid)"
#$execute unless data storage crass:statue {root:{temp:{contains:1}}} run tellraw @a "no more after: $(uuid)"
#function coco:storage/print_storage {storage:"crass:statue root.temp.contains"}

# recurse to check entire array
$execute if data storage crass:statue {root:{temp:{contains:1}}} run function crass:animation/statue/list_remove {uuid:"$(uuid)"}

