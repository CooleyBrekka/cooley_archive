# difference between end and start

# data remove is expensive, test using scoreboards instead TODO
#data remove storage crass:statue root.temp.limb_pos
#$data modify storage crass:statue root.temp.limb_pos set from storage crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[$(axis)]
#$function coco:storage/operation_storage {str:"crass:statue root.temp.limb_pos",op:"-",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[$(axis)]"}
$execute store result score #interpolator co_math run data get storage crass:statue root.$(uuid).timeline_$(id)_object.new_pose.$(limb)[$(axis)]
$execute store result score #old_pose co_math run data get storage crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[$(axis)]


# scale the difference by the percentage from start
scoreboard players operation #interpolator co_math -= #old_pose co_math
scoreboard players operation #interpolator co_math *= #fraction co_math
scoreboard players operation #interpolator co_math /= 10000 co_math
#execute store result storage crass:statue root.temp.limb_interpolate float 1 run scoreboard players get #fraction co_math
#function coco:storage/operation_storage {str:"crass:statue root.temp.limb_pos",op:"*",mod:"crass:statue root.temp.limb_interpolate"}
#function coco:storage/operation {str:"crass:statue root.temp.limb_pos",op:"/",mod:"10000"}

# add to old pos
execute store result storage crass:statue root.temp.limb_pos float 1 run scoreboard players get #interpolator co_math
$function coco:storage/operation_storage {str:"crass:statue root.temp.limb_pos",op:"+",mod:"crass:statue root.$(uuid).timeline_$(id)_object.old_pose.$(limb)[$(axis)]"}

# update child data
$data modify storage crass:statue root.temp.limb set value "$(limb)"
$data modify storage crass:statue root.temp.axis set value "$(axis)"
function crass:animation/timeline/process/child_limb with storage crass:statue root.temp


