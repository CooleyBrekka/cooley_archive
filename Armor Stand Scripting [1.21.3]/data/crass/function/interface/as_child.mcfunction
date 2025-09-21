# have each child armor stand piece run the function
function gu:generate
function crass:animation/statue/get_children with storage gu:main
$data modify storage crass:statue root.temp_child.command set value "$(command)"

function crass:animation/statue/as_child with storage crass:statue root.temp_child

