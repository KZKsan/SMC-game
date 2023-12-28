#>enderface:gui/processing/game_settings/can_team_select/move_team
#@within enderface:gui/processing/game_settings/can_team_select/
tag @a[predicate=sco:game_join] add game_join
team empty red
team empty blue
team empty random_team
team join random_team @a[tag=game_join]
tag @a[tag=game_join] remove game_join