#>sco:process/20
#@within sco:main
scoreboard players add runtime game 1
execute if score runtime game matches 5 run function sco:messeges/shop
execute if score runtime game matches 1 run team join red @a[tag=join_red]
execute if score runtime game matches 1 run team join blue @a[tag=join_blue]
execute if score runtime game matches 1 run gamemode adventure @a[gamemode=!adventure,predicate=sco:team_join,team=!spectator]
execute if score runtime game matches 1 run clear @a[predicate=sco:team_join,team=!spectator] 
execute if score runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator] run function sco_items:kit/default
execute if score runtime game matches 1 run data modify storage sco:data regine_area_new set from storage sco:data regine_area.shop
execute if score runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/set_score
execute if score runtime game matches 1.. as @a[team=spectator,predicate=!sco:regine/block_area/scores] run function sco:regine/block_area/set_score
execute if score runtime game matches 1.. run function sco:player/team/team_info/player_count/

#プロセスID
execute if score runtime game matches 1 run scoreboard players set @a[predicate=sco:team_join] processID 20

#切断処理
execute as @a[team=spectator,scores={leave_game=1..}] run function sco:player/retune_lobby
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 11 run clear @s
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 11 run function sco_items:kit/default
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 11 run function sco:tp/shop/macro/single_player with storage sco:data
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 11 run scoreboard players set @s processID 20
#rg
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg_drop_item] add rg_drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg_shot_projectiles] add rg_shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg_food_limit] add rg_food_limit
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg_item_function_limit] add rg_item_function_limit
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] water_breathing 1 10 true

#テレポート
execute if score runtime game matches 1 run function sco:tp/shop/macro/all_player with storage sco:data
execute if score runtime game matches 1 run data modify storage sco:data regine_area_new set from storage sco:data regine_area.shop
execute if score runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/shop/macro/single_player with storage sco:data
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg_block_area
tag @a[team=spectator,tag=!spectator] add spectator

#プロセス終了
execute if score #mst_time timer matches 003000 run function sco:messeges/shop_end
execute if score #mst_time timer matches 003000 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003002 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003004 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1


execute if score runtime game >= $shop game run data merge storage timer: {time:120,mode:1,name:'{"text":"残り時間 "}'}
execute if score runtime game >= $shop game store result storage timer: time int 1 run scoreboard players get $game_timer game
execute if score runtime game >= $shop game run function timer:input
execute if score runtime game >= $shop game run scoreboard players set process game 30
execute if score runtime game >= $shop game run scoreboard players set runtime game 0