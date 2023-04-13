#>random/int_uuid
#@api
summon marker ~ ~ ~ {Tags:["random","mcmath_lib"]}
execute store result score random _ run data get entity @e[distance=..1,predicate=entities/random,limit=1] UUID[0]
kill @e[distance=..1,predicate=entities/random,limit=1]