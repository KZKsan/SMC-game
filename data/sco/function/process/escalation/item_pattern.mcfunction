#>sco:process/escalation/item
#@within sco:process/escalation/**
$data modify storage sco:data escalation.loot.red_pattern set from storage sco:data escalation.pattern[$(red_lvl)]
$data modify storage sco:data escalation.loot.blue_pattern set from storage sco:data escalation.pattern[$(blue_lvl)]