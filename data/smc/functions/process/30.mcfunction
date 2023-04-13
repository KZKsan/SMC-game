#>smc:process/30
#@within smc:main

execute if score runtime game matches 5 run tellraw @a "開始"
execute if score runtime game matches 1 as @a[team=!] run function smc:tp/stage/test

#ゲーム終了
execute if score runtime game matches 200 run scoreboard players set process game 40
execute if score runtime game matches 200 run scoreboard players set runtime game 0

#さどんです
#execute if score runtime game matches 200 run scoreboard players set process game 31
#execute if score runtime game matches 200 run scoreboard players set runtime game -1