# get fraction of elapsed distance
$execute store result score #cccc_$(axis)_curr co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.$(axis)_end
$execute store result score #cccc_start co_math run data get storage cccc:camera root.timelines.$(out).active_keyframe.$(axis)_start
$scoreboard players operation #cccc_$(axis)_curr co_math -= #cccc_start co_math 
$scoreboard players operation #cccc_$(axis)_curr co_math *= #cccc_keyframe_timer co_math 
$scoreboard players operation #cccc_$(axis)_curr co_math /= #cccc_keyframe_duration co_math 

# add to start
$scoreboard players operation #cccc_$(axis)_curr co_math += #cccc_start co_math 
$execute store result storage cccc:camera root.timelines.$(out).active_keyframe.$(axis)_curr int 1 run scoreboard players get #cccc_$(axis)_curr co_math


