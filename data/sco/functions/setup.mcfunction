#>sco:setup
#@within minecraft:load

#>
#@internal
scoreboard objectives add game dummy
scoreboard objectives add gameID dummy
scoreboard objectives add dropped_item dummy
scoreboard objectives add shot_projectiles dummy
scoreboard objectives add respawnTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add food_level food
scoreboard objectives add food_saturation_level dummy
#declare score_holder last gameID

team add red
team add blue
team add random_team
team add spectator

#>
#@public
#declare storage sco:data

#>
#@public
#declare storage sco:config

execute unless data storage sco:config game.can_team_select run data modify storage sco:config game.can_team_select set value 0b
execute unless data storage sco:config game.join run data modify storage sco:config game.join set value 0b
execute unless data storage sco:config game.stage run data modify storage sco:config game.stage set value "test"

#>
#@public
#declare storage sco:input