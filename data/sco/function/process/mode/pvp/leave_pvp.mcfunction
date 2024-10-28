#>sco:process/mode/pvp/leave_pvp
#@within advancement sco:pvp/leave_pvp
team join mode.practice @s
function p-storage/get
data modify storage sco:inventory_histories inventory_data.input set from storage p-storage _[0].data.inventory_histories[{name:"respawn"}].Items
function sco:player/inventory_histories/return_items/
data remove storage p-storage _[0].data.inventory_histories[{name:"respawn"}]
effect clear @s
effect give @s regeneration 3 100
effect give @s instant_health 60 0
tag @s add rg.drop_item
tag @s add rg.food_limit
data modify storage p-storage _[0].data.respawn set value {pos:"344 -50 -135 0 0"}
teleport @s 382 -48 -120 -90 0
execute positioned as @s run playsound entity.ender_dragon.flap record @s ~ ~ ~ 0.5 1
advancement revoke @s only sco:pvp/leave_pvp