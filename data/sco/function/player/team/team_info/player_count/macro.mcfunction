#>sco:player/team/team_info/player_count/macro
#@within sco:player/team/team_info/player_count/
$scoreboard players display numberformat team_info.display.1 team_info.red fixed {"text": "$(red_players)","bold": true,"color": "white"}
$scoreboard players display numberformat team_info.display.0 team_info.red fixed {"text": "$(blue_players)","bold": true,"color": "white"}
$scoreboard players display numberformat team_info.display.1 team_info.blue fixed {"text": "$(blue_players)","bold": true,"color": "white"}
$scoreboard players display numberformat team_info.display.0 team_info.blue fixed {"text": "$(red_players)","bold": true,"color": "white"}
$scoreboard players display numberformat team_info.display.1 team_info.spectator fixed {"text": "$(red_players)","bold": true,"color": "white"}
$scoreboard players display numberformat team_info.display.0 team_info.spectator fixed {"text": "$(blue_players)","bold": true,"color": "white"}