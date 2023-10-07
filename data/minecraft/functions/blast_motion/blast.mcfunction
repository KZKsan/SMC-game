#>minecraft:blast_motion/blast
#@within minecraft:blast_motion/
summon creeper ^ ^ ^-1 {Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Team:"no_push",Silent:1b}
scoreboard players remove # _ 1
execute if score # _ matches 1.. run function minecraft:blast_motion/blast