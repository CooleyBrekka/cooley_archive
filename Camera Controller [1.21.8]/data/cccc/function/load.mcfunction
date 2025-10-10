forceload add 0 0

# check for coco
execute store success score #coco_loaded co_math run function coco:validate
execute if score #coco_loaded co_math matches 0 run tellraw @a [{"text":"coco not installed! Camera Controller will not function!","color":"#D03030"}]

# check for gu
execute unless data storage gu:main hex_chars run tellraw @a [{"text":"gu not installed! Camera Controller will not function!","color":"#D03030"}]



