# possible to restructure this to allow arbitrary number of child armor stands 
# unknown how to make it easy to generate them in the first place

# get child uuids
$data modify storage crass:statue root.math2 set from storage crass:statue root.$(math1)_bind.head
$data modify storage crass:statue root.math3 set from storage crass:statue root.$(math1)_bind.feet
$data modify storage crass:statue root.math4 set from storage crass:statue root.$(math1)_bind.hands

# remove children
function crass:animation/statue/delete with storage crass:statue root

# clear storage
$data remove storage crass:statue root.$(math1)_bind
$data remove storage crass:statue root.$(math1)

## remove uuid from list
# decrement number of uuids in storage
data remove storage crass:statue root.temp.statue_list
function crass:storage/operation {str:"crass:statue root.statue_amt",op:"-",mod:1}
# recursive function, don't put singular stuff in here
$function crass:animation/statue/list_remove {uuid:"$(math1)"}
# dump the temp array back into the uuid storage container
data modify storage crass:statue root.statue_list set from storage crass:statue root.temp.statue_list

#$tellraw @a "removing $(math1)"

