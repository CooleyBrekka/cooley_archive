# run functions if there is a next line
execute if data storage cooley:text root.lines[0] run function barlog:world/text/if_has_nextline

# get a default
execute unless data storage cooley:text root.lines[0] run data remove storage cooley:text root.currline

# toss out the queued line
data remove storage cooley:text root.lines[0]

scoreboard players set @s barlog_timer 0

