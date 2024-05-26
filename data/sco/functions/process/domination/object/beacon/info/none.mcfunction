#>sco:process/domination/object/beacon/info/none
#@within sco:process/domination/object/beacon/
tag @s add origin
scoreboard players set #100 _ 100
scoreboard players operation # _ = #domination.capture_time game
scoreboard players operation # _ -= @s stage_object.count.1
scoreboard players operation # _ *= #100 _
scoreboard players operation # _ /= #domination.capture_time game
execute as @a[predicate=sco:team_join,distance=..45,predicate=sneaking] at @s run function sco:process/domination/object/beacon/info/set/

tag @s remove origin