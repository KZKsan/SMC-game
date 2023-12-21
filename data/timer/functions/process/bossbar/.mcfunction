#>timer:process/bossbar/
#@within timer:**
execute store result bossbar timer: value run scoreboard players get #s_time timer
execute store result score #s timer run scoreboard players operation #m timer = #s_time timer
scoreboard players operation #m timer /= #60 _
scoreboard players operation #s timer %= #60 _

execute if score #mode timer matches 1 run function timer:process/bossbar/count_down
