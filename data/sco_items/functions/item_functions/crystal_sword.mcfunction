#>sco_items:item_functions/crystal_sword
#@within advancement sco_items:item_functions/crystal_sword
execute anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ rotated as @s run particle block{block_state:"cyan_stained_glass"} ^ ^ ^1 0 0 0 0.3 5 normal
execute anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ rotated as @s run particle block{block_state:"ice"} ^ ^ ^1 0.1 0.3 0.1 0.1 10 normal
execute anchored eyes rotated ~ 0 positioned ^ ^-0.4 ^ rotated as @s run particle firework ^ ^ ^1 0.1 0.3 0.1 0.1 10 normal
playsound block.glass.break record @a[distance=..16] ~ ~ ~ 0.5 1 0.2
playsound block.glass.break record @a[distance=..16] ~ ~ ~ 0.5 0.5 0.2
playsound block.glass.break record @a[distance=..16] ~ ~ ~ 0.5 1.5 0.2
playsound block.amethyst_block.step record @a[distance=..16] ~ ~ ~ 0.5 1 0.2
playsound entity.zombie.break_wooden_door record @a[distance=..16] ~ ~ ~ 0.2 2 0.01
advancement revoke @s only sco_items:item_functions/crystal_sword