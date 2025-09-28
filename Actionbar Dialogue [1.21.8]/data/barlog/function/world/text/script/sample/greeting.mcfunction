data modify storage cooley:text root.value set value {text:"This is a simple line.",actor:"sample"}
function barlog:world/text/push
data modify storage cooley:text root.value set value {text:"This line has the verbose explanation flag.",actor:"sample",prompt:2}
function barlog:world/text/push
data modify storage cooley:text root.value set value {text:"This line runs a sample function.",actor:"sample",fn:"sample"}
function barlog:world/text/push
data modify storage cooley:text root.value set value {text:'{"text":"This","color":"#FF577E"},{"text":" is a formatting-flagged line.","color":"#FFFFFF"}',actor:"sample",comp:1}
function barlog:world/text/push

