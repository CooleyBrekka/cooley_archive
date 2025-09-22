# not close enough
$scoreboard players operation #difference co_math = #dir_new_$(val) co_math 
$scoreboard players operation #difference co_math -= #dir_old_$(val) co_math 
$execute if score #difference co_math matches ..-180 run scoreboard players remove #dir_old_$(val) co_math 360

# go again
$execute if score #difference co_math matches ..-180 run function crass:animation/timeline/process/direction/helper/nearest_recursion_subtract {val:$(val)}

