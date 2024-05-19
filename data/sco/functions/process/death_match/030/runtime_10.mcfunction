#>sco:process/death_match/030/runtime_10
#@within sco:process/death_match/030
execute as @a[predicate=sco:team_join,team=!spectator] run function sco:process/death_match/respawn/
execute as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] run function sco:regine/block_area/reset_score
tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] add rg.block_area
function sco:process/death_match/game_flag/winner/