# create a camera and bind it to the player
summon skeleton 0 -60 0 {Silent:1b,NoGravity:1b,NoAI:1b,Tags:["co_unclaimed_camera"],Invulnerable:1b,active_effects:[{id:invisibility,duration:1000000000,show_particles:false}]}
execute as @n[tag=co_unclaimed_camera] run function gu:generate
execute as @n[tag=co_unclaimed_camera] run tag @s remove co_unclaimed_camera

$data modify storage cccc:camera root.$(out).skeleton set from storage gu:main out
