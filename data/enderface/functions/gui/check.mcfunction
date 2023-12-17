#>enderface:gui/check
#@within enderface:gui/**

## intaract = 1b(click), 2b(shift + click), 3b(offhand), 4b(throw away), 0b(other)
execute store success storage enderface:data gui_intaract.intaract byte 3 if data entity @s Inventory[{Slot:-106b,tag:{enderfaceItem:1b}}]
execute if data storage enderface:data gui_intaract{intaract:0b} store success storage enderface:data gui_intaract.intaract byte 2 if data entity @s Inventory[{tag:{enderfaceItem:1b}}]
execute if data storage enderface:data gui_intaract{intaract:0b} store success storage enderface:data gui_intaract.intaract byte 1 run clear @s #all{enderfaceItem:1b} 0
execute if data storage enderface:data gui_intaract{intaract:0b} at @s anchored eyes store success storage enderface:data gui_intaract.intaract byte 4 run kill @e[predicate=enderface:gui_item,distance=..1.5,limit=1,sort=nearest]
## click = 1b(intaract = 1b,2b) 0b(other)
execute store result storage enderface:data gui_intaract.click byte 1 if data storage enderface:data gui_intaract{intaract:1b}
execute if data storage enderface:data gui_intaract{click:0b} store result storage enderface:data gui_intaract.click byte 1 if data storage enderface:data gui_intaract{intaract:2b}


## item detector
function enderface:gui/check/slot

## test
#function enderface:gui/test

## 
data modify storage enderface:data gui_name set from storage p-storage _[0].data.gui_name
execute at @s run function enderface:gui/processing/main



function enderface:gui_layoutes/load