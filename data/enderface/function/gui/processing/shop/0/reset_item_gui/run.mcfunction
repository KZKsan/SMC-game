#>enderface:gui/processing/shop/0/reset_item_gui/run
#@within enderface:gui/processing/shop/0/reset_item_gui/
clear
effect clear @s
effect give @s instant_health 1 100
execute if data storage sco:input game{rule:"escalation"} if entity @s[predicate=sco:team_join,team=!spectator] run return run function sco:process/escalation/item with storage sco:data escalation.loot

function sco_items:kit/default