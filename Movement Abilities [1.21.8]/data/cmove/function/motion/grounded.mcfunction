# jump helmet
execute if data entity @s equipment.head.components."minecraft:custom_data".jump_equipment run scoreboard players set #double_jump_charge co_math 1
execute unless data entity @s equipment.head.components."minecraft:custom_data".jump_equipment run scoreboard players set #double_jump_charge co_math 0

# dash boots
execute if data entity @s equipment.feet.components."minecraft:custom_data".dash_equipment unless items entity @s armor.* *[minecraft:custom_data~{everflower_incense:1}] run scoreboard players set #dash_charge co_math 1
execute if data entity @s equipment.feet.components."minecraft:custom_data".dash_equipment if items entity @s armor.* *[minecraft:custom_data~{everflower_incense:1}] run scoreboard players set #dash_charge co_math 2

execute unless data entity @s equipment.feet.components."minecraft:custom_data".dash_equipment run scoreboard players set #dash_charge co_math 0

