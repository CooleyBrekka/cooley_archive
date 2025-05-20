# write the animation block to a temp while we figure out the entity's uuid
$data modify storage cooley:statue root.temp_block set from storage $(storage)
function gu:generate
data modify storage cooley:statue root.temp.uuid set from storage gu:main out
$data modify storage cooley:statue root.temp.timeline_id set value "$(timeline)"

# push the animation block to the marker's uuid storage
function cooley:animation/timeline/push_to_uuid with storage cooley:statue root.temp

