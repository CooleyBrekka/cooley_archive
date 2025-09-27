# out is the player uuid
$execute unless data storage cccc:camera root.$(out).skeleton run function cccc:camera/create {out:"$(out)"}
$data modify storage cccc:camera root.$(out).out set value "$(out)"

# if storage is filled, check if it actually exists
$execute if data storage cccc:camera root.$(out).skeleton run function cccc:camera/check_player_skeleton with storage cccc:camera root.$(out)

