# put the stored uuid into the chipper
$function crass:interface/despawn_uuid with storage cccc:actor root.$(out)

# clear the path to allow entry again
$data remove storage cccc:actor root.$(out)

