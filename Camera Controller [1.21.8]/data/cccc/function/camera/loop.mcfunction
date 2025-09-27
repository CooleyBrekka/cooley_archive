# cap to only one camera per player
function gu:generate
function cccc:camera/check_player_camera with storage gu:main

# if processing active keyframe
$execute if data storage cccc:camera root.timelines.$(out).active_keyframe run function cccc:camera/timeline/process_keyframe with storage gu:main

# if no active keyframe or it just ended
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe run function cccc:camera/timeline/get_next_keyframe with storage gu:main

# attach player to camera if it's animating
$execute if data storage cccc:camera root.timelines.$(out).active_keyframe run function cccc:camera/attach {camera_temp:"$(camera_temp)"}

# detach player from camera otherwise
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe run function cccc:camera/detach

