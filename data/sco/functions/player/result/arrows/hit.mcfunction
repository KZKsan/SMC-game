#>sco:player/result/arrows/hit
#@within advancement sco:arrows/hit
execute on attacker run scoreboard players add @s score_hit_arrows 1
advancement revoke @s only sco:arrows/hit