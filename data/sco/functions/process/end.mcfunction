#>sco:process/end
#@within sco:process/**
tellraw @a "終了"

scoreboard players set process game 0
scoreboard players set runtime game -1
scoreboard players reset last gameID
scoreboard players reset @a gameID
tag @a remove join_red
tag @a remove join_blue
execute as @a[team=!] run function sco:player/retune_lobby