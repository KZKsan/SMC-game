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
scoreboard players set @a[scores={respawnTime=2147483647}] respawnTime 30

#0. none
execute if score #process game matches 000 run function sco:process/death_match/000

#1.マップ用意
execute if score #process game matches 010 run function sco:process/death_match/010
execute if score #process game matches 110 run function sco:process/kick_out/110
execute if score #process game matches 210 run function sco:process/domination/210
execute if score #process game matches 410 run function sco:process/escalation/410

#2.マップ確認
execute if score #process game matches 011 run function sco:process/death_match/011
execute if score #process game matches 111 run function sco:process/kick_out/111
execute if score #process game matches 211 run function sco:process/domination/211
execute if score #process game matches 411 run function sco:process/escalation/411


#3.ショップ
execute if score #process game matches 020 run function sco:process/death_match/020
execute if score #process game matches 120 run function sco:process/kick_out/120
execute if score #process game matches 220 run function sco:process/domination/220
execute if score #process game matches 420 run function sco:process/escalation/420
execute if score #process game matches 421 run function sco:process/escalation/421


#4.ゲーム
execute if score #process game matches 030 run function sco:process/death_match/030
execute if score #process game matches 130 run function sco:process/kick_out/130
execute if score #process game matches 230 run function sco:process/domination/230
execute if score #process game matches 430 run function sco:process/escalation/430
execute if score #process game matches 432 run function sco:process/escalation/432


#5.サドンデス
execute if score #process game matches 031 run function sco:process/death_match/031
execute if score #process game matches 131 run function sco:process/kick_out/131
execute if score #process game matches 431 run function sco:process/escalation/431

#6.終了
execute if score #process game matches 040 run function sco:process/death_match/040
execute if score #process game matches 140 run function sco:process/kick_out/140
execute if score #process game matches 240 run function sco:process/domination/240
execute if score #process game matches 441 run function sco:process/escalation/441
execute if score #process game matches 440 run function sco:process/escalation/440


execute as @a[predicate=sco:practice_join,scores={leave_game=1..}] run function sco:player/retune_lobby

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
function sco:process/mode/practice/
function sco:process/mode/pvp/

##アイテムドロップ制限
execute at @a as @e[type=item,tag=,distance=..6] unless score @s dropped_item matches 0 run function sco:regine/item_drop/

##飛翔体
execute as @e[type=#projectiles] unless score @s shot_projectiles matches 0 run function sco:regine/shot_projectiles/

##矢
execute as @e[type=#arrows] unless score @s shot_arrow matches 0 run function sco:regine/arrows/shot_arrow
execute as @e[type=#arrows] run function sco:regine/arrows/others

##満腹度
execute as @a store result score @s food_saturation_level run data get entity @s foodSaturationLevel
execute as @a[tag=rg.food_limit] run function sco:regine/food_limit/

##進入禁止
execute as @a[tag=rg.block_area,tag=!rg.off] at @s if data storage sco:data block_area.struct run function sco:regine/block_area/ with storage sco:data block_area.struct
execute if entity @p[tag=rg.block_area] run function sco:regine/block_area/updata_pos

##ステージ範囲外
execute as @a[tag=rg.penalty_area.penalty,tag=!rg.off,predicate=gamemode/as] at @s if data storage sco:data penalty_area.struct.penalty run function sco:regine/penalty_area/penalty/ with storage sco:data penalty_area.struct
execute as @a[tag=rg.penalty_area.death,tag=!rg.off,predicate=gamemode/as] at @s if data storage sco:data penalty_area.struct.death run function sco:regine/penalty_area/death/ with storage sco:data penalty_area.struct
execute as @a[tag=rg.penalty_area.death,tag=!rg.off,predicate=gamemode/as] at @s if block ~ -63 ~ command_block{Command:"rg.penalty_area.death"} run damage @s 1000 sco:outside_border

##バリアエフェクト
execute as @a[predicate=gamemode/as,tag=!rg.off,tag=rg.barrier_effects] run function sco:regine/barrier_effects/

##ロビー
place template sco:lobby/farm 14 -53 -74


## practice
execute as @e[type=text_display,tag=health_pop] at @s run function sco:practice/entity/health_pop
execute as @e[tag=sandbag,predicate=sco:sandbag] at @s run function sco:practice/entity/sandbag/
execute as @e[type=item_display,tag=sandbag.display] if function sco:practice/entity/sandbag/display run kill