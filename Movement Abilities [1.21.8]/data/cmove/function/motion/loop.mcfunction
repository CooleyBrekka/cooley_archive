# jump input
scoreboard players operation #jump_input_prev co_math = #jump_input co_math
scoreboard players set #jump_input co_math 0
execute if predicate cooley:jump_input run scoreboard players set #jump_input co_math 1

# sneak input
scoreboard players operation #sneak_input_prev co_math = #sneak_input co_math
scoreboard players set #sneak_input co_math 0
execute if predicate cooley:sneak_input run scoreboard players set #sneak_input co_math 1

# sprint input
scoreboard players operation #sprint_input_prev co_math = #sprint_input co_math
scoreboard players set #sprint_input co_math 0
execute if predicate cooley:sprint_input run scoreboard players set #sprint_input co_math 1

# on ground
scoreboard players operation #on_ground_prev co_math = #on_ground co_math
scoreboard players set #on_ground co_math 0
execute if predicate cooley:on_ground run scoreboard players set #on_ground co_math 1

# grounded
execute if predicate cooley:on_ground run function cooley:motion/grounded

# calculate custom velocity
function cooley:motion/velocity/calc

# dash fix
execute as @n[tag=dash_fixer] at @s if entity @p[distance=..0.25] as @p at @s run function cooley:motion/dash/fix
kill @e[tag=dash_fixer]

# double jump on jump input and not grounded last tick
execute as @s[gamemode=adventure] if score #jump_input co_math matches 1 if score #jump_input_prev co_math matches 0 if score #on_ground_prev co_math matches 0 run function cooley:motion/double_jump/input

# dash on dash input
execute as @s[gamemode=adventure] if score #sneak_input co_math matches 1 if score #sneak_input_prev co_math matches 0 run function cooley:motion/dash/input


