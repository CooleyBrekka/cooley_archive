# have each child armor stand piece run the function
function gu:generate
function cooley:animation/statue/get_children with storage gu:main
$data modify storage cooley:statue root.temp_child.command set value "$(command)"

function cooley:animation/statue/as_child with storage cooley:statue root.temp_child

