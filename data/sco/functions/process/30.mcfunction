#>sco:process/30
#@within sco:main

#初期化
execute if score runtime game matches 1 run function sco:process/game_reset
execute if score runtime game matches 5 run tellraw @a "開始"
execute if score runtime game matches 1 run gamemode adventure @a[predicate=sco:team_join]

#rg
tag @a[predicate=sco:team_join,tag=!rg_drop_item] add rg_drop_item

#テレポート
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/stage/

#プロセス終了
execute if score runtime game matches 10.. run function sco:process/game_flag/winner/

#さどんです
#execute if score runtime game matches 200 run scoreboard players set process game 31
#execute if score runtime game matches 200 run scoreboard players set runtime game -1