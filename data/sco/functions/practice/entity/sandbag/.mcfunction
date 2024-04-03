#>sco:practice/entity/sandbag/
#@within sco:main
scoreboard players add @s[tag=knockback,scores={age=1..}] age 1
execute if entity @s[nbt={HurtTime:9s}] anchored eyes run function sco:practice/entity/health/
execute on passengers if entity @s[tag=set_nbt] on vehicle run function sco:practice/entity/sandbag/set_rotation/
execute if entity @s[tag=knockback,nbt={HurtTime:9s},tag=!flying] run function sco:practice/entity/sandbag/knockback/
execute if entity @s[tag=knockback,nbt={HurtTime:0s,OnGround:1b},tag=flying] run function sco:practice/entity/sandbag/knockback/end
execute if entity @s[scores={age=60..}] run function sco:practice/entity/sandbag/knockback/return_pos
execute if entity @s[type=marker] if function sco:practice/entity/sandbag/knockback/vehicle run kill
data modify entity @s[nbt={HurtTime:1s}] powered set value 0b