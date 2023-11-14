#>sco:process/11
#@within sco:main
scoreboard players add runtime game 1
execute if score runtime game matches 5 run tellraw @a "すてーじけんがく"
execute if score runtime game matches 1 run team join red @a[team=blue]
execute if score runtime game matches 1 run gamemode adventure @a[team=red]
execute if score runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator] run function sco:process/give_visit_kit

#rg
tag @a[team=red,tag=!rg_drop_item] add rg_drop_item
effect give @a[predicate=sco:team_join,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] saturation 10 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] water_breathing 1 10 true

#てれぽーと
execute if score runtime game matches 1 run function sco:tp/stage/macro/all_player with storage sco:data
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/stage/macro/single_player with storage sco:data
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add spectator

#アイテム配布

#ステージギミック
execute if score runtime game matches 2 unless data storage sco:data options{reset:true} run function sco:stage_data/generic_settings
execute if score runtime game matches 2 if data storage sco:data options{reset:true} run function sco:stage_data/reset
execute if score runtime game matches 3.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#プロセス終了
execute if score runtime game >= $stage game run data merge storage timer: {time:120,mode:1,name:'{"text":"ショップ 残り時間 "}'}
execute if score runtime game >= $stage game store result storage timer: time int 1 run scoreboard players get $shop_timer game
execute if score runtime game >= $stage game run function timer:input
execute if score runtime game >= $stage game run scoreboard players set process game 20
execute if score runtime game >= $stage game run scoreboard players set runtime game 0