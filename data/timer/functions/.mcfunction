#>timer:
#@within tag/function tick
execute if data storage timer: set run function timer:interrupt/s_time
execute if data storage timer: set_ms run function timer:interrupt/ms_time
execute if data storage timer: set_mst run function timer:interrupt/mst_time
execute if score #mode timer matches 1 run bossbar set timer: players @a[predicate=sco:team_join]
execute if score #mode timer matches 1 run scoreboard players add #tick timer 1
execute if score #mode timer matches 1 if score #tick timer matches 20.. run function timer:process/remove
execute if score #mode timer matches 2 run bossbar set timer: players @a[predicate=sco:team_join]
execute if score #mode timer matches 2 run scoreboard players add #tick timer 1
execute if score #mode timer matches 2 if score #tick timer matches 20.. run function timer:process/add
execute if score #mode timer matches -1 run bossbar set timer: players @a[predicate=sco:team_join]
function timer:process/get_mst_time/