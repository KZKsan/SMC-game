#>sco:player/team/team_info/domination/
#@public
execute store result storage sco:data team_info.red_score int 1 run scoreboard players get #domination.red_progress.display game
execute store result storage sco:data team_info.blue_score int 1 run scoreboard players get #domination.blue_progress.display game

function sco:player/team/team_info/domination/macro with storage sco:data team_info