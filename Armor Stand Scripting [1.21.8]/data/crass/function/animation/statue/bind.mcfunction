# bind the pieces to a handy marker
$data modify storage crass:statue root.$(marker)_bind.feet set value "$(feet)"
$data modify storage crass:statue root.$(marker)_bind.head set value "$(head)"
$data modify storage crass:statue root.$(marker)_bind.hands set value "$(hands)"

# also add the uuid to the uuid storage to optimize tick calls
# add the uuid to list
$data modify storage crass:statue root.statue_list append value "$(marker)"

# increment length by 1
function coco:storage/operation {str:"crass:statue root.statue_amt",op:"+",mod:1}

# this is a garbage value otherwise
$data modify storage crass:statue root.$(marker).timelines_length set value 0

# actor id
$tag $(marker) add co_actor$(actor)

