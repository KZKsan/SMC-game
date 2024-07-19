#>sco:process/escalation/421
#@within sco:main
execute if score #runtime game matches ..5 run scoreboard players add #runtime game 1
execute if score #runtime game matches 1 run function sco:process/escalation/421/runtime_1
execute if score #runtime game matches 1.. run function sco:process/escalation/421/runtime_1__
execute if score #runtime game matches 5 run function sco:messeges/shop

#切断処理
execute as @a[predicate=sco:team_join,scores={leave_game=1..}] run function sco:player/retune_lobby

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
execute as @a[team=spectator,tag=!spectator] run function sco:process/spectator/

#アナウンス
execute if score #mst_time timer matches 003001 run function sco:messeges/shop_end
execute if score #mst_time timer matches 003001 run function sco:messeges/emerald
execute if score #mst_time timer matches 003001 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003003 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 003005 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001501 run function sco:messeges/shop_end
execute if score #mst_time timer matches 001501 run function sco:messeges/emerald
execute if score #mst_time timer matches 001501 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001503 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if score #mst_time timer matches 001505 as @a[predicate=sco:team_join] at @s run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1

#end
execute if score #mst_time timer matches -110 run function sco:process/escalation/421/end