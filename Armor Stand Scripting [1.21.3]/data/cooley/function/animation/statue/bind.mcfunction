# bind the pieces to a handy marker
$data modify storage cooley:statue root.$(marker)_bind.feet set value "$(feet)"
$data modify storage cooley:statue root.$(marker)_bind.head set value "$(head)"
$data modify storage cooley:statue root.$(marker)_bind.hands set value "$(hands)"

# also add the uuid to the uuid storage to optimize tick calls
# add the uuid to list
$data modify storage cooley:statue root.statue_list append value "$(marker)"

# increment length by 1
function cooley:storage/operation {str:"cooley:statue root.statue_amt",op:"+",mod:1}
