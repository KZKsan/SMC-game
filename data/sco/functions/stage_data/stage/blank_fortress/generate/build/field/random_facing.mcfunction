#>sco:stage_data/stage/blank_fortress/generate/build/field/random_facing
#@within sco:stage_data/stage/blank_fortress/generate/build/field/random_facing
execute store result score $random _ run random value 0..3 sco:builder_seed
execute if score $random _ matches 0 run data modify storage sco:data stage_generate.data_fetch.facing set value "none"
execute if score $random _ matches 1 run data modify storage sco:data stage_generate.data_fetch.facing set value "clockwise_90"
execute if score $random _ matches 2 run data modify storage sco:data stage_generate.data_fetch.facing set value "180"
execute if score $random _ matches 3 run data modify storage sco:data stage_generate.data_fetch.facing set value "counterclockwise_90"
