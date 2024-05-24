#>sco:process/domination/game_reset
#@within sco:process/domination/**

scoreboard players set #flag game 0
scoreboard players set #red_score game 0
scoreboard players set #blue_score game 0
execute store result score #domination.capture_time game run data get storage sco:data domination.capture_time
execute store result score #domination.progress_time game run data get storage sco:data domination.progress_time
execute store result score #domination.assist_threshold game run data get storage sco:data domination.assist_threshold
scoreboard players set #domination.assist_flag game 0
scoreboard players set #domination.advantage game 0
scoreboard players set #domination.red_capture_count game 0
scoreboard players set #domination.blue_capture_count game 0
scoreboard players set #domination.red_progress game 0
scoreboard players set #domination.blue_progress game 0
scoreboard players set #domination.red_progress.display game 0
scoreboard players set #domination.blue_progress.display game 0