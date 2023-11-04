#>sco:process/timer_score
#@reads

#declare score_holder $stage_timer
#declare score_holder $shop_timer
#declare score_holder $game_timer
#declare score_holder $additional_timer

scoreboard players set $stage_timer game 60
scoreboard players set $shop_timer game 120
scoreboard players set $game_timer game 600
scoreboard players set $additional_timer game 9999999

#>
#@within sco:process/**
#declare score_holder $stage
#declare score_holder $shop
#declare score_holder $game
#declare score_holder $additional

scoreboard players operation $stage game = $stage_timer game
scoreboard players operation $shop game = $shop_timer game
scoreboard players operation $game game = $game_timer game
scoreboard players operation $additional game = $additional_timer game

scoreboard players set # _ 20
scoreboard players operation $stage game *= # _
scoreboard players operation $shop game *= # _
scoreboard players operation $game game *= # _
scoreboard players add $stage game 20
scoreboard players add $shop game 20
scoreboard players add $game game 20