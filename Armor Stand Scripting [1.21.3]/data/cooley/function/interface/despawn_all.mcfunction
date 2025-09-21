# despawn all actors, kill other despawnables
execute as @e[type=marker,tag=co_despawn] run function cooley:interface/despawn_as
execute as @e[type=!marker,tag=co_despawn] run kill @s


