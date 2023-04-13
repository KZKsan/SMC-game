#>smc:process/40
#@within smc:main
execute if score runtime game matches 5 run tellraw @a "終了中"


#ゲーム終了
execute if score runtime game matches 200 run function smc:process/end