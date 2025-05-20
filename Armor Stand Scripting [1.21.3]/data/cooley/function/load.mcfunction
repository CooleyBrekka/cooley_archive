scoreboard objectives add co_math dummy
scoreboard objectives add co_current_time dummy
scoreboard objectives add co_duration dummy
scoreboard players set 10000 co_math 10000
scoreboard players set 20000 co_math 20000
scoreboard players set 1000 co_math 1000

# angle calculator
# 00030dc6-0-0-0-7
forceload add 0 0
summon marker 8 1000 8 {UUID:[I;200134,0,0,7]}

function cooley:storage/init

# check for gu
data remove storage gu:main hex_chars
function gu:zzz/load
execute unless data storage gu:main hex_chars run tellraw @a [{"text":"gu not installed! Armor Stand Scripting will not function!","color":"#D03030"}]


