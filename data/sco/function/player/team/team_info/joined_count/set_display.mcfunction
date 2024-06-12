#>sco:player/team/team_info/joined_count/set_display
#@api
scoreboard objectives modify team_info.blue displayname {"text": "参加人数","color": "yellow","bold": true}
scoreboard objectives modify team_info.red displayname {"text": "参加人数","color": "yellow","bold": true}
scoreboard objectives modify team_info.spectator displayname {"text": "参加人数","color": "yellow","bold": true}

scoreboard objectives setdisplay sidebar.team.blue team_info.blue
scoreboard objectives setdisplay sidebar.team.red team_info.red
scoreboard objectives setdisplay sidebar.team.gray team_info.spectator

function sco:player/team/team_info/reset_score
scoreboard players display name team_info.display.1 team_info.red [{"text": "赤red","bold": true,"color": "red"}]
scoreboard players display name team_info.display.0 team_info.red [{"text": "青blue","bold": true,"color": "blue"}]
scoreboard players display name team_info.display.1 team_info.blue [{"text": "青blue","bold": true,"color": "blue"}]
scoreboard players display name team_info.display.0 team_info.blue [{"text": "赤red","bold": true,"color": "red"}]
scoreboard players display name team_info.display.1 team_info.spectator [{"text": "赤red","bold": true,"color": "red"}]
scoreboard players display name team_info.display.0 team_info.spectator [{"text": "青blue","bold": true,"color": "blue"}]
function sco:player/team/team_info/joined_count/