#>sco_items:item_functions/dimensional_sword/team
#@within sco_items:item_functions/dimensional_sword/hurt
execute if entity @s[team=red] if entity @p[tag=origin,team=!red] run return 1
execute if entity @s[team=blue] if entity @p[tag=origin,team=!blue] run return 1
execute if entity @s[team=] run return 1