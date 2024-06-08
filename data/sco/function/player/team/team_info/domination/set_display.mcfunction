#>sco:player/team/team_info/domination/set_display
#@api
scoreboard objectives modify team_info.blue displayname {"text": "戦況","color": "yellow","bold": true}
scoreboard objectives modify team_info.red displayname {"text": "戦況","color": "yellow","bold": true}
scoreboard objectives modify team_info.spectator displayname {"text": "戦況","color": "yellow","bold": true}

scoreboard objectives setdisplay sidebar.team.blue team_info.blue
scoreboard objectives setdisplay sidebar.team.red team_info.red
scoreboard objectives setdisplay sidebar.team.gray team_info.spectator

function sco:player/team/team_info/reset_score
scoreboard players display name team_info.display.1 team_info.red [{"text": "             "}]
scoreboard players display name team_info.display.1 team_info.blue [{"text": "             "}]
scoreboard players display name team_info.display.1 team_info.spectator [{"text": "             "}]

scoreboard players display numberformat team_info.display.1 team_info.red blank
scoreboard players display numberformat team_info.display.1 team_info.blue blank
scoreboard players display numberformat team_info.display.1 team_info.spectator blank
scoreboard players display numberformat team_info.display.0 team_info.red blank
scoreboard players display numberformat team_info.display.0 team_info.blue blank
scoreboard players display numberformat team_info.display.0 team_info.spectator blank
function sco:player/team/team_info/domination/