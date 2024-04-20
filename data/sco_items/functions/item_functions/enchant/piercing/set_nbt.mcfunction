#>sco_items:item_functions/enchant/piercing/set_nbt
#@within sco_items:main
data modify entity @s Color set value -1
execute store result score # _ run data get entity @s PierceLevel
execute store result score #lvl _ run data get entity @s item.components."minecraft:enchantments".levels."minecraft:piercing"
execute store result entity @s PierceLevel byte 1 run scoreboard players operation #lvl _ += # _
tag @s add item_function.piercing_arrow