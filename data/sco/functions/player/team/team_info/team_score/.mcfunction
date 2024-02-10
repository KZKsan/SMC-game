#>sco:player/team/team_info/team_score/
#@public
execute store result storage sco:data team_info.red_score int 1 run scoreboard players get #red_score game
execute store result storage sco:data team_info.blue_score int 1 run scoreboard players get #blue_score game

function sco:player/team/team_info/team_score/macro with storage sco:data team_info