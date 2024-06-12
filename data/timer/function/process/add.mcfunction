#>timer:process/add
#@within timer:
scoreboard players set #tick timer 0
execute if score #s_time timer >= #s_time_max timer run function timer:stop
execute if score #s_time timer < #s_time_max timer run scoreboard players add #s_time timer 1
function timer:process/bossbar/