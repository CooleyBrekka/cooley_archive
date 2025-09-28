$execute as @p at @s run playsound minecraft:music.$(music) record @s ~ ~ ~ $(volume) 1 1 
$data modify storage cmusic:temp music set value "$(music)"


