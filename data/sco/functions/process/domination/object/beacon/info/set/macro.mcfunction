#>sco:process/domination/object/beacon/info/set/macro
#@within sco:process/domination/object/beacon/info/set/
$execute anchored eyes unless entity @e[type=marker,tag=beacon.info.marker,sort=nearest,limit=1,nbt={data:{UUID:$(UUID)}},scores={stage_object.count.0=$(num)}] run function sco:process/domination/object/beacon/info/set/summon
$execute as @e[type=marker,tag=beacon.info.marker,sort=nearest,limit=1,nbt={data:{UUID:$(UUID)}},scores={stage_object.count.0=$(num)}] on vehicle run tag @s add target
execute anchored eyes run function sco:process/domination/object/beacon/info/set/teleport