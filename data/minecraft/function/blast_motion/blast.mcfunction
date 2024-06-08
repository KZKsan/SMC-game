#>minecraft:blast_motion/blast
#@within minecraft:blast_motion/
summon creeper ^ ^ ^-0.01 {Fuse:0s,ExplosionRadius:-1b,Invulnerable:1b,Team:"no_push",Silent:1b,PersistenceRequired:1b}
scoreboard players remove # _ 1
execute if score # _ matches 1.. run function minecraft:blast_motion/blast