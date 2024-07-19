#>sco:process/escalation/432/runtime_10
#@within sco:process/escalation/432
execute as @a[predicate=sco:team_join,team=!spectator] run function sco:process/escalation/respawn/
execute as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] run function sco:regine/block_area/reset_score
tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg.block_area] add rg.block_area
function sco:process/escalation/game_flag/winner/