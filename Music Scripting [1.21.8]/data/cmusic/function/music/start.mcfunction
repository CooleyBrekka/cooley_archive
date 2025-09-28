data modify storage cmusic:temp root.curr_track set value ""
data modify storage cmusic:temp root.curr_track set from storage cmusic:temp music
$data modify storage cmusic:temp root.next_track set value $(music)

execute store result storage cmusic:temp root.dont_match int 1 run data modify storage cmusic:temp root.curr_track set from storage cmusic:temp root.next_track
$execute if data storage cmusic:temp {root:{dont_match:1}} run function cmusic:music/play {music:"$(music)"}


