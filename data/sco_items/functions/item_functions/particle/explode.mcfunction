#>sco_items:item_functions/particle/explode
#@within advancement sco_items:item_functions/particle/explode
particle explosion ^ ^ ^0.5 0 0 0 0 1 normal
playsound entity.player.attack.knockback record @a[distance=..16] ~ ~ ~ 0.5 2 0.2
playsound entity.zombie.infect record @a[distance=..16] ~ ~ ~ 0.5 1 0.2
playsound block.note_block.basedrum record @a[distance=..16] ~ ~ ~ 0.5 2 0.2
advancement revoke @s only sco_items:item_functions/particle/explode