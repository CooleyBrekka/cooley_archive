#storage cccc:camera root.timelines.$(out).active_keyframe

# increment timer by 1
$function coco:storage/operation {str:"cccc:camera root.timelines.$(out).active_keyframe.timer",mod:"1",op:"+"}

# lerp pos and rotation


# if duration has passed, get the next keyframe (erased if none)
$execute store result score #cccc_keyframe_timer co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.timer
$execute store result score #cccc_keyframe_duration co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.duration

execute if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math run function cccc:camera/timeline/get_next_keyframe with storage gu:main
execute if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math run say keyframe ended
