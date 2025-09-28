# get player's existing vertical speed 
execute store result storage cooley:motion root.double_jump.vertical_speed double 1.0 run data get storage cooley:motion root.fake_velocity.Motion[1] 10000.0
execute store result score #player_vertical co_math run data get storage cooley:motion root.double_jump.vertical_speed

# calculate necessary additional vertical speed
scoreboard players set #player_final co_math 2250
scoreboard players operation #player_final co_math -= #player_vertical co_math

# apply motion
scoreboard players operation $strength player_motion.api.launch = #player_final co_math
execute at @s rotated 0 -90 run function player_motion:api/launch_looking

# apply horizontal speed
scoreboard players set $strength player_motion.api.launch 6500
execute at @s rotated as @s rotated ~ 0 run function player_motion:api/launch_looking

# fix bad dashes
#say attempting dash fix

