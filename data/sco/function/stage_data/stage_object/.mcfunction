#>sco:stage_data/stage_object/
#@within sco:process/**
execute as @e[tag=sco-object] unless score @s stage_object.lock matches 0 unless score @s stage_object.match.0 matches -2147483648..2147483647 unless score @s stage_object.match.1 matches -2147483648..2147483647 unless score @s stage_object.match.2 matches -2147483648..2147483647 unless score @s stage_object.match.3 matches -2147483648..2147483647 run function sco:stage_data/stage_object/copy_match
execute as @e[tag=sco-object] unless score @s stage_object.lock matches 0 if function sco:stage_data/stage_object/match run kill
