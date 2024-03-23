
function sco:player/result/mvp/rank_make

execute as @a if score @s score_kill_count = #MVP_kill result_mvp run tellraw @a [{"text": "殺戮の王者：","color": "gold","bold": true},{"selector":"@s","bold": true,"color": "aqua"},{"text": "　キル数：","color": "gold"},{"score": {"name": "@s","objective": "score_kill_count"},"color": "aqua"}]
execute as @a if score @s score_hit_arrows = #MVP_hit_arrow result_mvp run tellraw @a [{"text": "射撃の王者：","color": "gold","bold": true},{"selector":"@s","bold": true,"color": "aqua"},{"text": "　弓矢ヒット数：","color": "gold"},{"score": {"name": "@s","objective": "score_hit_arrows"},"color": "aqua"}]
execute as @a if score @s score_damage_dealt = #MVP_damage result_mvp run tellraw @a [{"text": "損傷の王者：","color": "gold","bold": true},{"selector":"@s","bold": true,"color": "aqua"},{"text": "　ダメージ量：","color": "gold"},{"score": {"name": "@s","objective": "score_damage_dealt"},"color": "aqua"}]

scoreboard players reset #MVP_kill result_mvp
scoreboard players reset #MVP_hit_arrow result_mvp
scoreboard players reset #MVP_damage result_mvp