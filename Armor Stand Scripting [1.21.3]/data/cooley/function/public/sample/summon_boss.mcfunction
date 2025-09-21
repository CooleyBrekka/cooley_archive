# payload of information for the armor stand
data modify storage cooley:statue root merge value {position:"-2.26 -60.00 0.94",clothes:"player_head_leather_armor",hands:2,Rotation:[-90.0f,40.0f]}
# request creation of armor stand
function cooley:interface/create_statue

# use cooley:statue root.new.marker to reference the newly created statue
# tip: saving this uuid makes it easier to reference it in the future
function cooley:public/sample/populate_walking with storage cooley:statue root.new


