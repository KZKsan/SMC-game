#>sco:player/result/arrows/hit/math
#@within sco:player/result/arrows/hit/
scoreboard players add @s[tag=!hit_arrow] score_hit_arrows 1
execute if score @p[tag=hit_arrow] score_damage_teaken matches 1.. run function sco:player/damage_detector/update
scoreboard players operation @s[tag=!hit_arrow] score_damage_dealt += @p[tag=hit_arrow] score_damage_detected
scoreboard players operation @s[tag=!hit_arrow] respawn.penalty.damage_dealt += @p[tag=hit_arrow] score_damage_detected