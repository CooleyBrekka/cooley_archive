# push in the next line if there is one
execute if data storage cooley:text root.lines[0] run data modify storage cooley:text root.currline set from storage cooley:text root.lines[0]

# get the actor "voiceline"
execute if data storage cooley:text root.lines[0] run data modify storage cooley:text root.temp_actor set from storage cooley:text root.lines[0].actor
function barlog:world/text/actors/voiceline

# run the attached function
execute if data storage cooley:text root.lines[0] run function barlog:world/text/function with storage cooley:text root.lines[0]

# get a default
execute unless data storage cooley:text root.lines[0] run data remove storage cooley:text root.currline

# toss out the queued line
data remove storage cooley:text root.lines[0]

scoreboard players set @s barlog_timer 0

