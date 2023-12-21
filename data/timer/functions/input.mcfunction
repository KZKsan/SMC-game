#>timer:input
#@public
execute store result score #s_time timer store result bossbar timer: max store result bossbar timer: value run data get storage timer: time
execute store result score #mode timer run data get storage timer: mode

scoreboard players set #tick timer 0

bossbar set timer: visible true
function timer:process/bossbar/