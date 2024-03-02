#>sco:practice/entity/sandbag/
#@within sco:main
execute if entity @s[nbt={HurtTime:9s}] anchored eyes run function sco:practice/entity/health/
execute on passengers if entity @s[tag=set_nbt] on vehicle run function sco:practice/entity/sandbag/set_rotation/
data modify entity @s[nbt={HurtTime:1s}] powered set value 0b