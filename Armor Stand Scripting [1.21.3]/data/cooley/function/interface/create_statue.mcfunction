# generate position offset from pose
function cooley:animation/statue/pose_offset

# this is not technically what sets the statue rotation
# this is just for poses with offsets to know what direction to offset in
data modify entity 00030dc6-0-0-0-7 Rotation set from storage cooley:statue root.Rotation

# summon
function cooley:animation/statue/create with storage cooley:statue root

# modify the statue
# (rotation, pose, clothes, actor id)
execute as @e[type=armor_stand,tag=co_statue_empty] run function cooley:animation/statue/modify with storage cooley:statue root

# pair the pieces and return their uuids
# this runs @e checks since it's designed to be infrequent
execute as @e[tag=co_bottom,tag=co_statue_empty] run function gu:generate
data modify storage cooley:statue root.new.feet set from storage gu:main out

execute as @e[tag=co_top,tag=co_statue_empty] run function gu:generate
data modify storage cooley:statue root.new.head set from storage gu:main out

execute as @e[tag=co_hands,tag=co_statue_empty] run function gu:generate
data modify storage cooley:statue root.new.hands set from storage gu:main out

execute as @e[tag=co_statue_marker,tag=co_statue_empty] run function gu:generate
data modify storage cooley:statue root.new.marker set from storage gu:main out

data modify storage cooley:statue root.new.actor set from storage cooley:statue root.actor
function cooley:animation/statue/bind with storage cooley:statue root.new

# finish init
tag @e remove co_statue_empty

# reset storage to defaults for next call
function cooley:storage/init

