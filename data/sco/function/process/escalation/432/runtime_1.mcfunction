#>sco:process/escalation/432/runtime_1
#@within sco:process/escalation/432
scoreboard players set #flag game 0
gamemode adventure @a[predicate=sco:team_join,team=!spectator]
function sco:player/result/reset_scores/all
effect give @a[predicate=sco:team_join,team=!spectator] instant_health 100 100
execute as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"stage_red"}
execute as @a[team=blue] run function sco:tp/respawn/save {name:"stage_blue"}
#player_count
function sco:player/team/team_info/player_count/set_display

#テレポート
execute as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute as @a[team=spectator] run function sco:regine/block_area/reset_score