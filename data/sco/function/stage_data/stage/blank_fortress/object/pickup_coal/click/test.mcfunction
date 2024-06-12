#>sco:stage_data/stage/blank_fortress/object/pickup_coal/click/test
#@within sco:stage_data/stage/blank_fortress/object/pickup_coal/
execute on target if items entity @s container.* coal[custom_data~{item_functions:{stage_item:{fuel:1b}}}] run return fail
execute on target store result score # _ run data get entity @s Inventory
execute on target if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove # _ 1
execute on target if data entity @s Inventory[{Slot:100b}] run scoreboard players remove # _ 1
execute on target if data entity @s Inventory[{Slot:101b}] run scoreboard players remove # _ 1
execute on target if data entity @s Inventory[{Slot:102b}] run scoreboard players remove # _ 1
execute on target if data entity @s Inventory[{Slot:103b}] run scoreboard players remove # _ 1
execute if score # _ matches ..35 run return 1

return fail