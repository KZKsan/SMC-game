#>sco_items:item_functions/cluster_bomb_arrow/bomb/damage
#@within sco_items:item_functions/cluster_bomb_arrow/bomb/explode
damage @s[distance=..4] 1 sco_items:add_player_explosion_damage by @p[tag=origin] from @e[tag=de,limit=1]
damage @s[distance=..3] 1 sco_items:add_player_explosion_damage by @p[tag=origin] from @e[tag=de,limit=1]
damage @s[distance=..2] 2 sco_items:add_player_explosion_damage by @p[tag=origin] from @e[tag=de,limit=1]
damage @s[distance=..1.5] 3 sco_items:add_player_explosion_damage by @p[tag=origin] from @e[tag=de,limit=1]
damage @s[distance=..1] 3 sco_items:add_player_explosion_damage by @p[tag=origin] from @e[tag=de,limit=1]