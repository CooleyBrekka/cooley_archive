#$tellraw @a "$(str)$(path)"

# get data from slot 0
data modify storage cooley:storage root.forloop_array.data set value {}
$data modify storage cooley:storage root.forloop_array.data.data set from storage $(str) $(path)[0]
#$say data modify storage cooley:storage root.forloop_array.data.data set from storage $(str) $(path)[0]

# if an element was found, run the command with the contents (use $(data))
$execute if data storage cooley:storage root.forloop_array.data.data run $(cmd) with storage cooley:storage root.forloop_array.data


# allows nested for loops be rewriting the data
data modify storage cooley:storage root.forloop_array.data set value {}
$data modify storage cooley:storage root.forloop_array.data.data set from storage $(str) $(path)[0]

# save element for later, remove it from array
$execute if data storage cooley:storage root.forloop_array.data.data run data modify storage cooley:storage root.forloop_array.data_storage$(path) append from storage cooley:storage root.forloop_array.data.data
$execute if data storage cooley:storage root.forloop_array.data.data run data remove storage $(str) $(path)[0]

# recurse
$execute if data storage cooley:storage root.forloop_array.data.data run function cooley:storage/forloop_array {str:"$(str)",path:"$(path)",cmd:"$(cmd)"}

# put elements back
# get the first element
data modify storage cooley:storage root.forloop_array.data set value {}
$data modify storage cooley:storage root.forloop_array.data.data set from storage cooley:storage root.forloop_array.data_storage$(path)[0]

# put it into original array
$execute if data storage cooley:storage root.forloop_array.data.data run data modify storage $(str) $(path) append from storage cooley:storage root.forloop_array.data.data
$execute if data storage cooley:storage root.forloop_array.data.data run data remove storage cooley:storage root.forloop_array.data_storage$(path)[0]

