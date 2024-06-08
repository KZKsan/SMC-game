#>sco:player/team/team_info/team_score/macro
#@within sco:player/team/team_info/team_score/

$scoreboard players display name team_info.display.0 team_info.red [{"text": "   $(red_score)","bold": true,"color": "red"},{"text": " ― ", "color": "white"},{"text": "$(blue_score)","bold": true,"color": "blue"}]
$scoreboard players display name team_info.display.0 team_info.blue [{"text": "   $(blue_score)","bold": true,"color": "blue"},{"text": " ― ", "color": "white"},{"text": "$(red_score)","bold": true,"color": "red"}]
$scoreboard players display name team_info.display.0 team_info.spectator [{"text": "   $(red_score)","bold": true,"color": "red"},{"text": " ― ", "color": "white"},{"text": "$(blue_score)","bold": true,"color": "blue"}]