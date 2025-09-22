# clear then pull in
data remove storage crass:storage root.temp.message
$data modify storage crass:storage root.temp.printed_storage set value "$(storage)"
$data modify storage crass:storage root.temp.message set from storage $(storage)

execute if data storage crass:storage root.temp.message run function crass:storage/print_storage_helper with storage crass:storage root.temp
$execute unless data storage crass:storage root.temp.message run say $(storage) is empty

