#>sco_items:item_functions/shield_stan/effect
#@within function sco_items:item_functions/shield_stan/attack

# particle
playsound block.anvil.place player @a ~ ~ ~ 0.7 0.5
particle electric_spark ~ ~ ~ 0 0 0 0.8 5

# effect
effect give @s slowness 3 1
effect give @s weakness 3 9
effect give @s mining_fatigue 3 9