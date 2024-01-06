#>sco_items:item_functions/dimensional_sword/particle
#@within sco_items:item_functions/dimensional_sword/hurt
effect give @e[tag=hurt_entity,distance=..17] absorption 3 5
particle block obsidian ~ ~1 ~ 0.1 1 0.1 0.1 20
particle item ender_eye ~ ~1 ~ 0.1 0.3 0.1 0.1 5
particle block black_stained_glass ~ ~1 ~ 0.1 1 0.1 0.2 10
particle ash ~ ~1 ~ 0.1 1 0.1 0.2 10
playsound entity.ender_eye.death record @a[distance=..16] ~ ~ ~ 0.8 1.5 0.1
playsound entity.ender_eye.death record @a[distance=..16] ~ ~ ~ 0.8 1 0.1
playsound entity.ender_eye.launch record @a[distance=..16] ~ ~ ~ 0.8 0.5 0.1
playsound block.glass.break record @a[distance=..16] ~ ~ ~ 0.8 2 0.1
