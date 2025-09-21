# write this actor's uuid and timeline to temp storage
function gu:generate
data modify storage cooley:statue root.temp_stop.uuid set from storage gu:main out
$data modify storage cooley:statue root.temp_stop.timeline set value "$(timeline)"

# repackage this into a uuid call because it's a scoreboard lookup
function cooley:interface/stop_action_uuid with storage cooley:statue root.temp_stop
