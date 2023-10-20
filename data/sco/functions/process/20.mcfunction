#>sco:process/20
#@within sco:main
scoreboard players add runtime game 1
execute if score runtime game matches 5 run tellraw @a "ショップ"
execute if score runtime game matches 1 run team join red @a[tag=join_red]
execute if score runtime game matches 1 run team join blue @a[tag=join_blue]
execute if score runtime game matches 1 run gamemode adventure @a[gamemode=!adventure,predicate=sco:team_join]
execute if score runtime game matches 1 as @a[predicate=sco:team_join] run function sco_items:kit/default
#rg
tag @a[team=red,tag=!rg_drop_item] add rg_drop_item
tag @a[team=blue,tag=!rg_drop_item] add rg_drop_item
effect give @a[predicate=sco:team_join,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] saturation 10 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] water_breathing 1 10 true

#テレポート
execute if score runtime game matches 1 run function sco:tp/shop/macro/all_player with storage sco:data

#プロセス終了
execute if score runtime game >= $shop game run data merge storage timer: {time:120,mode:1,name:'{"text":"残り時間 "}'}
execute if score runtime game >= $shop game store result storage timer: time int 1 run scoreboard players get $game_timer game
execute if score runtime game >= $shop game run function timer:input
execute if score runtime game >= $shop game run scoreboard players set process game 30
execute if score runtime game >= $shop game run scoreboard players set runtime game 0