#>sco:player/team/spectator
#@public
gamemode spectator

clear @s
execute if score runtime game matches 1 run function sco:tp/stage/macro/all_player with storage sco:data

effect give @s instant_health 1 49

tellraw @s {"text": ">現在観戦中です","bold": true,"color": "aqua"}

