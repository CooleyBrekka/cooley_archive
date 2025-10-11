# keyframe:

# copy over
data modify storage cccc:keyframe root.current set from storage cccc:keyframe new

# push defaults
execute unless data storage cccc:keyframe root.current.transition run data modify storage cccc:keyframe root.current.transition set value "lerp"
execute unless data storage cccc:keyframe root.current.exit run data modify storage cccc:keyframe root.current.exit set value "end"
execute unless data storage cccc:keyframe root.current.fsm run data modify storage cccc:keyframe root.current.fsm set value "none"

execute unless data storage cccc:keyframe root.current.pos run data modify storage cccc:keyframe root.current.pos set value "0 -60 0"
execute unless data storage cccc:keyframe root.current.rot run data modify storage cccc:keyframe root.current.rot set value "0, 0"

execute unless data storage cccc:keyframe root.current.duration run data modify storage cccc:keyframe root.current.pos set value 20
execute unless data storage cccc:keyframe root.current.timer run data modify storage cccc:keyframe root.current.timer set value 0


# push to player uuid
function gu:generate
function cccc:camera/timeline/add_to_player with storage gu:main


