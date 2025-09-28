data modify storage cooley:temp root.curr_track set value ""
data modify storage cooley:temp root.curr_track set from storage cooley:temp music
$data modify storage cooley:temp root.next_track set value $(music)

execute store result storage cooley:temp root.dont_match int 1 run data modify storage cooley:temp root.curr_track set from storage cooley:temp root.next_track
$execute if data storage cooley:temp {root:{dont_match:1}} run function cooley:music/play {music:"$(music)"}
