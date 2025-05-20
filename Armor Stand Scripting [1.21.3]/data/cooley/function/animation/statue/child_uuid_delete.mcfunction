# possible to restructure this to allow arbitrary number of child armor stands 
# unknown how to make it easy to generate them in the first place

# get child uuids
$data modify storage cooley:statue root.math2 set from storage cooley:statue root.$(math1)_bind.head
$data modify storage cooley:statue root.math3 set from storage cooley:statue root.$(math1)_bind.feet
$data modify storage cooley:statue root.math4 set from storage cooley:statue root.$(math1)_bind.hands

# remove children
function cooley:animation/statue/delete with storage cooley:statue root

# clear storage
$data remove storage cooley:statue root.$(math1)_bind
$data remove storage cooley:statue root.$(math1)

## remove uuid from list
# decrement number of uuids in storage
data remove storage cooley:statue root.temp.statue_list
function cooley:storage/operation {str:"cooley:statue root.statue_amt",op:"-",mod:1}
# recursive function, don't put singular stuff in here
$function cooley:animation/statue/list_remove {uuid:"$(math1)"}
# dump the temp array back into the uuid storage container
data modify storage cooley:statue root.statue_list set from storage cooley:statue root.temp.statue_list

#$tellraw @a "removing $(math1)"

