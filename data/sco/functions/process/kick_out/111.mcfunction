#>sco:process/kick_out/111
#@within sco:main
execute if score #runtime game matches ..5 run scoreboard players add #runtime game 1
execute if score #runtime game matches 5 run function sco:messeges/stage
execute if score #runtime game matches 1 run team join red @a[team=blue]
execute if score #runtime game matches 1 run gamemode adventure @a[team=red]
#アイテム配布
execute if score #runtime game matches 1 as @a[predicate=sco:team_join,team=!spectator] run function sco:process/give_visit_kit
execute if score #runtime game matches 1 as @a[predicate=sco:team_join] run function sco:tp/respawn/save {name:"stage_red"}
#プロセスID
execute if score #runtime game matches 1 run scoreboard players set @a[predicate=sco:team_join] processID 111
#切断処理
execute as @a[team=spectator,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[team=red,tag=!rg.drop_item] add rg.drop_item
function sco:process/penalty_area/stage
tag @a[team=spectator,tag=!spectator] add rg.block_area
effect give @a[predicate=sco:team_join,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] saturation 10 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] water_breathing 1 10 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] fire_resistance 1 10 true

#てれぽーと
execute if score #runtime game matches 1 as @a[predicate=sco:team_join] run function sco:tp/macro with storage sco:data respawn[{name:"stage_red"}]
execute if score #runtime game matches 1 as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/reset_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/macro with storage sco:data respawn[{name:"stage_red"}]
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add spectator
execute if score #runtime game matches 1.. as @a[predicate=sco:team_join,scores={respawnTime=1}] run function sco:tp/macro with storage sco:data respawn[{name:"stage_red"}]
execute if score #runtime game matches 5 as @a[predicate=sco:team_join] at @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 1

#ステージギミック
execute if score #runtime game matches 2 if data storage sco:data options{generate:true} run function sco:stage_data/generate
execute if score #runtime game matches 3 unless data storage sco:data options{reset:true} run function sco:stage_data/generic_settings
execute if score #runtime game matches 3 if data storage sco:data options{reset:true} run function sco:stage_data/reset
execute if score #runtime game matches 4.. run function sco:stage_data/stage_object/
execute if score #runtime game matches 4.. if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#プロセス終了
execute if score #mst_time timer matches -110 run scoreboard players set #process game 120
execute if score #mst_time timer matches -110 run scoreboard players set #runtime game 0
execute if score #mst_time timer matches -110 as @e[type=#arrows] if function sco:regine/can_pickup_arrows/test run kill
execute if score #mst_time timer matches -110 run data merge storage timer: {time:120,mode:1,name:'{"text":"装備準備時間 残り時間 "}'}
execute if score #mst_time timer matches -110 store result storage timer: time int 1 run scoreboard players get #shop_timer game
execute if score #mst_time timer matches -110 run function timer:input