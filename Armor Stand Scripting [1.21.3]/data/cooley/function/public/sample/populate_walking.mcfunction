# run setup functions on the new statue
$execute as $(marker) run function cooley:public/sample/event/walk_cycle1
$execute as $(marker) run function cooley:public/sample/event/torso_idle

# save uuid for later
# systems that create an arbitrary number of statues will
# need a robust way of storing their uuids. adding to another array allows
# for sequential single deletes in this case
$data modify storage cooley:sample root.walking_statue.uuid append value "$(marker)"
