#>sco:regine/item_drop/
#@within sco:main
tag @s add execute
execute on origin store success score # _ if entity @s[tag=rg_drop_item]
scoreboard players set @s dropped_item 0
tag @s remove execute
execute if score # _ matches 0 run return 0
data modify storage _ _ set from entity @s Item
execute unless data storage _ _.tag run data modify storage _ _.tag set value ""
execute on origin run function sco:regine/item_drop/return_item with storage _ _
kill