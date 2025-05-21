#execute at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
#scoreboard players set @s co_send 2
#execute at @s unless entity @p[distance=..1] run function motion:motion/push

# doesn't seem to be a performance diff here
execute at @s unless entity @p[distance=..1] facing entity @p feet run tp @s ^ ^ ^0.2 ~ ~



