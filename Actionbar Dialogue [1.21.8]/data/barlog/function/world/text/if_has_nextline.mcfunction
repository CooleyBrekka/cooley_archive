# push next line
data modify storage cooley:text root.currline set from storage cooley:text root.lines[0]

# get the actor "voiceline"
data modify storage cooley:text root.temp_actor set from storage cooley:text root.lines[0].actor
function barlog:world/text/actors/voiceline

# run the attached function
function barlog:world/text/function with storage cooley:text root.lines[0]

