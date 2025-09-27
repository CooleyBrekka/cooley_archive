$execute at @s run function cccc:camera/timeline/transform_keyframe with storage cccc:camera root.timelines.$(out).active_keyframe

# slightly more usefully formatted input
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.x_start run data modify storage cccc:camera root.timelines.$(out).active_keyframe.x_start set from entity @e[tag=cccc_keyframe_transform_start,limit=1] Pos[0]
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.y_start run data modify storage cccc:camera root.timelines.$(out).active_keyframe.y_start set from entity @e[tag=cccc_keyframe_transform_start,limit=1] Pos[1]
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.z_start run data modify storage cccc:camera root.timelines.$(out).active_keyframe.z_start set from entity @e[tag=cccc_keyframe_transform_start,limit=1] Pos[2]

$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.x_end run data modify storage cccc:camera root.timelines.$(out).active_keyframe.x_end set from entity @e[tag=cccc_keyframe_transform_end,limit=1] Pos[0]
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.y_end run data modify storage cccc:camera root.timelines.$(out).active_keyframe.y_end set from entity @e[tag=cccc_keyframe_transform_end,limit=1] Pos[1]
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.z_end run data modify storage cccc:camera root.timelines.$(out).active_keyframe.z_end set from entity @e[tag=cccc_keyframe_transform_end,limit=1] Pos[2]

$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.pitch_start run data modify storage cccc:camera root.timelines.$(out).active_keyframe.pitch_start set from entity @e[tag=cccc_keyframe_transform_start,limit=1] Rotation[0]
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.yaw_start run data modify storage cccc:camera root.timelines.$(out).active_keyframe.yaw_start set from entity @e[tag=cccc_keyframe_transform_start,limit=1] Rotation[1]

$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.pitch_end run data modify storage cccc:camera root.timelines.$(out).active_keyframe.pitch_end set from entity @e[tag=cccc_keyframe_transform_end,limit=1] Rotation[0]
$execute unless data storage cccc:camera root.timelines.$(out).active_keyframe.yaw_end run data modify storage cccc:camera root.timelines.$(out).active_keyframe.yaw_end set from entity @e[tag=cccc_keyframe_transform_end,limit=1] Rotation[1]

# remove temp markers
kill @e[tag=cccc_keyframe_transform_start]
kill @e[tag=cccc_keyframe_transform_end]

