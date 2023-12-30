#>sco:main
#@within minecraft:tick
#declare score_holder #process
#declare score_holder #runtime

#プレイヤーごとのゲーム終了処理
execute as @a if score last gameID matches -2147483648..2147483647 unless score @s gameID = last gameID run function sco:player/retune_lobby
execute as @a unless score last gameID matches -2147483648..2147483647 if score @s gameID matches -2147483648..2147483647 run function sco:player/retune_lobby

# score reset
execute unless score #process game matches -2147483648..2147483647 run scoreboard players set #process game 0
execute unless score #runtime game matches -2147483648..2147483647 run scoreboard players set #runtime game -1

#0. none
execute if score #process game matches 0 run function sco:process/0

#1.マップ用意
execute if score #process game matches 10 run function sco:process/10

#2.マップ確認
execute if score #process game matches 11 run function sco:process/11

#3.ショップ
execute if score #process game matches 20 run function sco:process/20

#4.ゲーム
execute if score #process game matches 30 run function sco:process/30

#5.サドンデス
execute if score #process game matches 31 run function sco:process/31

#6.終了
execute if score #process game matches 40 run function sco:process/40

execute as @a[team=mode.practice,scores={leave_game=1..}] run function sco:player/retune_lobby

scoreboard players set @a[scores={leave_game=1..}] leave_game 0

#rg

##lobby
effect give @a[team=,predicate=gamemode/as,tag=!rg.off] instant_health 10 50 true
effect give @a[team=,predicate=gamemode/as,tag=!rg.off] resistance 1 50 true
effect give @a[team=,predicate=gamemode/as,tag=!rg.off] weakness 1 120 true
effect give @a[team=,predicate=gamemode/as,tag=!rg.off] saturation 10 120 true
effect give @a[team=,predicate=gamemode/as,tag=!rg.off] water_breathing 1 10 true
effect give @a[team=,predicate=gamemode/as,tag=!rg.off] fire_resistance 1 10 true

##mode.practice
effect give @a[predicate=gamemode/as,tag=!rg.off,team=mode.practice] instant_health 10 50 true
effect give @a[predicate=gamemode/as,tag=!rg.off,team=mode.practice] resistance 1 50 true
effect give @a[predicate=gamemode/as,tag=!rg.off,team=mode.practice] saturation 10 120 true
effect give @a[predicate=gamemode/as,tag=!rg.off,team=mode.practice] water_breathing 1 10 true
effect give @a[predicate=gamemode/as,tag=!rg.off,team=mode.practice] fire_resistance 1 10 true

##アイテムドロップ制限
execute as @e[type=item,tag=] unless score @s dropped_item matches 0 run function sco:regine/item_drop/

##飛翔体
execute as @e[type=#projectiles] unless score @s shot_projectiles matches 0 run function sco:regine/shot_projectiles/

##矢
execute as @e[type=#arrows,nbt=!{pickup:0b}] store success entity @s pickup byte 1 if entity @s[nbt={pickup:0b}]
execute as @e[type=#arrows,nbt={inGround:1b,life:1s}] run data modify entity @s life set value 1100s
execute as @e[type=#arrows] unless score @s shot_arrow matches 0 run function sco:player/result/arrows/shot


##満腹度
execute as @a store result score @s food_saturation_level run data get entity @s foodSaturationLevel
execute as @a[tag=rg.food_limit] run function sco:regine/food_limit/

##進入禁止
execute as @a[tag=rg.block_area,predicate=sco:regine/block_area/scores,tag=!rg.off] at @s run function sco:regine/block_area/

##ステージ範囲外
execute as @a[tag=rg.penalty_area,tag=!rg.off] at @s run function sco:regine/penalty_area/penalty/ with storage sco:data penalty_area.penalty

##ロビー
place template sco:lobby/farm 14 -53 -74


## practice
execute as @e[type=text_display,tag=health_pop] at @s run function sco:practice/entity/health_pop
execute as @e[type=creeper,tag=sandbag] at @s run function sco:practice/entity/sandbag/