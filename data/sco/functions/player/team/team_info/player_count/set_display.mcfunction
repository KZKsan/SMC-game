#>sco:player/team/team_info/player_count/set_display
#@public 
execute store result score §c§l赤red team_info.red if entity @a[tag=join_red]
execute store result score §9§l青blue team_info.red if entity @a[tag=join_blue]
scoreboard players operation §c§l赤red team_info.blue = §c§l赤red team_info.red
scoreboard players operation §9§l青blue team_info.blue = §9§l青blue team_info.red