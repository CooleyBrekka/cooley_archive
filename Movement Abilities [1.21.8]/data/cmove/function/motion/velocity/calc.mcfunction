# store previous position and get new position
data modify storage cooley:motion root.fake_velocity.Pos_prev set from storage cooley:motion root.fake_velocity.Pos
data modify storage cooley:motion root.fake_velocity.Pos set value [0.0d,0.0d,0.0d]
execute store result storage cooley:motion root.fake_velocity.Pos[0] double 1.0 run data get entity @s Pos[0] 10000.0
execute store result storage cooley:motion root.fake_velocity.Pos[1] double 1.0 run data get entity @s Pos[1] 10000.0
execute store result storage cooley:motion root.fake_velocity.Pos[2] double 1.0 run data get entity @s Pos[2] 10000.0

# read data into scores
execute store result score #pos_x co_math run data get storage cooley:motion root.fake_velocity.Pos[0]
execute store result score #pos_y co_math run data get storage cooley:motion root.fake_velocity.Pos[1]
execute store result score #pos_z co_math run data get storage cooley:motion root.fake_velocity.Pos[2]
execute store result score #pos_x_prev co_math run data get storage cooley:motion root.fake_velocity.Pos_prev[0]
execute store result score #pos_y_prev co_math run data get storage cooley:motion root.fake_velocity.Pos_prev[1]
execute store result score #pos_z_prev co_math run data get storage cooley:motion root.fake_velocity.Pos_prev[2]

# calculate delta
scoreboard players operation #pos_x co_math -= #pos_x_prev co_math
scoreboard players operation #pos_y co_math -= #pos_y_prev co_math
scoreboard players operation #pos_z co_math -= #pos_z_prev co_math


# write to motion
data modify storage cooley:motion root.fake_velocity.Motion set value [0.0d,0.0d,0.0d]
execute store result storage cooley:motion root.fake_velocity.Motion[0] double 0.0001 run scoreboard players get #pos_x co_math
execute store result storage cooley:motion root.fake_velocity.Motion[1] double 0.0001 run scoreboard players get #pos_y co_math
execute store result storage cooley:motion root.fake_velocity.Motion[2] double 0.0001 run scoreboard players get #pos_z co_math

#tellraw @a [{"score":{"name":"#pos_x","objective":"co_math"}}]
#tellraw @a [{"score":{"name":"#pos_x_prev","objective":"co_math"}}]

#tellraw @a ""
#function cooley:storage/print_storage {storage:"cooley:motion root.fake_velocity.Pos"}
#function cooley:storage/print_storage {storage:"cooley:motion root.fake_velocity.Pos_prev"}
#function cooley:storage/print_storage {storage:"cooley:motion root.fake_velocity.Motion"}



