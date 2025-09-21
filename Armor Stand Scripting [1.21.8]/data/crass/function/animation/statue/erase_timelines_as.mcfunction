# write uuid to temp storage
function gu:generate
data modify storage crass:statue root.temp_stop.uuid set from storage gu:main out

function crass:animation/statue/erase_timelines_uuid with storage crass:statue root.temp_stop



