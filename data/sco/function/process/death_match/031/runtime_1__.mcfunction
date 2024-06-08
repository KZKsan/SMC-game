#>sco:process/death_match/031/runtime_1__
#@within sco:process/death_match/031
execute as @a[team=spectator,predicate=!sco:regine/block_area/scores] run function sco:regine/block_area/reset_score

#player_count
function sco:player/team/team_info/player_count/

execute as @a[predicate=sco:team_join,team=!spectator] run function sco:process/death_match/respawn/
execute as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] run function sco:regine/block_area/reset_score
tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] add rg.block_area