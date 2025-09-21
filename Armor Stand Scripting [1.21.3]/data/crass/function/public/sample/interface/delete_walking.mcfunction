# grab the first uuid from the storage and feed it into the despawner
data modify storage crass:sample root.temp.uuid set from storage crass:sample root.boss.uuid[0]
data remove storage crass:sample root.boss.uuid[0]
function crass:interface/despawn_uuid with storage crass:sample root.temp

