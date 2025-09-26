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

