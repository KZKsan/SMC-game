#>enderface:gui/processing/game_settings/rule_settings/
#@within enderface:gui/processing/main
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:12b}} if function enderface:gui/processing/game_settings/rule_settings/death_match run function enderface:gui/processing/game_settings/rule_settings/set
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:14b}} if function enderface:gui/processing/game_settings/rule_settings/kick_out run function enderface:gui/processing/game_settings/rule_settings/set