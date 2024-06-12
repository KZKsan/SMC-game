#>timer:process/get_mst_time/less
#@within 

scoreboard players operation #mst_time timer = #s_time timer
scoreboard players operation #mst_time timer *= #100 _
scoreboard players operation #mst_time timer -= #tick timer