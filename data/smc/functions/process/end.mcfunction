tellraw @a "終了"


scoreboard players set process game 0
scoreboard players set runtime game -1
scoreboard players reset last gameID
scoreboard players reset @a gameID
execute as @a[team=!] run function smc:player/retune_lobby