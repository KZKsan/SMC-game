#>sco:process/kick_out/120
#@within sco:main
execute if score #runtime game matches ..5 run scoreboard players add #runtime game 1
execute if score #runtime game matches 5 run function sco:messeges/shop
execute if score #runtime game matches 1 run team join red @a[tag=join_red]
execute if score #runtime game matches 1 run team join blue @a[tag=join_blue]
execute if score #runtime game matches 1 run gamemode adventure @a[gamemode=!adventure,predicate=sco:team_join,team=!spectator]
execute if score #runtime game matches 1 run clear @a[predicate=sco:team_join,team=!spectator] 
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator] run function sco_items:kit/default
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"shop_red"}
execute if score #runtime game matches 1 as @a[team=blue] run function sco:tp/respawn/save {name:"shop_blue"}
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute if score #runtime game matches 1.. run function sco:player/team/team_info/joined_count/
execute if score #runtime game matches 1 as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single


#プロセスID
execute if score #runtime game matches 1 run scoreboard players set @a[predicate=sco:team_join] processID 120

#切断処理
execute as @a[team=spectator,scores={leave_game=1..}] run function sco:player/retune_lobby
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 111 run clear @s
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 111 run function sco_items:kit/default
execute as @a[team=red] if score @s processID matches 111 run function sco:tp/respawn/save {name:"shop_red"}
execute as @a[team=blue] if score @s processID matches 111 run function sco:tp/respawn/save {name:"shop_blue"}
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 111 run function sco:tp/respawn/
execute as @a[scores={regione.penalty_area.penalty.time=1..}] if score @s processID matches 111 run function sco:regine/penalty_area/reset_flag/single
execute as @a[predicate=sco:team_join,team=!spectator] if score @s processID matches 111 run scoreboard players set @s processID 120
#rg
function sco:process/penalty_area/shop
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.drop_item] add rg.drop_item
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.shot_projectiles] add rg.shot_projectiles
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.food_limit] add rg.food_limit
tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.item_function_limit] add rg.item_function_limit
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] water_breathing 1 10 true
effect give @a[predicate=sco:team_join,team=!spectator,predicate=gamemode/as] fire_resistance 1 10 true

#テレポート
execute if score #runtime game matches 1 as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/save {name:"shop_red"}
execute as @a[team=spectator,tag=!spectator] run function sco:tp/respawn/
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg.block_area
tag @a[team=spectator,tag=!spectator] add spectator
execute if score #runtime game matches 1.. as @a[team=red,scores={respawnTime=1}] run function sco:tp/macro with storage sco:data respawn[{name:"shop_red"}]
execute if score #runtime game matches 1.. as @a[team=blue,scores={respawnTime=1}] run function sco:tp/macro with storage sco:data respawn[{name:"shop_blue"}]

#プロセス終了
execute if score #mst_time timer matches 003001 run function sco:messeges/shop_end
execute if score #mst_time timer matches 003001 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003003 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003005 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001501 run function sco:messeges/shop_end
execute if score #mst_time timer matches 001501 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001503 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001505 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1

execute if score #mst_time timer matches -110 run scoreboard players set #process game 130
execute if score #mst_time timer matches -110 run scoreboard players set #runtime game 0
execute if score #mst_time timer matches -110 run data merge storage timer: {time:120,mode:1,name:'{"text":"残り時間 "}'}
execute if score #mst_time timer matches -110 store result storage timer: time int 1 run scoreboard players get #game_timer game
execute if score #mst_time timer matches -110 run function timer:input