# get the next line

# if pressing next
execute if score @s co_sprint_input_this_tick matches 1 run function barlog:world/text/next

# if no currline but there's a next
execute unless data storage cooley:text root.currline if data storage cooley:text root.lines[0] run function barlog:world/text/next

# if there's a line to show, display actionbar
execute if data storage cooley:text root.currline run function barlog:world/text/actionbar
# hide actionbar
execute if score @s barlog_timer matches 2 unless data storage cooley:text root.currline run title @a actionbar ""
scoreboard players add @s barlog_timer 1

# check collider triggers
function barlog:world/text/actors/trigger



