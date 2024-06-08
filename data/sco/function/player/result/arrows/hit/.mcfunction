#>sco:player/result/arrows/hit/
#@within advancement sco:arrows/hit
tag @s add hit_arrow
execute on attacker run function sco:player/result/arrows/hit/math
tag @s remove hit_arrow
advancement revoke @s only sco:arrows/hit