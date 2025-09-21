# generate a random attack from boss moveset
#execute store result storage cooley:sample root.random int 1 run random value 1..4
data modify storage cooley:sample root.random set value 1

function cooley:public/sample/choose_attack with storage cooley:sample root

