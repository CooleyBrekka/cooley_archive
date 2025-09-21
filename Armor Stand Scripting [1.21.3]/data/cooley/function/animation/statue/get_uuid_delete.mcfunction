# get this marker's uuid
function gu:generate
data modify storage cooley:statue root.math1 set from storage gu:main out

# remove child armor stands
function cooley:animation/statue/child_uuid_delete with storage cooley:statue root

# remove marker
kill @s
