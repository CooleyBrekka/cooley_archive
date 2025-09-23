# for each input, process it and store whether it was input this tick
function cccc:input/loop_one {action:"jump"}
function cccc:input/loop_one {action:"sprint"}
function cccc:input/loop_one {action:"sneak"}
function cccc:input/loop_one {action:"backward"}
function cccc:input/loop_one {action:"forward"}
function cccc:input/loop_one {action:"right"}
function cccc:input/loop_one {action:"left"}

# custom actions
$execute if score @s co_forward_input matches 1 as $(actor_temp) run function crass:interface/as_child {command:"tp @s ^ ^ ^0.2"}
$execute if score @s co_backward_input matches 1 as $(actor_temp) run function crass:interface/as_child {command:"tp @s ^ ^ ^-0.2"}
$execute if score @s co_left_input matches 1 as $(actor_temp) run function crass:interface/as_child {command:"tp @s ^0.2 ^ ^"}
$execute if score @s co_right_input matches 1 as $(actor_temp) run function crass:interface/as_child {command:"tp @s ^-0.2 ^ ^"}

$execute if score @s co_forward_input matches 1 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^0.2
$execute if score @s co_backward_input matches 1 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^ ^ ^-0.2
$execute if score @s co_left_input matches 1 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^0.2 ^ ^
$execute if score @s co_right_input matches 1 as $(camera_temp) at @s rotated as @s rotated ~ 0 run tp @s ^-0.2 ^ ^

$execute if score @s co_forward_input matches 1 as $(actor_temp) at @s rotated as @s run tp @s ^ ^ ^0.2
$execute if score @s co_backward_input matches 1 as $(actor_temp) at @s rotated as @s run tp @s ^ ^ ^-0.2
$execute if score @s co_left_input matches 1 as $(actor_temp) at @s rotated as @s run tp @s ^0.2 ^ ^
$execute if score @s co_right_input matches 1 as $(actor_temp) at @s rotated as @s run tp @s ^-0.2 ^ ^


