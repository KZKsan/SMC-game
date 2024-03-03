#>sco_items:item_functions/healing/
#@wihtin advancement sco_items:item_functions/healing
execute unless score @s cure_arrow matches 0.. run effect give @s regeneration 3 0
advancement revoke @s only sco_items:item_functions/healing