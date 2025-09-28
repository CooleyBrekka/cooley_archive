function cmusic:music/end
scoreboard players set #playing co_music 1

$data modify storage cmusic:temp music set value "$(music)"

$data modify storage cmusic:temp root.play_macro.music set value "$(music)"
data modify storage cmusic:temp root.play_macro.volume set value 1

function cmusic:music/custom/volume
function cmusic:music/custom/length

function cmusic:music/play_macro with storage cmusic:temp root.play_macro



