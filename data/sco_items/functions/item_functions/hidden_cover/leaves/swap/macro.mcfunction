#>sco_items:item_functions/hidden_cover/leaves/swap/macro
#@within sco_items:item_functions/hidden_cover/leaves/swap/

$execute positioned as @p[nbt={UUID:$(Owner)},tag=hidden_cover.run,gamemode=!spectator] align xyz run teleport @s ~0.5 ~0.4 ~0.5
$execute unless entity @p[nbt={UUID:$(Owner)},tag=hidden_cover.run,predicate=sneak,gamemode=!spectator] run tag @s add kill