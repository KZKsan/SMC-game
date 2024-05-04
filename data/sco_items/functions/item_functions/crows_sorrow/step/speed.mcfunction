#>sco_items:item_functions/crows_sorrow/step/speed
#@within sco_items:item_functions/crows_sorrow/holding
function sco_items:item_functions/crows_sorrow/step/reset
scoreboard players set @s crows_sorrow_cooldown 100
scoreboard players add @s crows_sorrow_count 1
attribute @s generic.movement_speed modifier add 1000-20-0-0-1 "crows_sorrow.speed" 10 add_multiplied_base
attribute @s generic.knockback_resistance modifier add 1000-20-0-0-1 "crows_sorrow.knockback_resistance" 10 add_value
attribute @s generic.jump_strength modifier add 1000-20-0-0-1 "crows_sorrow.jump_strength" -1000 add_multiplied_total
attribute @s generic.gravity modifier add 1000-20-0-0-1 "crows_sorrow.gravity" 100 add_multiplied_base


#effect give @s levitation 1 200
#scoreboard players set @s blast_count 4
#execute at @s rotated ~ 10 run function blast_motion/
particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 20
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 2 0.3
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 1.8 0.3