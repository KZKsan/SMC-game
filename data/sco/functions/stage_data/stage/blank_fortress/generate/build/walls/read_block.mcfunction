#>sco:stage_data/stage/blank_fortress/generate/build/walls/read_block
#@within 

execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/end/0 ~ ~ ~ none none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=low,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/end/0 ~15 ~ ~15 180 none"
execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=none,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/end/0 ~ ~ ~15 counterclockwise_90 none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=none,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/end/0 ~15 ~ ~ clockwise_90 none"

execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=none,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/curve/0 ~ ~ ~ none none"
execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=low,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/curve/0 ~ ~ ~15 counterclockwise_90 none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=none,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/curve/0 ~15 ~ ~ clockwise_90 none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=low,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/curve/0 ~15 ~ ~15 180 none"

execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=none,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/t-straight/0 ~ ~ ~ none none"
execute if block ~ ~ ~ stone_brick_wall[east=none,west=low,north=low,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/t-straight/0 ~15 ~ ~ clockwise_90 none"
execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=low,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/t-straight/0 ~15 ~ ~15 180 none"
execute if block ~ ~ ~ stone_brick_wall[east=low,west=none,north=low,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/t-straight/0 ~ ~ ~15 counterclockwise_90 none"

execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=low,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/straight/0 ~ ~ ~ none none"
execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=none,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/straight/0 ~15 ~ ~ clockwise_90 none"

execute if block ~ ~ ~ stone_brick_wall[east=low,west=low,north=low,south=low] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/cross/0 ~ ~ ~ none none"

execute if block ~ ~ ~ stone_brick_wall[east=none,west=none,north=none,south=none] run data modify storage _ data_fetch.command set value "sco:stage_data/blank_fortress/walls/straight/0 ~15 ~ ~ clockwise_90 none"
execute if block ~ ~ ~ air run data modify storage _ data_fetch.command set value "air"