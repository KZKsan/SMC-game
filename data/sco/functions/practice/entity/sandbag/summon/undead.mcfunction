#>sco:practice/entity/sandbag/summon/undead
#@private
summon creeper ~ ~-0.5 ~ {Rotation:[0f,0f],DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["sandbag"],Attributes:[{Name:"generic.max_health",Base:500},{Name:"generic.armor",Base:0},{Name:"generic.knockback_resistance",Base:20}],ArmorItems:[{},{},{},{id:"skeleton_skull",Count:1b,tag:{item_functions:{undead:1b}}}],Passengers:[{id:"item_display",Tags:[sandbag.display,set_nbt],item:{id:"skeleton_skull",Count:1b},item_display:"head",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.073f,0f],scale:[1f,1f,1f]}}]}