# increment timer by 1
$function coco:storage/operation {str:"cccc:camera root.timelines.$(out).active_keyframe.timer",mod:"1",op:"+"}
$execute store result score #cccc_keyframe_timer co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.timer
$execute store result score #cccc_keyframe_duration co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.duration

# choose type of camera control if we're under the timer
$execute if score #cccc_keyframe_timer co_math < #cccc_keyframe_duration co_math run function cccc:camera/type/choose_type with storage cccc:camera root.timelines.$(out).active_keyframe

# feed the final values into the teleport function (not doing this with any kind of smooth motion)
$data modify storage cccc:camera root.timelines.$(out).active_keyframe.camera_temp set from storage cccc:camera root.$(out).skeleton
$function cccc:camera/timeline/move_camera with storage cccc:camera root.timelines.$(out).active_keyframe

scoreboard players set #lock_camera_keyframe co_math 0
# get the next keyframe
# if duration is up and we're in the default exit setting
$execute if score #lock_camera_keyframe co_math matches 0 if data storage cccc:camera {root:{timelines:{$(out):{active_keyframe:{exit:"end"}}}}} if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math run function cccc:camera/timeline/exit_keyframe with storage gu:main
# if duration is up and there's another keyframe and we're in the sequence exit setting
$execute if score #lock_camera_keyframe co_math matches 0 if data storage cccc:camera {root:{timelines:{$(out):{active_keyframe:{exit:"sequence"}}}}} if score #cccc_keyframe_timer co_math >= #cccc_keyframe_duration co_math if data storage cccc:camera root.timelines.$(out).timeline[0] run function cccc:camera/timeline/exit_keyframe with storage gu:main


$function cccc:camera/timeline/fsm_tick with storage cccc:camera root.timelines.$(out).active_keyframe

