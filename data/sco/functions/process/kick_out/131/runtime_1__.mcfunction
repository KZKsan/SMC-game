#>sco:process/kick_out/131/runtime_1__
#@within 
execute as @a[team=spectator,predicate=!sco:regine/block_area/scores] run function sco:regine/block_area/reset_score
#score
function sco:player/team/team_info/team_score/
#テレポート
execute as @a[predicate=sco:team_join,team=!spectator,scores={respawnTime=1}] run function sco:process/kick_out/respawn/sudden_death
