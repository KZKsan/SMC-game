execute on attacker run tag @s add attacker
particle minecraft:portal ~ ~1 ~ 0.1 0.1 0.1 1 1000
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 1 0.5
damage @s 40 arrow by @e[type=arrow,limit=1,sort=nearest] from @p[tag=attacker]
tag @p[tag=attacker] remove attacker
advancement revoke @s only sco_items:item_functions/sasayaki/taken_arrow