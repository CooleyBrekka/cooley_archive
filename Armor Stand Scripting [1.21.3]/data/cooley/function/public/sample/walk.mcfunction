#scoreboard players set @s co_send 7
#function motion:motion/push

# kinda janky, testing this as a performance fix
# maybe don't advertise this as a basic enemy library? message marketing dept. about this
execute at @s unless entity @p[distance=..1] facing entity @p feet run tp @s ^ ^ ^0.2 ~ ~



