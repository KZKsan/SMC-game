#>enderface:gui/processing/kit_memory/save/
#@within enderface:gui/processing/kit_memory/
data remove storage _ data_fetch
data modify storage _ data_fetch.number set from storage p-storage _[0].data.page
execute store result score # _ run function enderface:gui/processing/kit_memory/save/check_inventory
execute if score # _ matches 1 run tellraw @s {"text":">持ち物がいっぱいのため保存できません。","color": "red"}
execute if score # _ matches 1 run playsound block.note_block.bit record @s ~ ~ ~ 0.5 0.5
execute if score # _ matches 1 run return 0
function enderface:gui/processing/kit_memory/save/macro with storage _ data_fetch
playsound entity.player.levelup record @s ~ ~ ~ 0.5 2
tellraw @s {"text":">Kitデータを保存しました。","color": "yellow"}