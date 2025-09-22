# this function minimizes the distances between old value and new value pairs

#function crass:animation/timeline/process/direction/helper/all_debug

# pull out values into scoreboards
execute store result score #dir_old_0 co_math run data get storage crass:statue root.direction_override.direction_old_values[0]
execute store result score #dir_old_1 co_math run data get storage crass:statue root.direction_override.direction_old_values[1]
execute store result score #dir_old_2 co_math run data get storage crass:statue root.direction_override.direction_old_values[2]

execute store result score #dir_new_0 co_math run data get storage crass:statue root.direction_override.direction_new_values[0]
execute store result score #dir_new_1 co_math run data get storage crass:statue root.direction_override.direction_new_values[1]
execute store result score #dir_new_2 co_math run data get storage crass:statue root.direction_override.direction_new_values[2]

# recursively fix the values
function crass:animation/timeline/process/direction/helper/nearest_recursion_add {val:0}
function crass:animation/timeline/process/direction/helper/nearest_recursion_subtract {val:0}
function crass:animation/timeline/process/direction/helper/nearest_recursion_add {val:1}
function crass:animation/timeline/process/direction/helper/nearest_recursion_subtract {val:1}
function crass:animation/timeline/process/direction/helper/nearest_recursion_add {val:2}
function crass:animation/timeline/process/direction/helper/nearest_recursion_subtract {val:2}

# put the values back into storage
execute store result storage crass:statue root.direction_override.direction_old_values[0] float 1 run scoreboard players get #dir_old_0 co_math
execute store result storage crass:statue root.direction_override.direction_old_values[1] float 1 run scoreboard players get #dir_old_1 co_math
execute store result storage crass:statue root.direction_override.direction_old_values[2] float 1 run scoreboard players get #dir_old_2 co_math

execute store result storage crass:statue root.direction_override.direction_new_values[0] float 1 run scoreboard players get #dir_new_0 co_math
execute store result storage crass:statue root.direction_override.direction_new_values[1] float 1 run scoreboard players get #dir_new_1 co_math
execute store result storage crass:statue root.direction_override.direction_new_values[2] float 1 run scoreboard players get #dir_new_2 co_math


