#>sco:regine/penalty_area/penalty/out
#@within sco:regine/penalty_area/penalty/
#declare damage_type sco:outside_border
particle dust -1 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0 1
scoreboard players add @s regione.penalty_area.penalty.time 1
damage @s[scores={regione.penalty_area.penalty.time=40..}] 3 sco:outside_border
damage @s[scores={regione.penalty_area.penalty.time=100..}] 1000 sco:outside_border
tellraw @s[tag=!rg.penalty_area.penalty.flag,scores={respawnTime=20..}] {"text": ">ステージ範囲外です。","color": "dark_red"}
tag @s add rg.penalty_area.penalty.flag
tag @s add rg.penalty_area.penalty.out