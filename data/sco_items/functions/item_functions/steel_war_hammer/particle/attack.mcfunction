#>sco_items:item_functions/steel_war_hammer/particle/attack
#@within sco_items:item_functions/steel_war_hammer/attack
playsound entity.iron_golem.hurt record @a[distance=..16] ~ ~1 ~ 0.8 0.5 0.2
playsound block.netherite_block.break record @a[distance=..16] ~ ~1 ~ 0.7 0.5 0.2
playsound entity.generic.explode record @a[distance=..16] ~ ~1 ~ 0.6 0.5 0.01
playsound entity.generic.explode record @a[distance=..16] ~ ~1 ~ 0.6 1 0.01
playsound entity.generic.explode record @a[distance=..16] ~ ~1 ~ 0.6 1.5 0.01
particle flash ~ ~1 ~ 0 0 0 0 1 normal
particle explosion ~ ~1 ~ 0 0 0 0 1 normal