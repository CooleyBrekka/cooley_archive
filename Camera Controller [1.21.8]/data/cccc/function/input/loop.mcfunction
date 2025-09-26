# read coco inputs to rotate and move stands
function cccc:input/get_direction with storage cccc:camera root

# if any input is made
scoreboard players set co_making_input co_math 0
scoreboard players operation co_making_input co_math += @s co_right_input
scoreboard players operation co_making_input co_math += @s co_left_input
scoreboard players operation co_making_input co_math += @s co_forward_input
scoreboard players operation co_making_input co_math += @s co_backward_input
execute if score co_making_input co_math matches 1.. run function cccc:input/move with storage cccc:camera root



