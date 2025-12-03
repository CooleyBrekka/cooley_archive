# create a camera and bind it to the player
execute at @s run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Silent:1b,NoGravity:1b,NoAI:1b,Tags:["co_unclaimed_camera","co_camera"],Invulnerable:1b,active_effects:[{id:invisibility,duration:1000000000,show_particles:false}]}
execute as @n[tag=co_unclaimed_camera] run function gu:generate
$execute as @n[tag=co_unclaimed_camera] run data modify storage cccc:camera root.$(out).skeleton set from storage gu:main out

execute as @n[tag=co_unclaimed_camera] run tag @s remove co_unclaimed_camera



