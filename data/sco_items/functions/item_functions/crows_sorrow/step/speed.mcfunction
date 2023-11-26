#>sco_items:item_functions/crows_sorrow/step/speed
#@within sco_items:item_functions/crows_sorrow/holding
scoreboard players set @s crows_sorrow_cooldown 60
attribute @s generic.movement_speed modifier add 1000-20-0-0-1 "crows_sorrow_speed" 10 multiply_base
attribute @s generic.knockback_resistance modifier add 1000-20-0-0-1 "crows_sorrow_knockback_resistance" 10 multiply_base
#effect give @s levitation 1 200
#scoreboard players set @s blast_count 4
#execute at @s rotated ~ 10 run function blast_motion/
particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 20
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 2 0.3
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 1.8 0.3