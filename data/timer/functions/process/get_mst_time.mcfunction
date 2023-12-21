#>timer:process/get_mst_time
#@internal

scoreboard players set #100 _ 100
scoreboard players operation #mst_time timer = #m timer
scoreboard players operation #mst_time timer *= #100 _
scoreboard players operation #mst_time timer += #s timer
scoreboard players operation #mst_time timer *= #100 _
scoreboard players operation #mst_time timer += #tick timer