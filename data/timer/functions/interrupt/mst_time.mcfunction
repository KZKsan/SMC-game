#>timer:interrupt/mst_time
#@public

scoreboard players set #100 _ 100
function timer:convert/str_mst_time with storage timer:
execute store result score # _ run data get storage timer: set_mst
execute store success score #_ _ if score # _ matches ..-1 store result score # _ store result storage timer: set_mst int 1 run data get storage timer: set_mst -1
execute store result score #tick timer run scoreboard players operation # _ %= #100 _
execute store result score # _ run data get storage timer: set_mst
scoreboard players operation # _ /= #100 _
execute store result score #s_time timer run scoreboard players operation # _ %= #100 _
execute store result score # _ run data get storage timer: set_mst
scoreboard players operation # _ /= #100 _
scoreboard players operation # _ /= #100 _
scoreboard players operation # _ *= #60 _
scoreboard players operation #s_time timer += # _
scoreboard players set #-1 _ -1
execute if score #_ _ matches 1 run scoreboard players operation #s_time timer *= #-1 _
execute store result score # _ run bossbar get timer: max
execute if score # _ < #s_time timer store result bossbar timer: max run scoreboard players get #s_time timer
execute if score #s_time timer matches ..0 run bossbar set timer: visible false
function timer:process/bossbar/
function timer:process/get_mst_time/
data remove storage timer: set_mst