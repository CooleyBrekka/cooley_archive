# prevent late double jump
execute at @s unless block ~ ~-0.5 ~ #bb:can_raycast run return 1

# get player's existing vertical speed 
execute store result storage cooley:motion root.double_jump.vertical_speed double 1.0 run data get storage cooley:motion root.fake_velocity.Motion[1] 10000.0
execute store result score #player_vertical co_math run data get storage cooley:motion root.double_jump.vertical_speed

# calculate necessary additional motion
scoreboard players set #player_final co_math 8850
scoreboard players operation #player_final co_math -= #player_vertical co_math

# apply motion
scoreboard players operation $strength player_motion.api.launch = #player_final co_math
execute at @s rotated 0 -90 run function player_motion:api/launch_looking

# effects
execute at @s run particle cloud ~ ~ ~ 0.2 0.1 0.2 0 10
scoreboard players remove #double_jump_charge co_math 1

# sfx
execute at @s run playsound minecraft:entity.breeze.land player @s ~ ~ ~ 3 0.8

scoreboard players set #evelyns_badge_loop co_math 40
