function barlog:world/text/actors/name

# grab the text
data modify storage cooley:text root.print.text set from storage cooley:text root.currline.text
data modify storage cooley:text root.print.comp set from storage cooley:text root.currline.comp

execute if data storage cooley:text {root:{currline:{prompt:0}}} run data modify storage cooley:text root.print.prompt set value ""
execute if data storage cooley:text {root:{currline:{prompt:1}}} run data modify storage cooley:text root.print.prompt set value ",{\"color\":\"aqua\",\"text\":\" [\"},{\"color\":\"aqua\",\"keybind\":\"key.sprint\"},{\"color\":\"aqua\",\"text\":\"]\"}"
execute if data storage cooley:text {root:{currline:{prompt:2}}} run data modify storage cooley:text root.print.prompt set value ",{\"color\":\"aqua\",\"text\":\" [Press \"},{\"color\":\"aqua\",\"keybind\":\"key.sprint\"},{\"color\":\"aqua\",\"text\":\" to continue]\"}"


# run print to actionbar
execute if data storage cooley:text {root:{currline:{actor:"player"}}} run function barlog:world/text/actionbar_print_player with storage cooley:text root.print
execute unless data storage cooley:text {root:{currline:{actor:"player"}}} run function barlog:world/text/actionbar_print with storage cooley:text root.print



