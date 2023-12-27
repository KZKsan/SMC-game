#>enderface:gui/processing/game_settings/
#@within enderface:gui/processing/main
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:11b}} run function enderface:gui/processing/game_settings/can_team_select/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:12b}} run function enderface:gui/processing/game_settings/show_hp/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:13b}} run function enderface:gui/processing/game_settings/show_enemy_team_name/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:14b}} run function enderface:gui/processing/game_settings/friendlyfire/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:17b}} run function enderface:gui/processing/game_settings/start_game/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:7b}} run function enderface:gui/processing/game_settings/announce/settings
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:8b}} run function enderface:gui/processing/game_settings/announce/start_game
