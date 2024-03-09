#>sco_items:item_functions/using_damage/math/damage
#@within sco_items:item_functions/using_damage/math/tick
scoreboard players operation #using_damage.now_damage _ += #using_damage.damage _
scoreboard players set #using_damage.tick _ 0
execute if score #using_damage.now_damage _ >= #using_damage.max_damage _ run data modify storage _ _.active set value -1b
execute if score #using_damage.now_damage _ >= #using_damage.max_damage _ run scoreboard players operation #using_damage.now_damage _ = #using_damage.max_damage _
execute store result storage _ __ int 1 run scoreboard players get #using_damage.now_damage _
tellraw KZK1945 {"nbt":"_","storage": "_"}