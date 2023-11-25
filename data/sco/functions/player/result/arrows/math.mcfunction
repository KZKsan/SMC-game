#>sco:player/result/arrows/math
#@api
scoreboard players operation @s score_hit_rate = @s score_hit_arrows
scoreboard players set #1000 _ 1000
scoreboard players operation @s score_hit_rate *= #1000 _
scoreboard players operation @s score_hit_rate /= @s score_shot_arrows