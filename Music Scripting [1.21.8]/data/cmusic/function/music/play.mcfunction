function cooley:music/end
scoreboard players set #playing co_music 1

$data modify storage cooley:temp music set value "$(music)"

$data modify storage cooley:temp root.play_macro.music set value "$(music)"
data modify storage cooley:temp root.play_macro.volume set value 1

function cooley:music/custom/volume
function cooley:music/custom/length

function cooley:music/play_macro with storage cooley:temp root.play_macro



