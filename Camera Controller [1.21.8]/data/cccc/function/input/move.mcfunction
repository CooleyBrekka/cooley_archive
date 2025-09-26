# overrides: back and left <V

####
$execute as $(actor_temp) run function crass:interface/as_child {command:"execute rotated $(actor_final_rotation) 0 run tp @s ^ ^ ^0.2"}
$execute as $(actor_temp) at @s rotated $(actor_final_rotation) 0 run tp @s ^ ^ ^0.2
$execute as $(camera_temp) at @s rotated $(actor_final_rotation) 0 run tp @s ^ ^ ^0.2
