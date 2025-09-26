# erase statues
function crass:interface/despawn_all

# clear storage after auxiliary actions are done
data remove storage coco:storage root
data remove storage crass:statue root
data remove storage crass:sample root

# re-init necessary vars
function crass:storage/init

