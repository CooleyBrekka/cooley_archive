# marks the object to be deleted during the next tick and stops it from taking any actions
#$data modify storage cooley:statue root.$(uuid).timeline_$(timeline)_object.duration set value 0
$scoreboard players set $(uuid)_$(timeline) co_duration 0
