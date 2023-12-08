#>sco:stage_data/reset
#@within sco:process/**

execute if data storage sco:data {stage:"shekenadam"} run function sco:stage_data/stage/shekenadam/reset
execute if data storage sco:data {stage:"sakura_mansion"} run function sco:stage_data/stage/sakura_mansion/reset
execute if data storage sco:data {stage:"centrifuge"} run function sco:stage_data/stage/centrifuge/reset