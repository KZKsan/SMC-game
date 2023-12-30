#>sco:regine/penalty_area/penalty/out
#@within sco:regine/penalty_area/penalty/
particle dust -1 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0 1
scoreboard players add @s regione.penalty_area.penalty.time 1
damage @s 2.5 outside_border
damage @s[scores={regione.penalty_area.penalty.time=100..}] 1000 outside_border
tellraw @s[tag=!rg.penalty_area.penalty.flag] {"text": ">ステージ範囲外です。","color": "dark_red"}
tag @s add rg.penalty_area.penalty.flag