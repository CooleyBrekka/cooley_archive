# clear then pull in
data remove storage coco:storage root.temp.message
$data modify storage coco:storage root.temp.printed_storage set value "$(storage)"
$data modify storage coco:storage root.temp.message set from storage $(storage)

execute if data storage coco:storage root.temp.message run function coco:storage/print_storage_helper with storage coco:storage root.temp
$execute unless data storage coco:storage root.temp.message run say $(storage) is empty

