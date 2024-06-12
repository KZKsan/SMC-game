#>sco:stage_data/stage/blank_fortress/generate/macro/pos
#@within sco:stage_data/stage/blank_fortress/generate/**
$data modify storage sco:data stage_generate.data_fetch.pos set from storage sco:data stage_generate.select_pos[$(index)]
$data remove storage sco:data stage_generate.select_pos[$(index)]