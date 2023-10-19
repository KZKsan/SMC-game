#>sco:main
#@within minecraft:tick
#declare score_holder process
#declare score_holder runtime
#if (runtime >= 0) runtime++;
execute if score runtime game matches 0.. run scoreboard players add runtime game 1
#プレイヤーごとのゲーム終了処理
execute as @a if score last gameID matches -2147483648..2147483647 unless score @s gameID = last gameID run function sco:player/retune_lobby
execute as @a unless score last gameID matches -2147483648..2147483647 if score @s gameID matches -2147483648..2147483647 run function sco:player/retune_lobby

#0. none
execute if score process game matches 0 run function sco:process/0

#1.マップ用意
execute if score process game matches 10 run function sco:process/10

#2.マップ確認
execute if score process game matches 11 run function sco:process/11

#3.ショップ
execute if score process game matches 20 run function sco:process/20

#4.ゲーム
execute if score process game matches 30 run function sco:process/30

#5.サドンデス
execute if score process game matches 31 run function sco:process/31

#6.終了
execute if score process game matches 40 run function sco:process/40

#rg

##lobby
effect give @a[team=,predicate=gamemode/as] instant_health 10 50 true
effect give @a[team=,predicate=gamemode/as] resistance 1 50 true
effect give @a[team=,predicate=gamemode/as] weakness 1 120 true
effect give @a[team=,predicate=gamemode/as] saturation 10 120 true
effect give @a[team=,predicate=gamemode/as] water_breathing 1 10 true

##アイテムドロップ制限
execute as @e[type=item,tag=] unless score @s dropped_item matches 0 run function sco:regine/item_drop/