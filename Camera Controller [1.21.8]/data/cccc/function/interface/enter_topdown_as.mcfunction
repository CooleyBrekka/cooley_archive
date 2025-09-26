# check for crass
execute store success score #crass_loaded co_math run function crass:validate
execute if score #crass_loaded co_math matches 0 run tellraw @a [{"text":"crass not installed! Topdown Mode will not function!","color":"#D03030"}]
execute if score #crass_loaded co_math matches 0 run return 1

# cap to only one actor per player
function gu:generate
function cccc:topdown/check_player_actor with storage gu:main


