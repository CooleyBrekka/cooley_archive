# for each input, process it and store whether it was input this tick
function cccc:input/loop_one {action:"jump"}
function cccc:input/loop_one {action:"sprint"}
function cccc:input/loop_one {action:"sneak"}
function cccc:input/loop_one {action:"backward"}
function cccc:input/loop_one {action:"forward"}
function cccc:input/loop_one {action:"right"}
function cccc:input/loop_one {action:"left"}

# custom actions
# overrides: back and left <V
$execute if score @s co_forward_input matches 1 if score @s co_backward_input matches 0 as $(actor_temp) run function crass:interface/as_child {command:"execute rotated 0 0 run tp @s ^ ^ ^0.2"}
$execute if score @s co_backward_input matches 1 as $(actor_temp) run function crass:interface/as_child {command:"execute rotated 0 0 run tp @s ^ ^ ^-0.2"}
$execute if score @s co_left_input matches 1 as $(actor_temp) run function crass:interface/as_child {command:"execute rotated 0 0 run tp @s ^0.2 ^ ^"}
$execute if score @s co_right_input matches 1 if score @s co_left_input matches 0 as $(actor_temp) run function crass:interface/as_child {command:"execute rotated 0 0 run tp @s ^-0.2 ^ ^"}

$execute if score @s co_forward_input matches 1 if score @s co_backward_input matches 0 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^0.2
$execute if score @s co_backward_input matches 1 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-0.2
$execute if score @s co_left_input matches 1 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^0.2 ^ ^
$execute if score @s co_right_input matches 1 if score @s co_left_input matches 0 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^-0.2 ^ ^

$execute if score @s co_forward_input matches 1 if score @s co_backward_input matches 0 as $(actor_temp) at @s rotated 0 0 run tp @s ^ ^ ^0.2
$execute if score @s co_backward_input matches 1 as $(actor_temp) at @s rotated 0 0 run tp @s ^ ^ ^-0.2
$execute if score @s co_left_input matches 1 as $(actor_temp) at @s rotated 0 0 run tp @s ^0.2 ^ ^
$execute if score @s co_right_input matches 1 if score @s co_left_input matches 0 as $(actor_temp) at @s rotated 0 0 run tp @s ^-0.2 ^ ^

# remap for convenience
scoreboard players operation @s co_f = @s co_forward_input
scoreboard players operation @s co_b = @s co_backward_input
scoreboard players operation @s co_l = @s co_left_input
scoreboard players operation @s co_r = @s co_right_input

# character rotation
execute if score @s co_f matches 1 if score @s co_b matches 0 if score @s co_l matches 0 if score @s co_r matches 0 run scoreboard players set @s co_actor_rotation 0
execute if score @s co_f matches 1 if score @s co_b matches 0 if score @s co_l matches 0 if score @s co_r matches 1 run scoreboard players set @s co_actor_rotation 45
execute if score @s co_f matches 0 if score @s co_b matches 0 if score @s co_l matches 0 if score @s co_r matches 1 run scoreboard players set @s co_actor_rotation 90

execute if score @s co_b matches 1 if score @s co_l matches 0 if score @s co_r matches 1 run scoreboard players set @s co_actor_rotation 135
execute if score @s co_b matches 1 if score @s co_l matches 0 if score @s co_r matches 0 run scoreboard players set @s co_actor_rotation 180
execute if score @s co_b matches 1 if score @s co_l matches 1 run scoreboard players set @s co_actor_rotation 225

execute if score @s co_f matches 0 if score @s co_b matches 0 if score @s co_l matches 1 run scoreboard players set @s co_actor_rotation 270
execute if score @s co_f matches 1 if score @s co_b matches 0 if score @s co_l matches 1 run scoreboard players set @s co_actor_rotation 315

# write to storage and apply to child armor stands
execute store result storage cccc:actor root.actor_final_rotation float 1 run scoreboard players get @s co_actor_rotation 

# DEBUG
scoreboard players add #rotation_buffer co_math 1
$execute if score #rotation_buffer co_math matches 2 as $(actor_temp) run function crass:interface/as_child {command:"data modify entity @s Rotation[0] set from storage cccc:actor root.actor_final_rotation"}
execute if score #rotation_buffer co_math matches 2 run scoreboard players set #rotation_buffer co_math 0
