#>sco:player/result/reset_scores/all
#@public
scoreboard players set @a[predicate=sco:team_join,team=!spectator] score_kill_count 0
scoreboard players set @a[predicate=sco:team_join,team=!spectator] score_death_count 0
scoreboard players set @a[predicate=sco:team_join,team=!spectator] score_damage_dealt 0
scoreboard players set @a[predicate=sco:team_join,team=!spectator] score_shot_projectiles 0
scoreboard players set @a[predicate=sco:team_join,team=!spectator] score_hit_projectiles 0
