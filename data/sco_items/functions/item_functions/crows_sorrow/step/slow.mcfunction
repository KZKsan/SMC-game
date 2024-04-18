#>sco_items:item_functions/crows_sorrow/step/slow
#@wihtin sco_items:main
attribute @s generic.movement_speed modifier remove 1000-20-0-0-1
attribute @s generic.gravity modifier remove 1000-20-0-0-1
attribute @s generic.movement_speed modifier add 1000-20-0-0-1 "crows_sorrow.slow" -100 add_value
attribute @s generic.attack_damage modifier add 1000-20-0-0-1 "crows_sorrow.attack_damage" 10 add_value
attribute @s generic.attack_speed modifier add 1000-20-0-0-1 "crows_sorrow.haste" 4 add_multiplied_total