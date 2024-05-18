#>sco:process/domination/game_flag/progress/assist/red
#@within sco:process/domination/game_flag/progress/
execute store result storage sco:data domination.tmp.num int 1 run scoreboard players get #domination.red_capture_count game
function sco:process/domination/game_flag/progress/assist/macro with storage sco:data domination.tmp
scoreboard players operation #domination.red_progress game += # _