# generate position offset from pose
function crass:animation/statue/pose_offset

# this is not technically what sets the statue rotation
# this is just for poses with offsets to know what direction to offset in
data modify entity 00030dc6-0-0-0-7 Rotation set from storage crass:statue root.Rotation

# summon
function crass:animation/statue/create with storage crass:statue root

# modify the statue
# (rotation, pose, clothes, actor id)
execute as @e[type=armor_stand,tag=co_statue_empty] run function crass:animation/statue/modify with storage crass:statue root

# pair the pieces and return their uuids
# this runs @e checks since it's designed to be infrequent
execute as @e[tag=co_bottom,tag=co_statue_empty] run function gu:generate
data modify storage crass:statue root.new.feet set from storage gu:main out

execute as @e[tag=co_top,tag=co_statue_empty] run function gu:generate
data modify storage crass:statue root.new.head set from storage gu:main out

execute as @e[tag=co_hands,tag=co_statue_empty] run function gu:generate
data modify storage crass:statue root.new.hands set from storage gu:main out

execute as @e[tag=co_statue_marker,tag=co_statue_empty] run function gu:generate
data modify storage crass:statue root.new.marker set from storage gu:main out

data modify storage crass:statue root.new.actor set from storage crass:statue root.actor
function crass:animation/statue/bind with storage crass:statue root.new

# finish init
tag @e remove co_statue_empty

# reset storage to defaults for next call
function crass:storage/init

