#>setup
#@within tag/function load
#@user
scoreboard objectives add _ dummy

scoreboard objectives add sneaked dummy
scoreboard objectives add sitting dummy

scoreboard objectives add UUID.0 dummy
scoreboard objectives add UUID.1 dummy
scoreboard objectives add UUID.2 dummy
scoreboard objectives add UUID.3 dummy

scoreboard objectives add Owner.0 dummy
scoreboard objectives add Owner.1 dummy
scoreboard objectives add Owner.2 dummy
scoreboard objectives add Owner.3 dummy

scoreboard objectives add remove_item_count dummy

function blast_motion/lib

#declare score_holder $random
#declare score_holder $ranmin
#declare score_holder $ranmax

#declare storage _