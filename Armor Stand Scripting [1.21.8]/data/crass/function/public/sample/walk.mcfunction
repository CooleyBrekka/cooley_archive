# move towards player if far away
execute at @s unless entity @p[distance=..2.8] facing entity @p feet run tp @s ^ ^ ^0.2 ~ ~
execute at @s if entity @p[distance=..2.8] facing entity @p feet run tp @s ^ ^ ^ ~ ~



