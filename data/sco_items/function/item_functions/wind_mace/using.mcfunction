#>sco_items:item_functions/wind_mace/using
#@within advancement sco_items:item_functions/wind_mace/using
scoreboard players set @s blast_motion.count 1
execute rotated ~ ~-40 run function blast_motion/

advancement revoke @s only sco_items:item_functions/wind_mace/using