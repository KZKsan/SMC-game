#>sco:stage_data/stage/blank_fortress/generate/build/
#@within 


function sco:stage_data/stage/blank_fortress/generate/build/random_seed with storage sco:data stage_generate

function sco:stage_data/stage/blank_fortress/generate/build/respawn

scoreboard players set #allow_tower0 _ 1
data modify storage sco:data stage_generate.generate_memory set value []
execute positioned ~ ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~ ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~ ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~ ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~ ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~16 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~16 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~16 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~16 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~16 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~32 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~32 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~32 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~32 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~32 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~48 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~48 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~48 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~48 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute positioned ~48 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~64 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~64 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~64 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~64 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~64 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~80 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~80 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~80 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~80 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~80 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~96 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~96 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~96 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~96 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~96 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~1 ~ ~-5

execute positioned ~112 ~ ~0 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~112 ~ ~16 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~112 ~ ~32 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~112 ~ ~48 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di
execute positioned ~112 ~ ~64 run function sco:stage_data/stage/blank_fortress/generate/build/walls/di



execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~-4 ~2 ~-4
data modify storage sco:data stage_generate.generate_memory set value []
execute positioned ~ ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~ ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~8 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~8 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~16 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~16 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~24 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~24 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~32 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~32 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~40 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~40 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~48 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~48 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~56 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute positioned ~56 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20


execute positioned ~64 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~64 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~72 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~72 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~80 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~80 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~88 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~88 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~96 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~96 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~104 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~104 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~112 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~112 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20
execute positioned ~120 ~-8 ~00 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~08 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~16 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~24 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~32 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~40 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~48 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~56 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~64 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute positioned ~120 ~-8 ~72 run function sco:stage_data/stage/blank_fortress/generate/build/field/di
execute as @e[type=marker,limit=1,tag=sco_builder] at @s run teleport @s ~2 ~ ~-20




execute as @e[type=marker,limit=1,tag=sco_builder] at @s run setblock ~ ~ ~ redstone_block





kill @e[type=marker,limit=1,tag=sco_builder]


