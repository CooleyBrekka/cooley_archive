# increment timer by 1
$function coco:storage/operation {str:"cccc:camera root.timelines.$(out).active_keyframe.timer",mod:"1",op:"+"}
$execute store result score #cccc_keyframe_timer co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.timer
$execute store result score #cccc_keyframe_duration co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.duration

### lerp pos and rotation
$function cccc:camera/timeline/process_lerp {out:"$(out)",axis:"x"}
$function cccc:camera/timeline/process_lerp {out:"$(out)",axis:"y"}
$function cccc:camera/timeline/process_lerp {out:"$(out)",axis:"z"}
$function cccc:camera/timeline/process_lerp {out:"$(out)",axis:"pitch"}
$function cccc:camera/timeline/process_lerp {out:"$(out)",axis:"yaw"}

# feed the final values into the teleport function (not doing this with any kind of smooth motion)
$data modify storage cccc:camera root.timelines.$(out).active_keyframe.camera_temp set from storage cccc:camera root.$(out).skeleton
$function cccc:camera/timeline/move_camera with storage cccc:camera root.timelines.$(out).active_keyframe

# if duration has passed, get the next keyframe (erased if none)
execute if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math run function cccc:camera/timeline/get_next_keyframe with storage gu:main

$function cccc:camera/timeline/fsm_tick with storage cccc:camera root.timelines.$(out).active_keyframe

