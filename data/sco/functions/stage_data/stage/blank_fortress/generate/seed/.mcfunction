#>sco:stage_data/stage/blank_fortress/generate/seed/
#@within 
data remove storage _ data_fetch
#execute store result storage _ data_fetch.seed0 int 1 run random value -9..9
#execute store result storage _ data_fetch.seed1 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed2 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed3 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed4 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed5 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed6 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed7 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed8 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed9 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed10 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed11 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed12 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed13 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed14 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed15 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed16 int 1 run random value 0..9
#execute store result storage _ data_fetch.seed17 int 1 run random value 0..9
#function sco:stage_data/stage/blank_fortress/generate/seed/macro with storage _ data_fetch
execute if predicate 5050 store result storage sco:data stage_generate.seed int 1 run return run random value 1..
execute store result storage sco:data stage_generate.seed int -1 run random value 1..
