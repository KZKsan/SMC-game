#>sco_items:item_functions/crows_sorrow/actionbar/can_blink/right
#@within sco_items:item_functions/crows_sorrow/actionbar/can_blink/
data modify storage p-storage _[0].data.item_actionbar append value ',{"text":"<","color": "#AA0000","bold": true}'
scoreboard players remove #i _ 1
execute if score #i _ matches 1.. run function sco_items:item_functions/crows_sorrow/actionbar/can_blink/count/right