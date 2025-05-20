# payload of information for the armor stand
data modify storage cooley:statue root merge value {Rotation:[0.0f,0.0f],position:"0.5 -60.0 0.5",clothes:"player_head_leather_armor",hands:2,pose:"default_gravity"}
# request creation of armor stand
function cooley:interface/create_statue

# use cooley:statue root.new.marker to reference the newly created statue
# tip: saving this uuid makes it easier to reference it in the future
function cooley:public/sample/populate_walking with storage cooley:statue root.new


