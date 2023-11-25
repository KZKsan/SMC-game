#>sco:player/result/arrows/hit
#@within advancement sco:arrows/hit
tag @s add hit_arrow
execute on attacker run scoreboard players add @s[tag=!hit_arrow] score_hit_arrows 1
tag @s remove hit_arrow
advancement revoke @s only sco:arrows/hit