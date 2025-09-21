# create three pieces for better range of motion 
# top, bottom, and hands
# hands used for optional resource pack
# top + hands / bottom distinction used for lying down poses

# 1214
$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned $(top_offset) run summon armor_stand ~ ~ ~ {NoGravity:$(NoGravity)b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["co_statue","co_top","co_statue_empty","co_despawn"]}
$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned $(bottom_offset) run summon armor_stand ~ ~ ~ {NoGravity:$(NoGravity)b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["co_statue","co_bottom","co_statue_empty","co_despawn"]}
$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned $(top_offset) run summon armor_stand ~ ~ ~ {NoGravity:$(NoGravity)b,Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["co_statue","co_hands","co_statue_empty","co_despawn"]}
#$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned $(top_offset) run summon armor_stand ~ ~ ~ {NoGravity:$(NoGravity),Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["co_statue","co_top","co_statue_empty","co_despawn"]}
#$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned $(bottom_offset) run summon armor_stand ~ ~ ~ {NoGravity:$(NoGravity),Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["co_statue","co_bottom","co_statue_empty","co_despawn"]}
#$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned $(top_offset) run summon armor_stand ~ ~ ~ {NoGravity:$(NoGravity),Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["co_statue","co_hands","co_statue_empty","co_despawn"]}

# master marker for one action manipulation
$execute positioned $(position) rotated as 00030dc6-0-0-0-7 positioned ~ ~ ~ run summon marker ~ ~ ~ {Tags:["co_statue","co_statue_marker","co_statue_empty","co_despawn"]}


