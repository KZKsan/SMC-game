#>sco:player/team/spectator
#@public
gamemode spectator

clear @s

effect give @s instant_health 1 49

tellraw @s {"text": ">現在観戦中です","bold": true,"color": "aqua"}

