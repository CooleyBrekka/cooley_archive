forceload add 0 0

data modify storage cccc:topdown root.camera_offset set value "^ ^4.5 ^-2.65"

scoreboard objectives add co_actor_rotation dummy
scoreboard objectives add co_f dummy
scoreboard objectives add co_b dummy
scoreboard objectives add co_r dummy
scoreboard objectives add co_l dummy

# check for coco
execute store success score #coco_loaded co_math run function coco:validate
execute if score #coco_loaded co_math matches 0 run tellraw @a [{"text":"coco not installed! Camera Controller will not function!","color":"#D03030"}]


