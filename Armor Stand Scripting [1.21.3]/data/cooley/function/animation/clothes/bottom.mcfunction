item replace entity @s armor.chest with air
item replace entity @s armor.head with air

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air


execute if score #custom_resources co_math matches 1 run data merge entity @s {Invisible:1b}
