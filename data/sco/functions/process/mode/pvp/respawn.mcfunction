#>sco:process/mode/pvp/respawn
#@within sco:process/mode/pvp/
effect give @s regeneration 3 100
effect give @s instant_health 60 0
effect give @s absorption 5 9
function sco:process/mode/pvp/tp
function p-storage/get
data modify storage _ _ set from storage p-storage _[0].data.inventory_histories[{name:"respawn"}].Items
function sco:player/inventory_histories/return_items/