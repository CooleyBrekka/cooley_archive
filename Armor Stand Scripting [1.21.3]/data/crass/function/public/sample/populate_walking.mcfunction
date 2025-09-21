# run setup functions on the new statue
$execute as $(marker) run function crass:public/sample/event/walk_cycle1
$execute as $(marker) run function crass:public/sample/event/torso_idle

# save uuid
$data modify storage crass:sample root.boss.uuid append value "$(marker)"

