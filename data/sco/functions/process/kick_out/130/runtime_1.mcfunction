#>sco:process/kick_out/130/runtime_1
#@within sco:process/kick_out/130
function sco:process/kick_out/game_reset
gamemode adventure @a[predicate=sco:team_join,team=!spectator]
execute as @a[predicate=sco:team_join,team=!spectator] run function sco:player/save_respawn_item
function sco:player/result/reset_scores/all
effect give @a[predicate=sco:team_join,team=!spectator] instant_health 100 100
execute as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"stage_red"}
execute as @a[team=blue] run function sco:tp/respawn/save {name:"stage_blue"}

#score
function sco:player/team/team_info/team_score/set_display
function sco:player/team/team_info/team_score/empty

#テレポート
execute as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute as @a[team=spectator] run function sco:regine/block_area/reset_score