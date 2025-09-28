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

# effects
execute at @s run particle cloud ~ ~ ~ 0.2 0.1 0.2 0 10
scoreboard players remove #dash_charge co_math 1

# sfx
execute at @s run playsound minecraft:entity.breeze.land player @s ~ ~ ~ 3 1.2

execute at @s run summon marker ~ ~ ~ {Tags:["dash_fixer"]}

scoreboard players set #evelyns_badge_loop co_math 40
