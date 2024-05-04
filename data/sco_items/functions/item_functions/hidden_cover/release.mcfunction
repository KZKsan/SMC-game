#>sco_items:item_functions/hidden_cover/release
#@api
execute if entity @s[gamemode=!spectator] run playsound block.moss.break block @a ~ ~ ~ 1 1
execute if entity @s[gamemode=!spectator] run playsound block.moss.break block @a ~ ~ ~ 1 0.5
execute if entity @s[gamemode=!spectator] run particle block{block_state:"moss_block"} ~ ~1 ~ 0.3 0.5 0.3 0.5 30
tag @s remove hidden_cover.run
advancement revoke @s only sco_items:item_functions/hidden_cover/release