#>sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/fire
#@within sco:stage_data/stage/blank_fortress/object/power_bullet_ammo/
particle flash ~ ~ ~ 0 0 0 0 1 force @a[distance=..80]
playsound entity.evoker.prepare_summon record @a[distance=..80] ~ ~ ~ 1 0 0.5
playsound entity.blaze.ambient record @a[distance=..80] ~ ~ ~ 1 0.3 0.5
playsound block.conduit.deactivate record @a[distance=..80] ~ ~ ~ 1 0.2 0.5
playsound entity.generic.explode record @a[distance=..80] ~ ~ ~ 1 1 0.5