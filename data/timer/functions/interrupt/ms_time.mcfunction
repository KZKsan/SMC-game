#>timer:interrupt/ms_time
#@public

scoreboard players set #100 _ 100
function timer:convert/str_ms_time with storage timer:
execute store result score # _ run data get storage timer: set_ms
execute store result score #s_time timer run scoreboard players operation # _ %= #100 _
execute store result score # _ run data get storage timer: set_ms
scoreboard players operation # _ /= #100 _
scoreboard players operation # _ *= #60 _
scoreboard players operation #s_time timer += # _
execute store result score # _ run bossbar get timer: max
execute if score # _ < #s_time timer store result bossbar timer: max run scoreboard players get #s_time timer
scoreboard players set #tick timer 0
execute if score #s_time timer matches ..0 run bossbar set timer: visible false
function timer:process/bossbar/
function timer:process/get_mst_time/
data remove storage timer: set_ms