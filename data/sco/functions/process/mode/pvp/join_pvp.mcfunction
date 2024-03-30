#>sco:process/mode/pvp/join_pvp
#@within advancement sco:pvp/join_pvp
team join mode.pvp @s
function sco:player/save_respawn_item
tag @s add rg.drop_item
tag @s add rg.food_limit
effect clear
effect give @s regeneration 3 100
effect give @s instant_health 60 0
effect give @s absorption 5 9
function sco:process/mode/pvp/tp
function p-storage/get
data modify storage p-storage _[0].data.respawn set value {pos:"344 -50 -135 0 0"}
execute positioned as @s run playsound entity.player.levelup record @s ~ ~ ~ 0.5 1
advancement revoke @s only sco:pvp/join_pvp