# process one trackable predicate
$scoreboard players operation @s co_$(action)_input_prev = @s co_$(action)_input
$scoreboard players set @s co_$(action)_input 0
$execute if predicate cccc:$(action)_input run scoreboard players set @s co_$(action)_input 1

# whether it was pressed this tick
$scoreboard players set @s co_$(action)_input_this_tick 0
$execute if score @s co_$(action)_input_prev matches 0 if score @s co_$(action)_input matches 1 run scoreboard players set @s co_$(action)_input_this_tick 1

# debug
#$execute if score @s co_$(action)_input_this_tick matches 1 run say $(action) pressed

