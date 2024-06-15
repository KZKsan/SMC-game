#>sco:process/domination/230/runtime_1
#@within sco:process/domination/230
function sco:process/domination/game_reset
gamemode adventure @a[predicate=sco:team_join,team=!spectator]
function sco:player/result/reset_scores/all
execute as @a[scores={regione.penalty_area.penalty.time=1..}] run function sco:regine/penalty_area/reset_flag/single
execute as @a[team=red] run function sco:tp/respawn/save {name:"shop_red"}
execute as @a[team=spectator] run function sco:tp/respawn/save {name:"stage_red"}
execute as @a[team=blue] run function sco:tp/respawn/save {name:"shop_blue"}
execute as @a[predicate=sco:team_join,team=!spectator] store result score @s respawn.fixed run data get storage sco:data domination.respawn.fixed
function sco:player/team/team_info/domination/set_display
execute as @a[team=spectator] run function sco:tp/respawn/
execute as @a[team=spectator] run function sco:regine/block_area/reset_score
#kill @a[team=spectator]

tag @a[predicate=sco:team_join,team=!spectator,tag=!rg.barrier_effects] add rg.barrier_effects

#テレポート
#execute as @a[predicate=sco:team_join] run function sco:tp/respawn/
execute as @a[team=spectator] run function sco:regine/block_area/reset_score