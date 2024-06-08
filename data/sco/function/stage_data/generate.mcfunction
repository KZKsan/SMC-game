#>sco:stage_data/generate
#@within sco:process/**
fill -64 -55 48 15 -37 127 air
execute if data storage sco:data {stage:"blank_fortress"} run function sco:stage_data/stage/blank_fortress/generate/first
data modify storage sco:data options.generate set value false