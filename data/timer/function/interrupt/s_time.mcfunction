#>timer:interrupt/s_time
#@public

execute store result score #s_time timer run data get storage timer: set
execute store result score # _ run bossbar get timer: max
execute if score # _ < #s_time timer store result bossbar timer: max run data get storage timer: set
scoreboard players set #tick timer 0
execute if score #s_time timer matches ..0 run bossbar set timer: visible false
function timer:process/bossbar/
function timer:process/get_mst_time/
data remove storage timer: set