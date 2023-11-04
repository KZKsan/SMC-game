advancement revoke @s only sco_items:item_functions/sasayaki/taken_arrow
execute on attacker run tag @s add attacker
damage @s 30 arrow by @e[type=arrow,limit=1,sort=nearest] from @p[tag=attacker]
tag @p[tag=attacker] remove attacker
