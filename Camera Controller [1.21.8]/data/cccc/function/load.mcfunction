forceload add 0 0
function cccc:input/load

data modify storage cccc:topdown root.camera_offset set value "^ ^4.5 ^-2.65"

scoreboard objectives add co_actor_rotation dummy
scoreboard objectives add co_f dummy
scoreboard objectives add co_b dummy
scoreboard objectives add co_r dummy
scoreboard objectives add co_l dummy

