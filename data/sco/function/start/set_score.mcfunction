#>sco:start/set_score
#@within sco:start/
scoreboard players set #runtime game 0
data modify storage sco:input game set from storage sco:config game
execute if data storage sco:input game{rule:"death_match"} run scoreboard players set #process game 10
execute if data storage sco:input game{rule:"kick_out"} run scoreboard players set #process game 110
execute if data storage sco:input game{rule:"domination"} run scoreboard players set #process game 210
execute if data storage sco:input game{rule:"escalation"} run scoreboard players set #process game 410
execute if data storage sco:input game{friendlyfire:false} run function sco:player/team/friendlyfire/false
execute if data storage sco:input game{friendlyfire:true} run function sco:player/team/friendlyfire/true
execute if data storage sco:input game{show_hp:false} run scoreboard objectives setdisplay below_name
execute if data storage sco:input game{show_hp:true} run scoreboard objectives setdisplay below_name player.HP
execute if data storage sco:input game{show_enemy_team_name:false} run function sco:player/team/show_enemy_team_name/false
execute if data storage sco:input game{show_enemy_team_name:true} run function sco:player/team/show_enemy_team_name/true
execute if data storage sco:input game{collision:0b} run function sco:player/team/collision/false
execute if data storage sco:input game{collision:1b} run function sco:player/team/collision/true
execute if data storage sco:input game{collision:2b} run function sco:player/team/collision/enemy
execute if data storage sco:input game{collision:3b} run function sco:player/team/collision/kin
execute if data storage sco:input game{rule:"death_match"} run function sco:process/death_match/timer_score
execute if data storage sco:input game{rule:"kick_out"} run function sco:process/kick_out/timer_score
execute if data storage sco:input game{rule:"domination"} run function sco:process/domination/timer_score
execute if data storage sco:input game{rule:"escalation"} run function sco:process/escalation/timer_score