# get the player's old gamemode
$execute if data storage cccc:camera root.timelines.$(out).active_keyframe run function cccc:camera/timeline/restore_gamemode with storage cccc:camera root.timelines.$(out)

# try to find the next keyframe
function cccc:camera/timeline/get_next_keyframe with storage gu:main

scoreboard players set #lock_camera_keyframe co_math 1
