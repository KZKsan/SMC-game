#>sco:player/result/mvp/rank_make
#@within sco:player/result/mvp/text_mvp
execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_kill result_mvp > @s score_kill_count.total
execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_hit_arrow result_mvp > @s score_hit_arrows.total
execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_damage result_mvp > @s score_damage_dealt.total
execute store result storage sco:data mvp_result.num int 1 run random value 0..5
#data modify storage sco:data mvp_result.num set value 0
data modify storage sco:data mvp_result.flort set value 0b
function sco:player/result/mvp/other/select with storage sco:data mvp_result
function sco:player/result/mvp/other/comparator with storage sco:data mvp_result
execute as @a[predicate=sco:team_join,team=!spectator] if score @s score_kill_count.total = #MVP_kill result_mvp run tag @s add mvp_kill
execute as @a[predicate=sco:team_join,team=!spectator] if score @s score_hit_arrows.total = #MVP_hit_arrow result_mvp run tag @s add mvp_hit_arrow
execute as @a[predicate=sco:team_join,team=!spectator] if score @s score_damage_dealt.total = #MVP_damage result_mvp run tag @s add mvp_damage
execute unless entity @p[tag=mvp_damage] run return 0
scoreboard players operation #MVP_damage_1 result_mvp = #MVP_damage result_mvp
scoreboard players operation #MVP_damage_0.1 result_mvp = #MVP_damage result_mvp
scoreboard players set #10 _ 10
scoreboard players operation #MVP_damage_1 result_mvp /= #10 _
scoreboard players operation #MVP_damage_0.1 result_mvp %= #10 _