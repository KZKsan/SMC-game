#>random/int_uuid
#@api
#@output score $random _
summon marker ~ ~ ~ {Tags:["random"]}
execute store result score $random _ run data get entity @e[distance=..1,tag=random,limit=1] UUID[0]
kill @e[distance=..1,tag=random,limit=1]