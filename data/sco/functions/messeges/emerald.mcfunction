#>sco:messeges/emerald
#@api
execute store result score # _ run clear @s emerald 0
execute if score # _ matches 1.. run tellraw @s [{"text": "[","bold": true},{"translate":"item.minecraft.emerald","bold": true},{"text": "]","bold": true},{"text": "がまだ手持ちに残ています！", "color": "red","bold": true}]