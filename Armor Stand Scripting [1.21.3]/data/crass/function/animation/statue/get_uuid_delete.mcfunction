# get this marker's uuid
function gu:generate
data modify storage crass:statue root.math1 set from storage gu:main out

# remove child armor stands
function crass:animation/statue/child_uuid_delete with storage crass:statue root

# remove marker
kill @s
