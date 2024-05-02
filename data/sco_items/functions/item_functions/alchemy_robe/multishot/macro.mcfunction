
execute store result storage sco_items:data alchemy_robe.sin_a int 1 run data get storage trigonometricf sin[15]
execute store result storage sco_items:data alchemy_robe._sin_a int 1 run data get storage trigonometricf sin[-15]
execute store result storage sco_items:data alchemy_robe.cos_a int 1 run data get storage trigonometricf cos[15]
execute store result storage sco_items:data alchemy_robe._cos_a int 1 run data get storage trigonometricf cos[-15]

$execute store result storage sco_items:data alchemy_robe.sin_b int 1 run data get storage trigonometricf sin[$(rotation_x)] 0.001
$execute store result storage sco_items:data alchemy_robe._sin_b int 1 run data get storage trigonometricf sin[$(_rotation_x)] 0.001
$execute store result storage sco_items:data alchemy_robe.cos_b int 1 run data get storage trigonometricf cos[$(rotation_x)] 0.001
$execute store result storage sco_items:data alchemy_robe._cos_b int 1 run data get storage trigonometricf cos[$(_rotation_x)] 0.001
#tellraw @p {"nbt":"alchemy_robe.sin","storage":"sco_items:data"}
execute summon potion run function sco_items:item_functions/alchemy_robe/multishot/left with storage sco_items:data alchemy_robe
execute summon potion run function sco_items:item_functions/alchemy_robe/multishot/right with storage sco_items:data alchemy_robe

