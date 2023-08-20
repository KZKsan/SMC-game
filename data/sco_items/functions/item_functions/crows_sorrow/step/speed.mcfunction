#>sco_items:item_functions/crows_sorrow/step/speed
#@within sco_items:item_functions/crows_sorrow/holding
scoreboard players set @s crows_sorrow_cooldown 60
effect give @s speed 1 50
effect give @s levitation 1 200
particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 20
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 2 0.3
playsound entity.horse.jump record @a[distance=..16] ~ ~ ~ 0.8 1.8 0.3