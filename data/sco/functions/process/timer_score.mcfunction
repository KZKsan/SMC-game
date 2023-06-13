#>sco:process/timer_score
#@reads
#>
#@within sco:process/**
#declare score_holder $stage
#declare score_holder $shop
#declare score_holder $game
#declare score_holder $additional

scoreboard players add $stage game 620
scoreboard players add $shop game 2420
scoreboard players add $game game 6020
scoreboard players add $additional game 9999999

#declare score_holder $stage_timer
#declare score_holder $shop_timer
#declare score_holder $game_timer
#declare score_holder $additional_timer

scoreboard players add $stage_timer game 30
scoreboard players add $shop_timer game 120
scoreboard players add $game_timer game 300
scoreboard players add $additional_timer game 9999999