# grab the first uuid from the storage and feed it into the despawner
data modify storage cooley:sample root.temp.uuid set from storage cooley:sample root.boss.uuid[0]
data remove storage cooley:sample root.boss.uuid[0]
function cooley:interface/despawn_uuid with storage cooley:sample root.temp

