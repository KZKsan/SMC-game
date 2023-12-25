#>sco_items:item_functions/dimensional_sword/team
#@within sco_items:item_functions/dimensional_sword/hurt
data modify storage _ Team set from entity @s Team
execute store success score # _ run data modify storage _ Team set from entity @p[tag=origin] Team
execute if score # _ matches 1 run function sco_items:item_functions/dimensional_sword/hurt