execute if score #playing co_music matches 1 run scoreboard players remove #time co_music 1
execute if score #time co_music matches ..0 run function cooley:music/force with storage cooley:temp

# triggers
#execute as @p[x=1,y=-8,z=137,dx=0,dy=4,dz=4] unless data storage cooley:temp {music:"dx1000"} run function cooley:music/start {music:"dx1000"}

