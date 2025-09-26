# get relevant camera info
function gu:generate
function cccc:camera/get_camera with storage gu:main

function cccc:camera/loop with storage cccc:camera root

# topdown movement
execute as @s[tag=co_topdown_mode] run function cccc:input/loop
