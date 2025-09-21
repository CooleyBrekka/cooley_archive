item replace entity @s armor.chest with air
item replace entity @s armor.head with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute if score #custom_resources co_math matches 1 run data merge entity @s {Invisible:1b}

# check for custom hand items
execute if score #custom_resources co_math matches 0 run item replace entity @s weapon.mainhand with air
execute if score #custom_resources co_math matches 0 run item replace entity @s weapon.offhand with air

# custom hand model
# 1214
#$execute if score #custom_resources co_math matches 1 run item replace entity @s weapon.mainhand with nautilus_shell[item_model="minecraft:h$(hands)"] 1
#$execute if score #custom_resources co_math matches 1 run item replace entity @s weapon.offhand with nautilus_shell[item_model="minecraft:h$(hands)"] 1
$execute if score #custom_resources co_math matches 1 run item replace entity @s weapon.mainhand with nautilus_shell[custom_model_data=$(hands)] 1
$execute if score #custom_resources co_math matches 1 run item replace entity @s weapon.offhand with nautilus_shell[custom_model_data=$(hands)] 1


