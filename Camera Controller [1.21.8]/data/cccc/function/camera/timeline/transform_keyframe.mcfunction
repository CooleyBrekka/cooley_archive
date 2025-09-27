# start and end keyframes
$execute positioned $(pos) run summon armor_stand ~ ~ ~ {Tags:["cccc_keyframe_transform_end"],Rotation:[$(rot)]}
summon armor_stand ~ ~ ~ {Tags:["cccc_keyframe_transform_start"]}
data modify entity @e[tag=cccc_keyframe_transform_start,limit=1] Rotation set from entity @s Rotation
