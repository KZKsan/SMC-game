#>timer:input
#@public
execute store result score #mode timer run data get storage timer: mode
scoreboard players set #s_time timer 0
execute if score #mode timer matches 1 store result score #s_time timer store result bossbar timer: max store result bossbar timer: value run data get storage timer: time
execute if score #mode timer matches 2 store result score #s_time_max timer store result bossbar timer: max run data get storage timer: time

scoreboard players set #tick timer 0

bossbar set timer: visible true
function timer:process/bossbar/
function timer:process/get_mst_time/