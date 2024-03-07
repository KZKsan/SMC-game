particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 100
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.3 2
scoreboard players set @s cure_arrow 60
advancement revoke @s only sco_items:item_functions/cure_arrow