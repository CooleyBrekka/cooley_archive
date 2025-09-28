$scoreboard players set #complex co_math $(comp)

execute if score #complex co_math matches 0 run function barlog:world/text/actionbar_print_simple with storage cooley:text root.print
execute if score #complex co_math matches 1 run function barlog:world/text/actionbar_print_comp with storage cooley:text root.print


