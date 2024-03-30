#>sco:stage_data/stage/blank_fortress/generate/macro/pos
#@within sco:stage_data/stage/blank_fortress/generate/**
$data modify storage _ data_fetch.pos set from storage _ _[$(index)]
$data remove storage _ _[$(index)]