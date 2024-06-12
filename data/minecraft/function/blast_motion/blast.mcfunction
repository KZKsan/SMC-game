#>blast_motion/blast
#@within blast_motion/
summon armor_stand ^ ^ ^-1 {Tags:[blast_motion.stand],active_effects:[{id:"wind_charged",amplifier:0,duration:-1}]}
scoreboard players remove # _ 1
execute if score # _ matches 1.. run function blast_motion/blast