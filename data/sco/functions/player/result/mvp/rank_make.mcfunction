execute as @a[predicate=sco:team_join] run scoreboard players operation #MVP_kill result_mvp > @s score_kill_count
execute as @a[predicate=sco:team_join] run scoreboard players operation #MVP_hit_arrow result_mvp > @s score_hit_arrows
execute as @a[predicate=sco:team_join] run scoreboard players operation #MVP_damage result_mvp > @s score_damage_dealt