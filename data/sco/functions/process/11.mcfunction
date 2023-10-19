#>sco:process/11
#@within sco:main
execute if score runtime game matches 5 run tellraw @a "すてーじけんがく"
execute if score runtime game matches 1 run team join red @a[team=blue]
execute if score runtime game matches 1 run gamemode adventure @a[team=red]
execute if score runtime game matches 1 run gamemode spectator @a[team=spectator]

#rg
tag @a[team=red,tag=!rg_drop_item] add rg_drop_item
effect give @a[predicate=sco:team_join,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] saturation 10 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] water_breathing 1 10 true

#てれぽーと
execute if score runtime game matches 1 as @a[team=!] run function sco:tp/stage/

#プロセス終了
execute if score runtime game >= $stage game run data merge storage timer: {time:120,mode:1,name:'{"text":"ショップ 残り時間 "}'}
execute if score runtime game >= $stage game store result storage timer: time int 1 run scoreboard players get $shop_timer game
execute if score runtime game >= $stage game run function timer:input
execute if score runtime game >= $stage game run scoreboard players set process game 20
execute if score runtime game >= $stage game run scoreboard players set runtime game 0