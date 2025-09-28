execute as @a run function cooley:motion/loop
execute as @a run function cooley:timer/loop
function cooley:spawner/loop
function cooley:spawner/confirm_loop
execute as @a run function cooley:misc/loop
function cooley:run/loop
function cooley:world/text/loop
function cooley:music/loop
function cooley:music/map/loop
function cooley:items/loop
function cooley:lore/map/loop
function cooley:world/menu/loop
function cooley:checkpoint/loop
function cooley:gate/loop
execute as @e run function cooley:e
execute as @p run function cooley:talisman/effect/loop

# must be last, resets scores that are set by non-ticking functions
function cooley:tick_reset
