#>sco:start/set_score
#@within sco:start/
scoreboard players set process game 10
scoreboard players set runtime game 0
function sco:process/timer_score
data modify storage sco:input game set from storage sco:config game