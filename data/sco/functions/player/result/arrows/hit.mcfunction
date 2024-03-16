#>sco:player/result/arrows/hit
#@within advancement sco:arrows/hit
tag @s add hit_arrow
execute on attacker run scoreboard players add @s[tag=!hit_arrow] score_hit_arrows 1
execute on attacker run scoreboard players operation @s[tag=!hit_arrow] score_damage_dealt += @p[tag=hit_arrow] score_damage_teaken
tag @s remove hit_arrow
scoreboard players set @s score_damage_teaken 0
advancement revoke @s only sco:arrows/hit