scoreboard objectives add co_math dummy
scoreboard objectives add co_current_time dummy
scoreboard objectives add co_duration dummy

scoreboard objectives add barlog_timer dummy

# check for coco
execute store success score #coco_loaded co_math run function coco:validate
execute if score #coco_loaded co_math matches 0 run tellraw @a [{"text":"coco not installed! Actionbar Dialogue will not function!","color":"#D03030"}]



