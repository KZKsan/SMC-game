#>sco:process/spectator/
#@within sco:process/**
function sco:regine/block_area/reset_score
function sco:gamemode_histories/save
function sco:player/team/spectator
function sco:tp/macro with storage sco:data respawn[{name:"stage_red"}]
function sco:player/team/remove_team_tag
tag @s add spectator
tag @s add rg.block_area