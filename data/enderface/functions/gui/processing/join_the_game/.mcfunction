#>enderface:gui/processing/join_the_game/
#@within enderface:gui/processing/main

execute if score process game matches 0 if data storage enderface:data gui_intaract{click:1b,Item:{Slot:9b}} run function enderface:gui/processing/join_the_game/random_team
execute if score process game matches 0 if data storage enderface:data gui_intaract{click:1b,Item:{Slot:10b}} run function enderface:gui/processing/join_the_game/red
execute if score process game matches 0 if data storage enderface:data gui_intaract{click:1b,Item:{Slot:11b}} run function enderface:gui/processing/join_the_game/blue
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:17b}} run function enderface:gui/processing/join_the_game/spectator

execute unless score process game matches 0 if data storage sco:input game{join:1b} if data storage enderface:data gui_intaract{click:1b,Item:{Slot:9b}} run function enderface:gui/processing/join_the_game/random_team
execute unless score process game matches 0 if data storage sco:input game{join:1b} if data storage enderface:data gui_intaract{click:1b,Item:{Slot:10b}} run function enderface:gui/processing/join_the_game/red
execute unless score process game matches 0 if data storage sco:input game{join:1b} if data storage enderface:data gui_intaract{click:1b,Item:{Slot:11b}} run function enderface:gui/processing/join_the_game/blue
execute unless score process game matches 0 if data storage sco:input game{join:0b} if data storage enderface:data gui_intaract{click:1b,Item:{Slot:9b}} run function enderface:gui/processing/join_the_game/block_the_game
execute unless score process game matches 0 if data storage sco:input game{join:0b} if data storage enderface:data gui_intaract{click:1b,Item:{Slot:10b}} run function enderface:gui/processing/join_the_game/block_the_game
execute unless score process game matches 0 if data storage sco:input game{join:0b} if data storage enderface:data gui_intaract{click:1b,Item:{Slot:11b}} run function enderface:gui/processing/join_the_game/block_the_game