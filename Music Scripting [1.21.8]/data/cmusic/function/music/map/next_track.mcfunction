# play first track, then push it back
data modify storage cooley:music root.selected.music set value "dx1000"
data modify storage cooley:music root.selected.music set from storage cooley:music root.playlist[0]
data remove storage cooley:music root.playlist[0]
data modify storage cooley:music root.playlist append from storage cooley:music root.selected.music

# play
function cooley:music/start with storage cooley:music root.selected

