#>enderface:gui/processing/kit_memory/
#@within enderface:gui/processing/main

execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:6b}} run function enderface:gui/processing/kit_memory/save/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:18b}} run function enderface:gui/processing/kit_memory/load/
execute if data storage enderface:data gui_intaract{click:1b,Item:{Slot:8b}} run function enderface:gui/processing/kit_memory/delete/
