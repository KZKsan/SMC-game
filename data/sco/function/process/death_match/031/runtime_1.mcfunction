#>sco:process/death_match/031/runtime_1
#@within sco:process/death_match/031
function sco:process/death_match/game_reset
execute as @a[team=spectator] run function sco:regine/block_area/reset_score
execute as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute as @a[predicate=sco:team_join,team=!blue] run function sco:tp/respawn/save {name:"sudden_death_red"}
execute as @a[team=blue] run function sco:tp/respawn/save {name:"sudden_death_blue"}

#テレポート
execute as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator] run function sco:regine/block_area/reset_score