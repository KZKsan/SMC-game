#>timer:process/remove
#@within timer:
scoreboard players set #tick timer 0
execute if score #s_time timer matches 0 run bossbar set timer: visible false
execute if score #s_time timer matches -2 run function timer:stop
execute if score #s_time timer matches -1.. run scoreboard players remove #s_time timer 1
function timer:process/bossbar/