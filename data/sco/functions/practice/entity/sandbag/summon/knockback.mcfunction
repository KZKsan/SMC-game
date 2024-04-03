#>sco:practice/entity/sandbag/summon/knockback
#@private
summon slime ~ ~-0.5 ~ {Rotation:[0f,0f],DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,Tags:[sandbag,knockback,set_nbt],active_effects:[],Attributes:[{Name:"generic.follow_range",Base:0d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.max_health",Base:500d},{Name:"generic.attack_damage",Base:0d}],Size:1,Health:500f,Passengers:[{id:"marker",Tags:[sandbag],data:{Pos:[],Rotation:[]}}]}
execute as @e[type=slime,tag=set_nbt,limit=1,distance=..1] run function sco:practice/entity/sandbag/knockback/set_score