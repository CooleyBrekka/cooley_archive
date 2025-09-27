# keyframe:
# transition (instant/lerp)
# final position 

# copy to move convenient location
$data modify storage cccc:keyframe root.current set from storage cccc:camera root.timelines.$(out).active_keyframe
execute unless data storage cccc:keyframe root.current.transition run data modify storage cccc:keyframe root.current.transition set value "lerp"
execute unless data storage cccc:keyframe root.current.x run data modify storage cccc:keyframe root.current.transition set value "lerp"

