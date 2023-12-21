#>sco:process/40
#@within sco:main
scoreboard players add #runtime game 1
function timer:stop

#player_count
execute if score #runtime game matches 1.. run function sco:player/team/team_info/player_count/

execute as @a[predicate=sco:team_join,team=!spectator] run function sco:player/respawn/
execute as @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg_block_area] run function sco:regine/block_area/set_score
tag @a[predicate=sco:team_join,team=!spectator,gamemode=spectator,tag=!rg_block_area] add rg_block_area
execute as @a[team=spectator,tag=!spectator] run function sco:regine/block_area/set_score
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/spectator
execute as @a[team=spectator,tag=!spectator] run function sco:tp/stage/macro/single_player with storage sco:data
execute as @a[team=spectator,tag=!spectator] run function sco:player/team/remove_team_tag
tag @a[team=spectator,tag=!spectator] add rg_block_area
tag @a[team=spectator,tag=!spectator] add spectator

#ステージギミック
execute if score #runtime game matches ..199 if data storage sco:data options{gimmick:true} run function sco:stage_data/gimmick

#ゲーム終了
execute if score #runtime game matches 200 run function sco:process/end