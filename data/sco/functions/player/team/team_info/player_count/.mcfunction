#>sco:player/team/team_info/player_count/
#@api
scoreboard objectives modify team_info.blue displayname {"text": "残り人数","color": "yellow","bold": true}
scoreboard objectives modify team_info.red displayname {"text": "残り人数","color": "yellow","bold": true}

scoreboard objectives setdisplay sidebar.team.blue team_info.blue
scoreboard objectives setdisplay sidebar.team.red team_info.red

function sco:player/team/team_info/player_count/set_display