# data modify rotation is the cleanest way i think
data modify entity @s Rotation set from storage cooley:statue root.Rotation

# add pose
$execute at @s rotated as @s run function cooley:animation/statue/pose/$(pose)

# add clothes
$function cooley:public/clothes/outfits/$(clothes)
execute as @s[tag=co_top] run function cooley:animation/clothes/top
execute as @s[tag=co_bottom] run function cooley:animation/clothes/bottom
$execute as @s[tag=co_hands] run function cooley:animation/clothes/hands {hands:"$(hands)"}





