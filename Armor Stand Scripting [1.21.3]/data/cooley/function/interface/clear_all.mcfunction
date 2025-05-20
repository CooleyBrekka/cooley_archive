# erase statues
function cooley:interface/despawn_all

# clear storage after auxiliary actions are done
data remove storage cooley:storage root
data remove storage cooley:statue root
data remove storage cooley:sample root

# re-init necessary vars
function cooley:storage/init

