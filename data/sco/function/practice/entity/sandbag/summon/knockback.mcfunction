#>sco:practice/entity/sandbag/summon/knockback
#@private
summon slime ~ ~-0.5 ~ {Rotation:[0f,0f],DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,Tags:[sandbag,knockback,set_nbt],active_effects:[],attributes:[{id:"generic.follow_range",base:0d},{id:"generic.movement_speed",base:0d},{id:"generic.max_health",base:1000d},{id:"generic.attack_damage",base:0d}],Size:1,Health:800f,Passengers:[{id:"marker",Tags:[sandbag],data:{Pos:[],Rotation:[]}}]}
execute as @e[type=slime,tag=set_nbt,limit=1,distance=..1] run function sco:practice/entity/sandbag/knockback/set_score