#>sco:player/result/
#@api

scoreboard players set #10 _ 10
scoreboard players operation #damage_1 _ = @s score_damage_dealt
scoreboard players operation #damage_0.1 _ = @s score_damage_dealt
scoreboard players operation #damage_1 _ /= #10 _
scoreboard players operation #damage_0.1 _ %= #10 _

function sco:player/result/arrows/math

scoreboard players operation #hit_rate_1 _ = @s score_hit_rate
scoreboard players operation #hit_rate_0.1 _ = @s score_hit_rate
scoreboard players operation #hit_rate_1 _ /= #10 _
scoreboard players operation #hit_rate_0.1 _ %= #10 _

function sco:player/result/mvp/text_mvp

tellraw @s "----------------------------"

tellraw @s [{"selector":"@s"},{"text": "'s results\n","color": "white"}]

tellraw @s [{"text": "Kill: "},{"score":{"name": "@s","objective": "score_kill_count"},"color": "gold"}]
tellraw @s [{"text": "Death: "},{"score":{"name": "@s","objective": "score_death_count"},"color": "gold"}]
tellraw @s [{"text": "Damage: "},{"score":{"name": "#damage_1","objective": "_"},"color": "gold"},{"text": ".","color": "gold"},{"score":{"name": "#damage_0.1","objective": "_"},"color": "gold"}]

tellraw @s [{"text": "Hit rate: "},{"score":{"name": "#hit_rate_1","objective": "_"},"color": "gold"},{"text": ".","color": "gold"},{"score":{"name": "#hit_rate_0.1","objective": "_"},"color": "gold"},"%(",{"score":{"name": "@s", "objective": "score_hit_arrows"},"color": "gray"},"/",{"score":{"name": "@s", "objective": "score_shot_arrows"},"color": "gray"},")"]

tellraw @s "----------------------------"