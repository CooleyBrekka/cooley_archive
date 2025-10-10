# increment timer by 1
$function coco:storage/operation {str:"cccc:camera root.timelines.$(out).active_keyframe.timer",mod:"1",op:"+"}
$execute store result score #cccc_keyframe_timer co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.timer
$execute store result score #cccc_keyframe_duration co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.duration

# choose type of camera control
$function cccc:camera/type/choose_type with storage cccc:camera root.timelines.$(out).active_keyframe

# feed the final values into the teleport function (not doing this with any kind of smooth motion)
$data modify storage cccc:camera root.timelines.$(out).active_keyframe.camera_temp set from storage cccc:camera root.$(out).skeleton
$function cccc:camera/timeline/move_camera with storage cccc:camera root.timelines.$(out).active_keyframe

# if duration has passed, get the next keyframe (erased if none)
$execute if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math run function cccc:camera/timeline/restore_gamemode with storage cccc:camera root.timelines.$(out)
execute if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math run function cccc:camera/timeline/get_next_keyframe with storage gu:main

$function cccc:camera/timeline/fsm_tick with storage cccc:camera root.timelines.$(out).active_keyframe

