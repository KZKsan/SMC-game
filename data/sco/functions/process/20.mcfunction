#>sco:process/20
#@within sco:main
execute if score runtime game matches 5 run tellraw @a "ショップ"
#テレポート
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/shop

#プロセス終了
execute if score runtime game matches 200 run scoreboard players set process game 30
execute if score runtime game matches 200 run scoreboard players set runtime game 0