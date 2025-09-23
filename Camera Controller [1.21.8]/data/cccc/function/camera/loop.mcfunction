# cap to only one actor per player
function gu:generate
function cccc:camera/check_player_camera with storage gu:main

# topdown mode handle
function gu:generate
execute as @s[tag=co_topdown_mode] run function cccc:camera/get_camera with storage gu:main
execute as @s[tag=co_topdown_mode] run function cccc:camera/spectate_camera with storage cccc:camera root


