execute as @a run scoreboard players operation MVP_kill result_mvp > @s score_kill_count
execute as @a run scoreboard players operation MVP_hit_arrow result_mvp > @s score_hit_arrows
execute as @a run scoreboard players operation MVP_damage result_mvp > @s score_damage_dealt

scoreboard players remove _ result_mvp 1
execute if score _ result_mvp matches 1.. run function sco:player/result/mvp/rank_make