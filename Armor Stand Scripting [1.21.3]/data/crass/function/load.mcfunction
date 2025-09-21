scoreboard objectives add co_math dummy

# some of these are bsp holdovers TODO remove
scoreboard objectives add co_current_time dummy
scoreboard objectives add co_duration dummy
scoreboard players set 10000 co_math 10000
scoreboard players set 20000 co_math 20000
scoreboard players set 1000 co_math 1000
scoreboard players set 100 co_math 100
scoreboard players set 398 co_math 398

scoreboard players set 20 co_math 20
scoreboard players set 60 co_math 60
scoreboard players set 10 co_math 10
scoreboard players set 9 co_math 9
scoreboard players set 8 co_math 8
scoreboard players set 7 co_math 7
scoreboard players set 6 co_math 6
scoreboard players set 5 co_math 5
scoreboard players set 4 co_math 4
scoreboard players set 3 co_math 3
scoreboard players set 2 co_math 2
scoreboard players set 1 co_math 1

# angle calculator
# 00030dc6-0-0-0-7
forceload add 0 0
summon marker 8 1000 8 {UUID:[I;200134,0,0,7]}

function crass:storage/init

# check for gu
data remove storage gu:main hex_chars
function gu:zzz/load
execute unless data storage gu:main hex_chars run tellraw @a [{"text":"gu not installed! Armor Stand Scripting will not function!","color":"#D03030"}]




