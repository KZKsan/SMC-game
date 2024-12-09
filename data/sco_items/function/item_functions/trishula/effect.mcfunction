#>sco_items:item_functions/trishula/effect
#@within advancement sco_items:main
execute unless items entity @s weapon.* trident[custom_data={item_functions:{trishula:true}}] run return 0
effect give @s[tag=!rg.item_function_limit] poison 3 0