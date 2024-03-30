#>sco:player/result/mvp/other/comparator
#@within sco:player/result/mvp/rank_make
$execute as @a[predicate=sco:team_join,team=!spectator] run scoreboard players operation #MVP_other result_mvp > @s $(objective)
$execute as @a[predicate=sco:team_join,team=!spectator] if score @s $(objective) = #MVP_other result_mvp run tag @s add mvp_other
