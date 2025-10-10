$execute as @s[gamemode=creative] run data modify storage cccc:camera root.timelines.$(out).gamemode set value "creative"
$execute as @s[gamemode=survival] run data modify storage cccc:camera root.timelines.$(out).gamemode set value "survival"
$execute as @s[gamemode=adventure] run data modify storage cccc:camera root.timelines.$(out).gamemode set value "adventure"
$execute as @s[gamemode=spectator] run data modify storage cccc:camera root.timelines.$(out).gamemode set value "spectator"



