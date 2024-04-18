#>sco:regine/item_drop/
#@within sco:main
#declare tag rg.drop_item
scoreboard players set # _ 0
execute on origin store success score # _ if entity @s[tag=rg.drop_item]
scoreboard players set @s dropped_item 0
execute if score # _ matches 0 run return 0
data modify storage _ item_data set from entity @s Item
execute unless data storage _ item_data.components run data modify storage _ item_data.components set value ""
execute on origin run function item/macro/give/
kill