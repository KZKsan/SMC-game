#>sco_items:item_functions/steel_war_hammer/kill
#@wihtin advancement sco_items:item_functions/steel_war_hammer/kill
playsound block.bell.use record @a[distance=..16] ~ ~ ~ 0.8 0.5 0.2
playsound entity.iron_golem.damage record @a[distance=..16] ~ ~ ~ 0.5 0.5 0.2
playsound block.netherite_block.break record @a[distance=..16] ~ ~ ~ 0.8 0.5 0.2
playsound entity.generic.explode record @a[distance=..16] ~ ~ ~ 0.6 0.5 0.01
playsound entity.generic.explode record @a[distance=..16] ~ ~ ~ 0.6 1 0.01
playsound entity.generic.explode record @a[distance=..16] ~ ~ ~ 0.6 1.5 0.01
playsound block.beacon.deactivate record @a[distance=..16] ~ ~ ~ 0.4 0.5 0.01
playsound item.trident.thunder record @a[distance=..16] ~ ~ ~ 0.6 0.5 0.01
playsound entity.zombie.break_wooden_door record @a[distance=..16] ~ ~ ~ 0.8 0.5 0.1
playsound entity.blaze.death record @a[distance=..16] ~ ~ ~ 0.4 0.5 0.1
particle damage_indicator ~ ~1 ~ 0.1 0.3 0.1 0.4 30 normal
particle block{block_state:"redstone_block"} ~ ~1 ~ 0.1 0.3 0.1 1 150 normal
particle explosion ~ ~1 ~ 0 0 0 0.1 1 normal
advancement revoke @s only sco_items:item_functions/steel_war_hammer/kill