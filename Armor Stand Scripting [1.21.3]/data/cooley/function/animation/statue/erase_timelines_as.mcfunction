# write uuid to temp storage
function gu:generate
data modify storage cooley:statue root.temp_stop.uuid set from storage gu:main out

function cooley:animation/statue/erase_timelines_uuid with storage cooley:statue root.temp_stop



