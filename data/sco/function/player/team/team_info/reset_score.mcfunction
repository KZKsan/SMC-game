#>sco:player/team/team_info/reset_score
#@within 
scoreboard players reset #team_info.blue_players
scoreboard players reset #team_info.red_players
scoreboard players reset #team_info.scores

scoreboard players set team_info.display.1 team_info.red 1
scoreboard players set team_info.display.0 team_info.red 0
scoreboard players set team_info.display.1 team_info.blue 1
scoreboard players set team_info.display.0 team_info.blue 0
scoreboard players set team_info.display.1 team_info.spectator 1
scoreboard players set team_info.display.0 team_info.spectator 0
scoreboard players display numberformat team_info.display.0 team_info.blue
scoreboard players display numberformat team_info.display.1 team_info.blue
scoreboard players display numberformat team_info.display.0 team_info.red
scoreboard players display numberformat team_info.display.1 team_info.red
scoreboard players display numberformat team_info.display.0 team_info.spectator
scoreboard players display numberformat team_info.display.1 team_info.spectator

scoreboard players reset §c§l赤red
scoreboard players reset §9§l青blue