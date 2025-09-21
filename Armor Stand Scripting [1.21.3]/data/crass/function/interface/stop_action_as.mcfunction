# write this actor's uuid and timeline to temp storage
function gu:generate
data modify storage crass:statue root.temp_stop.uuid set from storage gu:main out
$data modify storage crass:statue root.temp_stop.timeline set value "$(timeline)"

# repackage this into a uuid call because it's a scoreboard lookup
function crass:interface/stop_action_uuid with storage crass:statue root.temp_stop
