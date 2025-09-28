scoreboard objectives add co_math dummy
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

scoreboard objectives add co_music dummy

scoreboard objectives add co_run_counter dummy
scoreboard objectives add co_last_reset_run dummy

scoreboard objectives add co_eating dummy
scoreboard objectives add co_eating_prev dummy
scoreboard objectives add co_menu_delay dummy
scoreboard objectives add co_dev_menu trigger

scoreboard objectives add co_deaths deathCount
scoreboard objectives add co_damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add co_rally_proc minecraft.custom:minecraft.damage_taken
scoreboard objectives add co_rally_hit minecraft.custom:minecraft.damage_dealt


# angle calculator
# 00030dc6-0-0-0-7
forceload add 0 0
summon marker 8 1000 8 {UUID:[I;200134,0,0,7]}

# hit detection
scoreboard objectives add co_damage minecraft.custom:damage_dealt
gamerule doEntityDrops false
gamerule doMobLoot false

# nocollision teams
team add nocol "nocol"
team modify nocol collisionRule never

team add red "red"
team modify red collisionRule never
team modify red color red

team add white "white"
team modify white collisionRule never
team modify white color white


