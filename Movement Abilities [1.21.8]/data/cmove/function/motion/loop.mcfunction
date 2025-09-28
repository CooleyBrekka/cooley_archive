# grounded
execute if predicate cmove:on_ground run function cmove:motion/grounded

# calculate custom velocity
function cmove:motion/velocity/calc

# dash fix
execute as @n[tag=dash_fixer] at @s if entity @p[distance=..0.25] as @p at @s run function cmove:motion/dash/fix
kill @e[tag=dash_fixer]

# double jump on jump input and not grounded last tick
execute as @s[gamemode=!creative,gamemode=!spectator] if score @s co_jump_input_this_tick matches 1 run function cmove:motion/double_jump/input

# dash on dash input
execute as @s[gamemode=!creative,gamemode=!spectator] if score @s co_sneak_input_this_tick matches 1 run function cmove:motion/dash/input


