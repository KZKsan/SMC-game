#>smc:process/20
#@within smc:main
execute if score runtime game matches 5 run tellraw @a "ショップ"
execute if score runtime game matches 1 as @a[team=!] run function smc:tp/shop

execute if score runtime game matches 200 run scoreboard players set process game 30
execute if score runtime game matches 200 run scoreboard players set runtime game 0