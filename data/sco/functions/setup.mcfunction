#>sco:setup
#@within minecraft:load

#>
#@internal
scoreboard objectives add game dummy
scoreboard objectives add gameID dummy
scoreboard objectives add dropped_item dummy
#declare score_holder last gameID

team add red
team add blue
team add random_team
team add spectator

#>
#@public
#declare storage sco:data