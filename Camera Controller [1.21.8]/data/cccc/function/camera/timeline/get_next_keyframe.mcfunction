# get player gamemode
$function cccc:camera/timeline/save_gamemode {out:"$(out)"}

# run exit
$function cccc:camera/timeline/fsm_exit with storage cccc:camera root.timelines.$(out).active_keyframe

# wipe
$data remove storage cccc:camera root.timelines.$(out).active_keyframe

# pull next keyframe into active slot
$data modify storage cccc:camera root.timelines.$(out).active_keyframe set from storage cccc:camera root.timelines.$(out).timeline[0]

# remove the next keyframe from queue
$data remove storage cccc:camera root.timelines.$(out).timeline[0]

# update with position info
$execute if data storage cccc:camera root.timelines.$(out).active_keyframe run function cccc:camera/timeline/add_transform_data {out:"$(out)"}

# tag player
$execute if data storage cccc:camera root.timelines.$(out).active_keyframe run tag @s add co_player_stuck_camera

# run init
$function cccc:camera/timeline/fsm_init with storage cccc:camera root.timelines.$(out).active_keyframe


