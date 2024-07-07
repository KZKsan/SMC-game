#>sco:process/escalation/411
#@within sco:main
execute if score #runtime game matches ..5 run scoreboard players add #runtime game 1
execute if score #runtime game matches 1 run function sco:process/escalation/411/runtime_1
execute if score #runtime game matches 5 run function sco:process/escalation/411/runtime_5
#切断処理
execute as @a[team=spectator,scores={leave_game=1..}] run function sco:player/retune_lobby

#rg
tag @a[team=red,tag=!rg.drop_item] add rg.drop_item
function sco:process/penalty_area/stage

effect give @a[predicate=sco:team_join,predicate=gamemode/as] instant_health 10 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] resistance 1 50 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] weakness 1 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] saturation 10 120 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] water_breathing 1 10 true
effect give @a[predicate=sco:team_join,predicate=gamemode/as] fire_resistance 1 10 true

#観戦
execute as @a[team=spectator,tag=!spectator] run function sco:process/spectator/
#てれぽーと
execute if score #runtime game matches 1.. as @a[predicate=sco:team_join,scores={respawnTime=1}] run function sco:tp/macro with storage sco:data respawn[{name:"stage_red"}]

#ステージギミック
execute if score #runtime game matches 3 run function sco:process/escalation/411/runtime_3
execute if score #runtime game matches 4.. run function sco:process/escalation/411/runtime_4

#end
execute if score #mst_time timer matches -110 run function sco:process/escalation/411/end