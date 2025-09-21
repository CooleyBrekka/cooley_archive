# data modify rotation is the cleanest way i think
data modify entity @s Rotation set from storage crass:statue root.Rotation

# add pose
$execute at @s rotated as @s run function crass:animation/statue/pose/$(pose)

# add clothes
$function crass:public/clothes/outfits/$(clothes)
execute as @s[tag=co_top] run function crass:animation/clothes/top
execute as @s[tag=co_bottom] run function crass:animation/clothes/bottom
$execute as @s[tag=co_hands] run function crass:animation/clothes/hands {hands:"$(hands)"}





