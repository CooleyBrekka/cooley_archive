# data modify to cooley:text root.value {}
# then call this function

# defaults for dialogue lines
data modify storage cooley:text root.temp set value {text:"none",actor:"none",prompt:1,fn:"none",comp:"0"}

# modify macro with given info
execute if data storage cooley:text root.value.text run data modify storage cooley:text root.temp.text set from storage cooley:text root.value.text
execute if data storage cooley:text root.value.actor run data modify storage cooley:text root.temp.actor set from storage cooley:text root.value.actor
execute if data storage cooley:text root.value.prompt run data modify storage cooley:text root.temp.prompt set from storage cooley:text root.value.prompt
execute if data storage cooley:text root.value.fn run data modify storage cooley:text root.temp.fn set from storage cooley:text root.value.fn
execute if data storage cooley:text root.value.comp run data modify storage cooley:text root.temp.comp set from storage cooley:text root.value.comp

# push to timeline
data modify storage cooley:text root.lines append from storage cooley:text root.temp

# clear temp storage
data remove storage cooley:text root.temp
data remove storage cooley:text root.value

