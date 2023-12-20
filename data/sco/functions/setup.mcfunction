#>sco:setup
#@within minecraft:load

#>
#@internal
scoreboard objectives add age dummy
scoreboard objectives add game dummy
scoreboard objectives add gameID dummy
scoreboard objectives add processID dummy
scoreboard objectives add dropped_item dummy
scoreboard objectives add shot_projectiles dummy
scoreboard objectives add respawnTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add food_level food
scoreboard objectives add food_saturation_level dummy
scoreboard objectives add regine.x1 dummy
scoreboard objectives add regine.x2 dummy
scoreboard objectives add regine.y1 dummy
scoreboard objectives add regine.y2 dummy
scoreboard objectives add regine.z1 dummy
scoreboard objectives add regine.z2 dummy
scoreboard objectives add team_info.red dummy
scoreboard objectives add team_info.blue dummy
scoreboard objectives add team_info.spectator dummy
scoreboard objectives add player.HP health
#declare score_holder last gameID

scoreboard objectives modify player.HP displayname "HP"


#>
#@within sco:player/result/**
scoreboard objectives add score_kill_count playerKillCount
scoreboard objectives add score_death_count deathCount
scoreboard objectives add score_damage_dealt custom:damage_dealt
scoreboard objectives add score_damage_teaken custom:damage_taken
scoreboard objectives add score_shot_arrows dummy
scoreboard objectives add score_hit_arrows dummy
scoreboard objectives add score_hit_rate dummy
scoreboard objectives add shot_arrow dummy


team add red
team add blue
team add random_team
team add spectator
team add mode.practice

team modify red color red
team modify blue color blue
team modify spectator color gray
team modify random_team prefix "[参加中]"
team modify mode.practice prefix {"text":"[訓練中]","color": "green"}
team modify mode.practice friendlyFire false

#>
#@public
#declare storage sco:data

#>
#@public
#declare storage sco:config

execute unless data storage sco:config game.rule run data modify storage sco:config game.rule set value "death_match"
execute unless data storage sco:config game.friendlyfire run data modify storage sco:config game.friendlyfire set value false
execute unless data storage sco:config game.show_hp run data modify storage sco:config game.show_hp set value false
execute unless data storage sco:config game.can_team_select run data modify storage sco:config game.can_team_select set value 0b
execute unless data storage sco:config game.join run data modify storage sco:config game.join set value 0b
execute unless data storage sco:config stage run data modify storage sco:config stage set value "sco_random"

#>
#@public
#declare storage sco:input


#>
# reset stage_tables
function sco:stage_data/stage_tables/death_match