#>sco:regine/food_limit/
#@within sco:main
effect give @s[scores={food_saturation_level=1..}] hunger 1 99 true
effect clear @s[scores={food_saturation_level=0}] hunger
effect give @s[scores={food_level=..19}] saturation 1 0 true