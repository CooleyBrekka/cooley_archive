kill @e[type=interaction,tag=co_music_box]
summon interaction -588 0 -131 {Tags:["co_music_box"],width:1.05f,height:1.05f}

# clear the playlist
data remove storage cooley:music root.playlist

function cooley:music/map/add_to_playlist {music:"dx1000"}
function cooley:music/map/add_to_playlist {music:"hats"}
function cooley:music/map/add_to_playlist {music:"steel"}

