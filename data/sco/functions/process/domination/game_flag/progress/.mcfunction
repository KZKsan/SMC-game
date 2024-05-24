#>sco:process/domination/game_flag/progress/
#@within sco:process/domination/230
execute store result storage sco:data domination.tmp.num int 1 run scoreboard players get #domination.red_capture_count game
function sco:process/domination/game_flag/progress/macro with storage sco:data domination.tmp
scoreboard players operation #domination.red_progress game += # _
execute store result storage sco:data domination.tmp.num int 1 run scoreboard players get #domination.blue_capture_count game
function sco:process/domination/game_flag/progress/macro with storage sco:data domination.tmp
scoreboard players operation #domination.blue_progress game += # _

execute if score #domination.assist_flag game matches 1 unless entity @e[type=item_display,tag=beacon.core,tag=!red,tag=!blue] run function sco:process/domination/game_flag/progress/assist/red
execute if score #domination.assist_flag game matches -1 unless entity @e[type=item_display,tag=beacon.core,tag=!red,tag=!blue] run function sco:process/domination/game_flag/progress/assist/blue

scoreboard players set #100 game 100
scoreboard players operation #domination.red_progress.display game = #domination.red_progress game
scoreboard players operation #domination.red_progress.display game *= #100 _
scoreboard players operation #domination.red_progress.display game /= #domination.progress_time game
scoreboard players operation #domination.blue_progress.display game = #domination.blue_progress game
scoreboard players operation #domination.blue_progress.display game *= #100 _
scoreboard players operation #domination.blue_progress.display game /= #domination.progress_time game