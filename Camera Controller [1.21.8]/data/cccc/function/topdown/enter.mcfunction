# make statue
data modify storage crass:statue root merge value {Rotation:[0.0f,0.0f],position:"0.5 -60.0 0.5",clothes:"player_head_leather_armor",hands:2,pose:"default",actor:-1,NoGravity:0b}
function crass:interface/create_statue

# bind this actor to the player running this function
function gu:generate
function cccc:topdown/store_player_actor with storage gu:main

# init the actor
function cccc:topdown/actor_init with storage crass:statue root.new

gamemode spectator
tag @s add co_topdown_mode

