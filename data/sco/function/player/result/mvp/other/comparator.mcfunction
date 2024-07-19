#>sco:player/result/mvp/other/comparator
#@within sco:player/result/mvp/rank_make
$execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_other result_mvp > @s $(objective).total
$execute as @a[predicate=sco:team_join,team=!spectator] if score @s $(objective).total = #MVP_other result_mvp run tag @s add mvp_other
execute unless data storage sco:data mvp_result{objective:"score_damage_blocked_by_shield"} run return 0
scoreboard players operation #MVP_other_1 result_mvp = #MVP_other result_mvp
scoreboard players operation #MVP_other_0.1 result_mvp = #MVP_other result_mvp
scoreboard players set #10 _ 10
scoreboard players operation #MVP_other_1 result_mvp /= #10 _
scoreboard players operation #MVP_other_0.1 result_mvp %= #10 _
data modify storage sco:data mvp_result.flort set value 1b