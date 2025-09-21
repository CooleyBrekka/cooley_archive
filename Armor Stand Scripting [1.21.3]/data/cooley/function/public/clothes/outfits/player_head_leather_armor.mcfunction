#################################################################################
## How to put nearest player's head on the actor
# get the uuid of the current entity
function gu:generate
data modify storage cooley:statue root.generate.statue set from storage gu:main out

# get the uuid of the target player
execute if entity @p[tag=co_get_player_head] as @p[tag=co_get_player_head] run function gu:generate
execute unless entity @p[tag=co_get_player_head] as @p run function gu:generate
data modify storage cooley:statue root.generate.player set from storage gu:main out

# get the player head
function cooley:public/clothes/player_head with storage cooley:statue root.generate
####################################################################################

# apply leather armor on non-head
function cooley:public/clothes/leather_armor

# give wooden sword
function cooley:public/clothes/wooden_sword
