# sample
execute if score #text_sample co_math matches 0 positioned 23.54 -60.00 -6.37 if entity @p[distance=..4] run function barlog:world/text/trigger/sample_enter
execute if score #text_sample co_math matches 1 positioned 23.54 -60.00 -6.37 unless entity @p[distance=..6] run function barlog:world/text/trigger/sample_exit



