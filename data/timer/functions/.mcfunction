#>timer:
#@within tag/function tick
execute if score mode timer matches 1 run bossbar set timer: players @a
execute if score mode timer matches 1 run scoreboard players add tick timer 1
execute if score mode timer matches 1 if score tick timer matches 20.. run function timer:process/remove