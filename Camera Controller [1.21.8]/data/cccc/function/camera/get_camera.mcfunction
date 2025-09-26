# temporarily grab uuids and other info for this player
$data modify storage cccc:camera root.camera_temp set from storage cccc:camera root.$(out).skeleton
$data modify storage cccc:camera root.actor_temp set from storage cccc:actor root.$(out).uuid
data modify storage cccc:camera root.camera_offset set from storage cccc:topdown root.camera_offset
data modify storage cccc:camera root.out set from storage gu:main out


