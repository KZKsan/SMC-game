#>sco:stage_data/stage/blank_fortress/generate/build/field/read_block
#@within sco:stage_data/stage/blank_fortress/generate/build/field/

execute unless data storage _ data_fetch.name if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/pond if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/pond if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/pond if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/pond run data modify storage _ data_fetch.name set value "pond"
execute unless data storage _ data_fetch.name if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/dirt if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/dirt if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/dirt if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/dirt run data modify storage _ data_fetch.name set value "dirt"
execute unless data storage _ data_fetch.name if block ~ ~ ~ diamond_block if block ~1 ~ ~ diamond_block if block ~ ~ ~1 diamond_block if block ~1 ~ ~1 diamond_block run data modify storage _ data_fetch.name set value "dirt"
execute unless data storage _ data_fetch.name if block ~ ~ ~ emerald_block if block ~1 ~ ~ emerald_block if block ~ ~ ~1 emerald_block if block ~1 ~ ~1 emerald_block run data modify storage _ data_fetch.name set value "air"


execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "straight"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "straight"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.type set value "straight"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.type set value "straight"


execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "none"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "clockwise_90"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.facing set value "180"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.facing set value "counterclockwise_90"



execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "corner"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "corner"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.type set value "corner"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "corner"



execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "none"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "clockwise_90"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.facing set value "180"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "counterclockwise_90"



execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "curve"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.type set value "curve"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.type set value "curve"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.type set value "curve"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "none"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.facing set value "clockwise_90"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ emerald_block \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.facing set value "180"

execute \
if block ~ ~ ~ emerald_block \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 emerald_block \
if block ~1 ~ ~1 emerald_block \
run data modify storage _ data_fetch.facing set value "counterclockwise_90"


execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.type set value "under"

execute \
if block ~ ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~ #sco:stage_data/blank_fortress/generate_field/other \
if block ~ ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
if block ~1 ~ ~1 #sco:stage_data/blank_fortress/generate_field/other \
run data modify storage _ data_fetch.facing set value "none"

execute if block ~ ~ ~ diamond_block if block ~1 ~ ~ diamond_block if block ~ ~ ~1 diamond_block if block ~1 ~ ~1 diamond_block run data modify storage _ data_fetch.type set value "grass"

execute if block ~ ~ ~ diamond_block if block ~1 ~ ~ diamond_block if block ~ ~ ~1 diamond_block if block ~1 ~ ~1 diamond_block run function sco:stage_data/stage/blank_fortress/generate/build/field/random_facing



execute if data storage _ data_fetch{facing:"none"} run data modify storage _ data_fetch.pos set value "~ ~ ~"
execute if data storage _ data_fetch{facing:"clockwise_90"} run data modify storage _ data_fetch.pos set value "~7 ~ ~"
execute if data storage _ data_fetch{facing:"180"} run data modify storage _ data_fetch.pos set value "~7 ~ ~7"
execute if data storage _ data_fetch{facing:"counterclockwise_90"} run data modify storage _ data_fetch.pos set value "~ ~ ~7"

execute store result storage _ data_fetch.num int 1 run random value 0..7
data modify storage _ _ prepend from storage _ data_fetch
execute if data storage _ data_fetch{facing:"none"} run data modify storage _ _[0] merge value {facing:"180",pos:"~7 ~ ~7"}
execute if data storage _ data_fetch{facing:"clockwise_90"} run data modify storage _ _[0] merge value {facing:"counterclockwise_90",pos:"~ ~ ~7"}
execute if data storage _ data_fetch{facing:"180"} run data modify storage _ _[0] merge value {facing:"none",pos:"~ ~ ~"}
execute if data storage _ data_fetch{facing:"counterclockwise_90"} run data modify storage _ _[0] merge value {facing:"clockwise_90",pos:"~7 ~ ~"}
