#>sco:process/domination/220/runtime_1
#@within sco:process/domination/220
team join red @a[tag=join_red]
team join blue @a[tag=join_blue]
gamemode adventure @a[gamemode=!adventure,predicate=sco:team_join,team=!spectator]
clear @a[predicate=sco:team_join,team=!spectator] 
execute as @a[predicate=sco:team_join,team=!spectator] run function sco_items:kit/default
execute as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"shop_red"}
execute as @a[team=blue] run function sco:tp/respawn/save {name:"shop_blue"}
execute as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
#プロセスID
scoreboard players set @a[predicate=sco:team_join] processID 20

execute as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute as @a[team=spectator] run function sco:regine/block_area/reset_score


