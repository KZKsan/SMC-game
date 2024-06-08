#>sco:process/domination/respawn/wait_time
#@within 
scoreboard players remove @s respawn.wait_time 1
execute if entity @s[scores={respawn.wait_time=60}] run function sco:messeges/respawn
execute if entity @s[scores={respawn.wait_time=60}] run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if entity @s[scores={respawn.wait_time=58}] run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if entity @s[scores={respawn.wait_time=56}] run playsound block.note_block.bell record @s ~ ~ ~ 0.6 1 1
execute if entity @s[scores={respawn.wait_time=0}] run function sco:process/domination/respawn/return_shop