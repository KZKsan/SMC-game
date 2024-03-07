#>sco_items:item_functions/others/mini_healing_potion
#@within sco_items:main
execute on origin run effect give @s regeneration 1 3
playsound entity.splash_potion.break record @a ~ ~ ~
kill