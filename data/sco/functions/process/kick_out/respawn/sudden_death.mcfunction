#>sco:process/kick_out/respawn/sudden_death
#@within sco:process/kick_out/**
function sco:regine/penalty_area/reset_flag/single
effect give @s instant_health 1 49
effect give @s absorption 10 9
execute if entity @s[team=red] run function sco:process/kick_out/game_flag/score/blue
execute if entity @s[team=blue] run function sco:process/kick_out/game_flag/score/red
function sco:tp/respawn/