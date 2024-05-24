#>sco:process/domination/object/beacon/assist_activator/
#@within sco:process/domination/object/beacon/
execute if score #domination.assist_flag game matches 0 if score #domination.blue_progress game > #domination.red_progress game run function sco:process/domination/object/beacon/assist_activator/less/red
execute if score #domination.assist_flag game matches 0 if score #domination.blue_progress game <= #domination.red_progress game run function sco:process/domination/object/beacon/assist_activator/less/blue

execute if score #domination.assist_flag game matches 1 run function sco:process/domination/object/beacon/assist_activator/disable/red
execute if score #domination.assist_flag game matches -1 run function sco:process/domination/object/beacon/assist_activator/disable/blue
