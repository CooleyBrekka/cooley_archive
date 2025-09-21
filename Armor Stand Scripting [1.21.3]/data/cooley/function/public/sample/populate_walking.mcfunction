# run setup functions on the new statue
$execute as $(marker) run function cooley:public/sample/event/walk_cycle1
$execute as $(marker) run function cooley:public/sample/event/torso_idle

# save uuid
$data modify storage cooley:sample root.boss.uuid append value "$(marker)"

