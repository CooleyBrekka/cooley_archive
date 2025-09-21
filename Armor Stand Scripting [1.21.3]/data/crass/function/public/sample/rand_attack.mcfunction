# generate a random attack from boss moveset
#execute store result storage crass:sample root.random int 1 run random value 1..4
data modify storage crass:sample root.random set value 1

function crass:public/sample/choose_attack with storage crass:sample root

