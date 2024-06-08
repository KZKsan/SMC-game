#>sco:process/domination/object/beacon/assist_activator/less/blue
#@within sco:process/domination/object/beacon/assist_activator/
scoreboard players operation #domination.progress_difference game = #domination.red_progress game
scoreboard players operation #domination.progress_difference game -= #domination.blue_progress game
execute if score #domination.progress_difference game >= #domination.assist_threshold game run scoreboard players set #domination.assist_flag game -1
