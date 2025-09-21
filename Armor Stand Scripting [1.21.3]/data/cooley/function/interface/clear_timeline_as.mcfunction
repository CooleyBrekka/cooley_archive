# run as the actor to clear its timeline
# this does not trigger exit effects
function gu:generate
data modify storage cooley:combat root.stagger.uuid set from storage gu:main out
$data modify storage cooley:combat root.stagger.timeline set value $(timeline)

function cooley:animation/statue/erase_timeline_uuid_compile with storage cooley:combat root.stagger
