# wipe
$data remove storage cccc:camera root.timelines.$(out).active_keyframe

# pull next keyframe into active slot
$data modify storage cccc:camera root.timelines.$(out).active_keyframe set from storage cccc:camera root.timelines.$(out).timeline[0]

# remove the next keyframe from queue
$data remove storage cccc:camera root.timelines.$(out).timeline[0]
