#>enderface:gui/processing/game_settings/rule_settings/updata_rule
#@within enderface:gui/processing/game_settings/rule_settings/
playsound ui.button.click record @s ~ ~ ~ 0.5 1
data modify storage sco:config stage set value "sco_random"
data modify storage sco:data stage_tables.random set value []